; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.bnx2x_qable_obj = type { %struct.bnx2x_vlan_mac_obj }
%struct.bnx2x_vlan_mac_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)*, i64 (%struct.bnx2x_vlan_mac_obj*)*, %struct.bnx2x_exe_queue_obj }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_exe_queue_obj = type { i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)* }
%struct.bnx2x_exeq_elem = type opaque
%struct.bnx2x_exeq_elem.1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"ADD command is not allowed considering current registry state.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"There is a pending ADD command already\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@BNX2X_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem.1*)* @bnx2x_validate_vlan_mac_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_validate_vlan_mac_add(%struct.bnx2x* %0, %union.bnx2x_qable_obj* %1, %struct.bnx2x_exeq_elem.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %union.bnx2x_qable_obj*, align 8
  %7 = alloca %struct.bnx2x_exeq_elem.1*, align 8
  %8 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %9 = alloca %struct.bnx2x_exe_queue_obj*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %union.bnx2x_qable_obj* %1, %union.bnx2x_qable_obj** %6, align 8
  store %struct.bnx2x_exeq_elem.1* %2, %struct.bnx2x_exeq_elem.1** %7, align 8
  %11 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %12 = bitcast %union.bnx2x_qable_obj* %11 to %struct.bnx2x_vlan_mac_obj*
  store %struct.bnx2x_vlan_mac_obj* %12, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %13 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %14 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %13, i32 0, i32 2
  store %struct.bnx2x_exe_queue_obj* %14, %struct.bnx2x_exe_queue_obj** %9, align 8
  %15 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %15, i32 0, i32 0
  %17 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, i32*)** %16, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %19 = bitcast %struct.bnx2x* %18 to %struct.bnx2x.0*
  %20 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %21 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %22 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 %17(%struct.bnx2x.0* %19, %struct.bnx2x_vlan_mac_obj* %20, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @BNX2X_MSG_SP, align 4
  %30 = call i32 @DP(i32 %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %65

32:                                               ; preds = %3
  %33 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %9, align 8
  %34 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %33, i32 0, i32 0
  %35 = load i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)*, i64 (%struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exeq_elem*)** %34, align 8
  %36 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %9, align 8
  %37 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %38 = bitcast %struct.bnx2x_exeq_elem.1* %37 to %struct.bnx2x_exeq_elem*
  %39 = call i64 %35(%struct.bnx2x_exe_queue_obj* %36, %struct.bnx2x_exeq_elem* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load i32, i32* @BNX2X_MSG_SP, align 4
  %43 = call i32 @DP(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EEXIST, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %65

46:                                               ; preds = %32
  %47 = load i32, i32* @BNX2X_DONT_CONSUME_CAM_CREDIT, align 4
  %48 = load %struct.bnx2x_exeq_elem.1*, %struct.bnx2x_exeq_elem.1** %7, align 8
  %49 = getelementptr inbounds %struct.bnx2x_exeq_elem.1, %struct.bnx2x_exeq_elem.1* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %47, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %46
  %55 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %56 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %55, i32 0, i32 1
  %57 = load i64 (%struct.bnx2x_vlan_mac_obj*)*, i64 (%struct.bnx2x_vlan_mac_obj*)** %56, align 8
  %58 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %59 = call i64 %57(%struct.bnx2x_vlan_mac_obj* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %54, %46
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61, %41, %28
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
