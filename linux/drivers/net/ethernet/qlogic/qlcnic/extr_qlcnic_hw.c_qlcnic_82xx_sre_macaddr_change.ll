; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_sre_macaddr_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_sre_macaddr_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64 }
%struct.qlcnic_nic_req = type { i32*, i8*, i8* }
%struct.qlcnic_mac_req = type { i32, i32 }
%struct.qlcnic_vlan_req = type { i32 }
%struct.cmd_desc_type0 = type { i32 }

@QLCNIC_REQUEST = common dso_local global i32 0, align 4
@QLCNIC_MAC_EVENT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_sre_macaddr_change(%struct.qlcnic_adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_nic_req, align 8
  %10 = alloca %struct.qlcnic_mac_req*, align 8
  %11 = alloca %struct.qlcnic_vlan_req*, align 8
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 @memset(%struct.qlcnic_nic_req* %9, i32 0, i32 24)
  %14 = load i32, i32* @QLCNIC_REQUEST, align 4
  %15 = shl i32 %14, 23
  %16 = call i8* @cpu_to_le64(i32 %15)
  %17 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %9, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @QLCNIC_MAC_EVENT, align 4
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 16
  %24 = or i32 %18, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i8* @cpu_to_le64(i32 %25)
  %27 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %9, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %9, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = bitcast i32* %30 to %struct.qlcnic_mac_req*
  store %struct.qlcnic_mac_req* %31, %struct.qlcnic_mac_req** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.qlcnic_mac_req*, %struct.qlcnic_mac_req** %10, align 8
  %34 = getelementptr inbounds %struct.qlcnic_mac_req, %struct.qlcnic_mac_req* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qlcnic_mac_req*, %struct.qlcnic_mac_req** %10, align 8
  %36 = getelementptr inbounds %struct.qlcnic_mac_req, %struct.qlcnic_mac_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32 %37, i32* %38, i32 %39)
  %41 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %9, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = bitcast i32* %43 to %struct.qlcnic_vlan_req*
  store %struct.qlcnic_vlan_req* %44, %struct.qlcnic_vlan_req** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = load %struct.qlcnic_vlan_req*, %struct.qlcnic_vlan_req** %11, align 8
  %48 = getelementptr inbounds %struct.qlcnic_vlan_req, %struct.qlcnic_vlan_req* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %50 = bitcast %struct.qlcnic_nic_req* %9 to %struct.cmd_desc_type0*
  %51 = call i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter* %49, %struct.cmd_desc_type0* %50, i32 1)
  ret i32 %51
}

declare dso_local i32 @memset(%struct.qlcnic_nic_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
