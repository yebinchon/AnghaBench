; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.atl1_tpd_ring }
%struct.atl1_tpd_ring = type { i64, i32, %struct.atl1_buffer* }
%struct.atl1_buffer = type { i32, i32 }
%struct.tx_packet_desc = type { i32, i32, i32 }

@TPD_BUFLEN_MASK = common dso_local global i32 0, align 4
@TPD_BUFLEN_SHIFT = common dso_local global i32 0, align 4
@TPD_SEGMENT_EN_SHIFT = common dso_local global i32 0, align 4
@TPD_SEGMENT_EN_MASK = common dso_local global i32 0, align 4
@TPD_HDRFLAG_SHIFT = common dso_local global i32 0, align 4
@TPD_EOP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*, i64, %struct.tx_packet_desc*)* @atl1_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_tx_queue(%struct.atl1_adapter* %0, i64 %1, %struct.tx_packet_desc* %2) #0 {
  %4 = alloca %struct.atl1_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tx_packet_desc*, align 8
  %7 = alloca %struct.atl1_tpd_ring*, align 8
  %8 = alloca %struct.atl1_buffer*, align 8
  %9 = alloca %struct.tx_packet_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.tx_packet_desc* %2, %struct.tx_packet_desc** %6, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 0
  store %struct.atl1_tpd_ring* %14, %struct.atl1_tpd_ring** %7, align 8
  %15 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %16 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %15, i32 0, i32 1
  %17 = call i32 @atomic_read(i32* %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %116, %3
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %119

23:                                               ; preds = %19
  %24 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %25 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %24, i32 0, i32 2
  %26 = load %struct.atl1_buffer*, %struct.atl1_buffer** %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %26, i64 %27
  store %struct.atl1_buffer* %28, %struct.atl1_buffer** %8, align 8
  %29 = load %struct.atl1_adapter*, %struct.atl1_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %29, i32 0, i32 0
  %31 = load i64, i64* %12, align 8
  %32 = call %struct.tx_packet_desc* @ATL1_TPD_DESC(%struct.atl1_tpd_ring* %30, i64 %31)
  store %struct.tx_packet_desc* %32, %struct.tx_packet_desc** %9, align 8
  %33 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %34 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %6, align 8
  %35 = icmp ne %struct.tx_packet_desc* %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %38 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %6, align 8
  %39 = call i32 @memcpy(%struct.tx_packet_desc* %37, %struct.tx_packet_desc* %38, i32 12)
  br label %40

40:                                               ; preds = %36, %23
  %41 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %42 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le64(i32 %43)
  %45 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %46 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @TPD_BUFLEN_MASK, align 4
  %48 = load i32, i32* @TPD_BUFLEN_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %52 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.atl1_buffer*, %struct.atl1_buffer** %8, align 8
  %56 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpu_to_le16(i32 %57)
  %59 = load i32, i32* @TPD_BUFLEN_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @TPD_BUFLEN_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %64 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %68 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TPD_SEGMENT_EN_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = load i32, i32* @TPD_SEGMENT_EN_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %40
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @TPD_HDRFLAG_SHIFT, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %83 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %94

86:                                               ; preds = %76
  %87 = load i32, i32* @TPD_HDRFLAG_SHIFT, align 4
  %88 = shl i32 1, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %91 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %86, %79
  br label %95

95:                                               ; preds = %94, %40
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %5, align 8
  %98 = sub nsw i64 %97, 1
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* @TPD_EOP_SHIFT, align 4
  %102 = shl i32 1, %101
  %103 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %9, align 8
  %104 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %95
  %108 = load i64, i64* %12, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %12, align 8
  %110 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %111 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i64 0, i64* %12, align 8
  br label %115

115:                                              ; preds = %114, %107
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %10, align 8
  br label %19

119:                                              ; preds = %19
  %120 = call i32 (...) @wmb()
  %121 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %122 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %121, i32 0, i32 1
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @atomic_set(i32* %122, i64 %123)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.tx_packet_desc* @ATL1_TPD_DESC(%struct.atl1_tpd_ring*, i64) #1

declare dso_local i32 @memcpy(%struct.tx_packet_desc*, %struct.tx_packet_desc*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
