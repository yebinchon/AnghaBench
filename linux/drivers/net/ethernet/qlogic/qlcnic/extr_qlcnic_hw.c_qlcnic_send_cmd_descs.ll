; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_send_cmd_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_send_cmd_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__, %struct.qlcnic_host_tx_ring*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32, i32, i32, i32*, %struct.qlcnic_cmd_buffer* }
%struct.qlcnic_cmd_buffer = type { i64, i32* }
%struct.cmd_desc_type0 = type { i32 }

@__QLCNIC_FW_ATTACHED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, i32)* @qlcnic_send_cmd_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter* %0, %struct.cmd_desc_type0* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.cmd_desc_type0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %11 = alloca %struct.cmd_desc_type0*, align 8
  %12 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.cmd_desc_type0* %1, %struct.cmd_desc_type0** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @__QLCNIC_FW_ATTACHED, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 2
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %116

21:                                               ; preds = %3
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 1
  %24 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %23, align 8
  %25 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %24, i64 0
  store %struct.qlcnic_host_tx_ring* %25, %struct.qlcnic_host_tx_ring** %12, align 8
  %26 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %27 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__netif_tx_lock_bh(i32 %28)
  %30 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %31 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %35 = call i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %34)
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %21
  %38 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %39 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_tx_stop_queue(i32 %40)
  %42 = call i32 (...) @smp_mb()
  %43 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %44 = call i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %49 = call i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %48)
  %50 = load i32, i32* @TX_STOP_THRESH, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %54 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netif_tx_wake_queue(i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %70

58:                                               ; preds = %37
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %65 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__netif_tx_unlock_bh(i32 %66)
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %116

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %21
  br label %72

72:                                               ; preds = %102, %71
  %73 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %73, i64 %75
  store %struct.cmd_desc_type0* %76, %struct.cmd_desc_type0** %11, align 8
  %77 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %78 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %77, i32 0, i32 4
  %79 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %79, i64 %81
  store %struct.qlcnic_cmd_buffer* %82, %struct.qlcnic_cmd_buffer** %10, align 8
  %83 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %10, align 8
  %84 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %10, align 8
  %86 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %88 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %94 = call i32 @memcpy(i32* %92, %struct.cmd_desc_type0* %93, i32 4)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %97 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @get_next_index(i32 %95, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %72
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %72, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %109 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %111 = call i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring* %110)
  %112 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %12, align 8
  %113 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @__netif_tx_unlock_bh(i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %106, %58, %18
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__netif_tx_lock_bh(i32) #1

declare dso_local i32 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @__netif_tx_unlock_bh(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @get_next_index(i32, i32) #1

declare dso_local i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
