; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32, i32, i32, %struct.efx_tx_buffer* }
%struct.efx_tx_buffer = type { i32, i32, i32, i32 }

@EFX_TX_BUF_OPTION = common dso_local global i32 0, align 4
@ESF_DZ_TX_OPTION_TYPE = common dso_local global i32 0, align 4
@EFX_TX_BUF_CONT = common dso_local global i32 0, align 4
@ESF_DZ_TX_KER_CONT = common dso_local global i32 0, align 4
@ESF_DZ_TX_KER_BYTE_CNT = common dso_local global i32 0, align 4
@ESF_DZ_TX_KER_BUF_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*)* @efx_ef10_tx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_tx_write(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca %struct.efx_tx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_tx_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %2, align 8
  %7 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %128

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %96, %23
  %25 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %26 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %29 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %33 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %32, i32 0, i32 6
  %34 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %34, i64 %36
  store %struct.efx_tx_buffer* %37, %struct.efx_tx_buffer** %4, align 8
  %38 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32* @efx_tx_desc(%struct.efx_tx_queue* %38, i32 %39)
  store i32* %40, i32** %6, align 8
  %41 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %42 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EFX_TX_BUF_OPTION, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %24
  %52 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ESF_DZ_TX_OPTION_TYPE, align 4
  %59 = call i32 @EFX_QWORD_FIELD(i32 %57, i32 %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %63 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %66 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %51
  br label %95

68:                                               ; preds = %24
  %69 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %70 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %73 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @EFX_TX_BUF_CONT, align 4
  %75 = icmp ne i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUILD_BUG_ON(i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ESF_DZ_TX_KER_CONT, align 4
  %81 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %82 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EFX_TX_BUF_CONT, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @ESF_DZ_TX_KER_BYTE_CNT, align 4
  %87 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %88 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ESF_DZ_TX_KER_BUF_ADDR, align 4
  %91 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %4, align 8
  %92 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @EFX_POPULATE_QWORD_3(i32 %79, i32 %80, i32 %85, i32 %86, i32 %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %68, %67
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %98 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %101 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %24, label %104

104:                                              ; preds = %96
  %105 = call i32 (...) @wmb()
  %106 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = call i64 @efx_nic_may_push_tx_desc(%struct.efx_tx_queue* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %114 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %112, %115
  %117 = call i32* @efx_tx_desc(%struct.efx_tx_queue* %111, i32 %116)
  store i32* %117, i32** %6, align 8
  %118 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @efx_ef10_push_tx_desc(%struct.efx_tx_queue* %118, i32* %119)
  %121 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %122 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %128

125:                                              ; preds = %104
  %126 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %2, align 8
  %127 = call i32 @efx_ef10_notify_tx_desc(%struct.efx_tx_queue* %126)
  br label %128

128:                                              ; preds = %22, %125, %110
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @efx_tx_desc(%struct.efx_tx_queue*, i32) #1

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EFX_POPULATE_QWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @efx_nic_may_push_tx_desc(%struct.efx_tx_queue*, i32) #1

declare dso_local i32 @efx_ef10_push_tx_desc(%struct.efx_tx_queue*, i32*) #1

declare dso_local i32 @efx_ef10_notify_tx_desc(%struct.efx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
