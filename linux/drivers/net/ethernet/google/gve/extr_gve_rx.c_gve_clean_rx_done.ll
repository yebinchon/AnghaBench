; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_clean_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_clean_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_rx_ring = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.gve_priv* }
%struct.TYPE_2__ = type { i32, %struct.gve_rx_desc* }
%struct.gve_rx_desc = type { i32, i32 }
%struct.gve_priv = type { i32 }

@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[%d] idx=%d desc=%p desc->flags_seq=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[%d] seqno=%d rx->desc.seqno=%d\0A\00", align 1
@GVE_RX_PAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_clean_rx_done(%struct.gve_rx_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gve_priv*, align 8
  %9 = alloca %struct.gve_rx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.gve_rx_ring* %0, %struct.gve_rx_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %15 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %14, i32 0, i32 8
  %16 = load %struct.gve_priv*, %struct.gve_priv** %15, align 8
  store %struct.gve_priv* %16, %struct.gve_priv** %8, align 8
  %17 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %18 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %25 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %28, i64 %30
  store %struct.gve_rx_desc* %31, %struct.gve_rx_desc** %9, align 8
  br label %32

32:                                               ; preds = %99, %3
  %33 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %9, align 8
  %34 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GVE_SEQNO(i32 %35)
  %37 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %38 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %32
  %47 = phi i1 [ false, %32 ], [ %45, %42 ]
  br i1 %47, label %48, label %124

48:                                               ; preds = %46
  %49 = load %struct.gve_priv*, %struct.gve_priv** %8, align 8
  %50 = load i32, i32* @rx_status, align 4
  %51 = load %struct.gve_priv*, %struct.gve_priv** %8, align 8
  %52 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %55 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %9, align 8
  %59 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %9, align 8
  %60 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.gve_priv*, i32, i32, i8*, i32, i32, %struct.gve_rx_desc*, ...) @netif_info(%struct.gve_priv* %49, i32 %50, i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, %struct.gve_rx_desc* %58, i32 %61)
  %63 = load %struct.gve_priv*, %struct.gve_priv** %8, align 8
  %64 = load i32, i32* @rx_status, align 4
  %65 = load %struct.gve_priv*, %struct.gve_priv** %8, align 8
  %66 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %69 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %9, align 8
  %72 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GVE_SEQNO(i32 %73)
  %75 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to %struct.gve_rx_desc*
  %81 = call i32 (%struct.gve_priv*, i32, i32, i8*, i32, i32, %struct.gve_rx_desc*, ...) @netif_info(%struct.gve_priv* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %74, %struct.gve_rx_desc* %80)
  %82 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %9, align 8
  %83 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @be16_to_cpu(i32 %84)
  %86 = load i64, i64* @GVE_RX_PAD, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %13, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %13, align 8
  %90 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %91 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %9, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @gve_rx(%struct.gve_rx_ring* %90, %struct.gve_rx_desc* %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %48
  %97 = load %struct.gve_priv*, %struct.gve_priv** %8, align 8
  %98 = call i32 @gve_schedule_reset(%struct.gve_priv* %97)
  br label %99

99:                                               ; preds = %96, %48
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %104 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %102, %105
  store i32 %106, i32* %11, align 4
  %107 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %108 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load %struct.gve_rx_desc*, %struct.gve_rx_desc** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.gve_rx_desc, %struct.gve_rx_desc* %110, i64 %112
  store %struct.gve_rx_desc* %113, %struct.gve_rx_desc** %9, align 8
  %114 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %115 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @gve_next_seqno(i32 %117)
  %119 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %120 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %32

124:                                              ; preds = %46
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %161

128:                                              ; preds = %124
  %129 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %130 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %129, i32 0, i32 4
  %131 = call i32 @u64_stats_update_begin(i32* %130)
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %134 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %139 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %145 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %144, i32 0, i32 4
  %146 = call i32 @u64_stats_update_end(i32* %145)
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %149 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %152 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = call i32 (...) @dma_wmb()
  %156 = load %struct.gve_priv*, %struct.gve_priv** %8, align 8
  %157 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %158 = call i32 @gve_rx_write_doorbell(%struct.gve_priv* %156, %struct.gve_rx_ring* %157)
  %159 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %5, align 8
  %160 = call i32 @gve_rx_work_pending(%struct.gve_rx_ring* %159)
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %128, %127
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @GVE_SEQNO(i32) #1

declare dso_local i32 @netif_info(%struct.gve_priv*, i32, i32, i8*, i32, i32, %struct.gve_rx_desc*, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @gve_rx(%struct.gve_rx_ring*, %struct.gve_rx_desc*, i32, i32) #1

declare dso_local i32 @gve_schedule_reset(%struct.gve_priv*) #1

declare dso_local i32 @gve_next_seqno(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @gve_rx_write_doorbell(%struct.gve_priv*, %struct.gve_rx_ring*) #1

declare dso_local i32 @gve_rx_work_pending(%struct.gve_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
