; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_vlan_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_vlan_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { i32 }
%struct.bnx2x_vlan_mac_ramrod_params = type { i64, %struct.TYPE_6__, %struct.bnx2x_vlan_mac_obj* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RAMROD_CONT = common dso_local global i32 0, align 4
@BNX2X_VLAN = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_DEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to schedule ADD operations: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s VLAN failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_vlan_one(%struct.bnx2x* %0, i32 %1, %struct.bnx2x_vlan_mac_obj* %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnx2x_vlan_mac_ramrod_params, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bnx2x_vlan_mac_obj* %2, %struct.bnx2x_vlan_mac_obj** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %13 = call i32 @memset(%struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 32)
  %14 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 2
  store %struct.bnx2x_vlan_mac_obj* %14, %struct.bnx2x_vlan_mac_obj** %15, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* @RAMROD_CONT, align 4
  %20 = load i64*, i64** %10, align 8
  %21 = call i32 @test_bit(i32 %19, i64* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load i32, i32* @BNX2X_VLAN, align 4
  %30 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = call i32 @__set_bit(i32 %29, i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %37 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %23
  %40 = load i32, i32* @BNX2X_VLAN_MAC_DEL, align 4
  %41 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %12, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %46 = call i32 @bnx2x_config_vlan_mac(%struct.bnx2x* %45, %struct.bnx2x_vlan_mac_ramrod_params* %12)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @EEXIST, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @BNX2X_MSG_SP, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @DP(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 0, i32* %11, align 4
  br label %65

55:                                               ; preds = %44
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %63 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %58, %55
  br label %65

65:                                               ; preds = %64, %51
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.bnx2x_vlan_mac_ramrod_params*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_config_vlan_mac(%struct.bnx2x*, %struct.bnx2x_vlan_mac_ramrod_params*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
