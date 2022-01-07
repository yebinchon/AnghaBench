; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_change_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_change_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64 }
%struct.qlcnic_host_tx_ring = type { i64, i32, %struct.cmd_desc_type0* }
%struct.cmd_desc_type0 = type { i32 }
%struct.qlcnic_nic_req = type { i32*, i8*, i8* }
%struct.qlcnic_mac_req = type { i32, i32 }
%struct.qlcnic_vlan_req = type { i32 }

@QLCNIC_REQUEST = common dso_local global i32 0, align 4
@QLCNIC_MAC_EVENT = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_change_filter(%struct.qlcnic_adapter* %0, i32* %1, i64 %2, %struct.qlcnic_host_tx_ring* %3) #0 {
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %9 = alloca %struct.cmd_desc_type0*, align 8
  %10 = alloca %struct.qlcnic_nic_req*, align 8
  %11 = alloca %struct.qlcnic_mac_req*, align 8
  %12 = alloca %struct.qlcnic_vlan_req*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.qlcnic_host_tx_ring* %3, %struct.qlcnic_host_tx_ring** %8, align 8
  %15 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %8, align 8
  %16 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %8, align 8
  %19 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %18, i32 0, i32 2
  %20 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %19, align 8
  %21 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %8, align 8
  %22 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %20, i64 %23
  store %struct.cmd_desc_type0* %24, %struct.cmd_desc_type0** %9, align 8
  %25 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %9, align 8
  %26 = bitcast %struct.cmd_desc_type0* %25 to %struct.qlcnic_nic_req*
  store %struct.qlcnic_nic_req* %26, %struct.qlcnic_nic_req** %10, align 8
  %27 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %10, align 8
  %28 = call i32 @memset(%struct.qlcnic_nic_req* %27, i32 0, i32 24)
  %29 = load i32, i32* @QLCNIC_REQUEST, align 4
  %30 = shl i32 %29, 23
  %31 = call i8* @cpu_to_le64(i32 %30)
  %32 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %10, align 8
  %33 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @QLCNIC_MAC_EVENT, align 4
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 16
  %40 = or i32 %34, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i8* @cpu_to_le64(i32 %41)
  %43 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %10, align 8
  %44 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %10, align 8
  %46 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = bitcast i32* %48 to %struct.qlcnic_mac_req*
  store %struct.qlcnic_mac_req* %49, %struct.qlcnic_mac_req** %11, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %56

54:                                               ; preds = %4
  %55 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.qlcnic_mac_req*, %struct.qlcnic_mac_req** %11, align 8
  %59 = getelementptr inbounds %struct.qlcnic_mac_req, %struct.qlcnic_mac_req* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qlcnic_mac_req*, %struct.qlcnic_mac_req** %11, align 8
  %61 = getelementptr inbounds %struct.qlcnic_mac_req, %struct.qlcnic_mac_req* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %62, i32* %63, i32 %64)
  %66 = load %struct.qlcnic_nic_req*, %struct.qlcnic_nic_req** %10, align 8
  %67 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = bitcast i32* %69 to %struct.qlcnic_vlan_req*
  store %struct.qlcnic_vlan_req* %70, %struct.qlcnic_vlan_req** %12, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @cpu_to_le16(i64 %71)
  %73 = load %struct.qlcnic_vlan_req*, %struct.qlcnic_vlan_req** %12, align 8
  %74 = getelementptr inbounds %struct.qlcnic_vlan_req, %struct.qlcnic_vlan_req* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %8, align 8
  %77 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @get_next_index(i64 %75, i32 %78)
  %80 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %8, align 8
  %81 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = call i32 (...) @smp_mb()
  ret void
}

declare dso_local i32 @memset(%struct.qlcnic_nic_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
