; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_set_rdata_e1x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_set_rdata_e1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32 }
%struct.mac_configuration_cmd = type { i32, %struct.mac_configuration_entry* }
%struct.mac_configuration_entry = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s MAC %pM CLID %d CAM offset %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"setting\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"clearing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32, i32*, i32, i32, %struct.mac_configuration_cmd*)* @bnx2x_vlan_mac_set_rdata_e1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vlan_mac_set_rdata_e1x(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, %struct.mac_configuration_cmd* %8) #0 {
  %10 = alloca %struct.bnx2x*, align 8
  %11 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mac_configuration_cmd*, align 8
  %19 = alloca %struct.mac_configuration_entry*, align 8
  %20 = alloca %struct.bnx2x_raw_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %10, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.mac_configuration_cmd* %8, %struct.mac_configuration_cmd** %18, align 8
  %21 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %18, align 8
  %22 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %21, i32 0, i32 1
  %23 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %22, align 8
  %24 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %23, i64 0
  store %struct.mac_configuration_entry* %24, %struct.mac_configuration_entry** %19, align 8
  %25 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %11, align 8
  %26 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %25, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %26, %struct.bnx2x_raw_obj** %20, align 8
  %27 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %28 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %18, align 8
  %32 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %31, i32 0, i32 0
  %33 = call i32 @bnx2x_vlan_mac_set_rdata_hdr_e1x(%struct.bnx2x* %27, %struct.bnx2x_vlan_mac_obj* %28, i32 %29, i32 %30, i32* %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %35 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %19, align 8
  %41 = call i32 @bnx2x_vlan_mac_set_cfg_entry_e1x(%struct.bnx2x* %34, %struct.bnx2x_vlan_mac_obj* %35, i32 %36, i32 %37, i32* %38, i32 %39, %struct.mac_configuration_entry* %40)
  %42 = load i32, i32* @BNX2X_MSG_SP, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32*, i32** %15, align 8
  %48 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %20, align 8
  %49 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @DP(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %46, i32* %47, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @bnx2x_vlan_mac_set_rdata_hdr_e1x(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_vlan_mac_set_cfg_entry_e1x(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32*, i32, %struct.mac_configuration_entry*) #1

declare dso_local i32 @DP(i32, i8*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
