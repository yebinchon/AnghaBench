; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_mac_e1h.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_mac_e1h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i64 }
%struct.bnx2x_exeq_elem = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mac_configuration_cmd = type { i32 }

@BNX2X_VLAN_MAC_ADD = common dso_local global i64 0, align 8
@BNX2X_FILTER_VLAN_MAC_PENDING = common dso_local global i32 0, align 4
@ETH_VLAN_FILTER_CLASSIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_exeq_elem*, i32, i32)* @bnx2x_set_one_vlan_mac_e1h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_one_vlan_mac_e1h(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_exeq_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %struct.bnx2x_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_raw_obj*, align 8
  %12 = alloca %struct.mac_configuration_cmd*, align 8
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %14, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %15, %struct.bnx2x_raw_obj** %11, align 8
  %16 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %17 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mac_configuration_cmd*
  store %struct.mac_configuration_cmd* %19, %struct.mac_configuration_cmd** %12, align 8
  %20 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BNX2X_VLAN_MAC_ADD, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %13, align 4
  %29 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %30 = call i32 @memset(%struct.mac_configuration_cmd* %29, i32 0, i32 4)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %32 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %33 = load i32, i32* @BNX2X_FILTER_VLAN_MAC_PENDING, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %37 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %44 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETH_VLAN_FILTER_CLASSIFY, align 4
  %51 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %52 = call i32 @bnx2x_vlan_mac_set_rdata_e1x(%struct.bnx2x* %31, %struct.bnx2x_vlan_mac_obj* %32, i32 %33, i32 %34, i32 %35, i32 %42, i32 %49, i32 %50, %struct.mac_configuration_cmd* %51)
  ret void
}

declare dso_local i32 @memset(%struct.mac_configuration_cmd*, i32, i32) #1

declare dso_local i32 @bnx2x_vlan_mac_set_rdata_e1x(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32, i32, i32, i32, %struct.mac_configuration_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
