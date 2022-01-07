; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_send_cmd_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_send_cmd_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, %struct.nx_host_tx_ring* }
%struct.nx_host_tx_ring = type { i32, i32, i32, i32*, %struct.netxen_cmd_buffer* }
%struct.netxen_cmd_buffer = type { i64, i32* }
%struct.cmd_desc_type0 = type { i32 }

@NETXEN_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, %struct.cmd_desc_type0*, i32)* @netxen_send_cmd_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_send_cmd_descs(%struct.netxen_adapter* %0, %struct.cmd_desc_type0* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca %struct.cmd_desc_type0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netxen_cmd_buffer*, align 8
  %11 = alloca %struct.nx_host_tx_ring*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store %struct.cmd_desc_type0* %1, %struct.cmd_desc_type0** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NETXEN_ADAPTER_UP_MAGIC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %109

20:                                               ; preds = %3
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 1
  %23 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %22, align 8
  store %struct.nx_host_tx_ring* %23, %struct.nx_host_tx_ring** %11, align 8
  %24 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %25 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__netif_tx_lock_bh(i32 %26)
  %28 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %29 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %33 = call i32 @netxen_tx_avail(%struct.nx_host_tx_ring* %32)
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %20
  %36 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %37 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netif_tx_stop_queue(i32 %38)
  %40 = call i32 (...) @smp_mb()
  %41 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %42 = call i32 @netxen_tx_avail(%struct.nx_host_tx_ring* %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %47 = call i32 @netxen_tx_avail(%struct.nx_host_tx_ring* %46)
  %48 = load i32, i32* @TX_STOP_THRESH, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %52 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_tx_wake_queue(i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %63

56:                                               ; preds = %35
  %57 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %58 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__netif_tx_unlock_bh(i32 %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %109

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %20
  br label %65

65:                                               ; preds = %94, %64
  %66 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %67 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %66, i32 0, i32 4
  %68 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %68, i64 %70
  store %struct.netxen_cmd_buffer* %71, %struct.netxen_cmd_buffer** %10, align 8
  %72 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %10, align 8
  %73 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %10, align 8
  %75 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %77 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %82, i64 %84
  %86 = call i32 @memcpy(i32* %81, %struct.cmd_desc_type0* %85, i32 4)
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %89 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @get_next_index(i32 %87, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %65
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %65, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %101 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %103 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %104 = call i32 @netxen_nic_update_cmd_producer(%struct.netxen_adapter* %102, %struct.nx_host_tx_ring* %103)
  %105 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %11, align 8
  %106 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @__netif_tx_unlock_bh(i32 %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %98, %56, %17
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @__netif_tx_lock_bh(i32) #1

declare dso_local i32 @netxen_tx_avail(%struct.nx_host_tx_ring*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @__netif_tx_unlock_bh(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @get_next_index(i32, i32) #1

declare dso_local i32 @netxen_nic_update_cmd_producer(%struct.netxen_adapter*, %struct.nx_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
