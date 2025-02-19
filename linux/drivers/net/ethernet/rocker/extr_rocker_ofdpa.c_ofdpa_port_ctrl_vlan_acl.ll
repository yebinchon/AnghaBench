; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_ctrl_vlan_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_ctrl_vlan_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, i32 }
%struct.ofdpa_ctrl = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Error (%d) ctrl ACL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, %struct.ofdpa_ctrl*, i32)* @ofdpa_port_ctrl_vlan_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_ctrl_vlan_acl(%struct.ofdpa_port* %0, i32 %1, %struct.ofdpa_ctrl* %2, i32 %3) #0 {
  %5 = alloca %struct.ofdpa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofdpa_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ofdpa_ctrl* %2, %struct.ofdpa_ctrl** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %22 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %24 = call i32 @htons(i32 65535)
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ROCKER_GROUP_L2_INTERFACE(i32 %25, i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load %struct.ofdpa_ctrl*, %struct.ofdpa_ctrl** %7, align 8
  %35 = getelementptr inbounds %struct.ofdpa_ctrl, %struct.ofdpa_ctrl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ofdpa_ctrl*, %struct.ofdpa_ctrl** %7, align 8
  %38 = getelementptr inbounds %struct.ofdpa_ctrl, %struct.ofdpa_ctrl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ofdpa_ctrl*, %struct.ofdpa_ctrl** %7, align 8
  %41 = getelementptr inbounds %struct.ofdpa_ctrl, %struct.ofdpa_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @ofdpa_flow_tbl_acl(%struct.ofdpa_port* %28, i32 %29, i32 %30, i32 %31, i32* %32, i32* %33, i32 %36, i32 %39, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %4
  %54 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %55 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @netdev_err(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %4
  %60 = load i32, i32* %20, align 4
  ret i32 %60
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ROCKER_GROUP_L2_INTERFACE(i32, i32) #1

declare dso_local i32 @ofdpa_flow_tbl_acl(%struct.ofdpa_port*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
