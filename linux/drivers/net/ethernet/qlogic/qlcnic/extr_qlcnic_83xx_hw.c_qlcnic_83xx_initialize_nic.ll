; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_initialize_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_initialize_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_INIT_NIC_FUNC = common dso_local global i32 0, align 4
@QLCNIC_CMD_STOP_NIC_FUNC = common dso_local global i32 0, align 4
@QLC_REGISTER_LB_IDC = common dso_local global i32 0, align 4
@QLC_INIT_FW_RESOURCES = common dso_local global i32 0, align 4
@QLC_REGISTER_DCB_AEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to %s in NIC IDC function event.\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"unregister\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_cmd_args, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %63

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = load i32, i32* @QLCNIC_CMD_INIT_NIC_FUNC, align 4
  %17 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %5, %struct.qlcnic_adapter* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = load i32, i32* @QLCNIC_CMD_STOP_NIC_FUNC, align 4
  %21 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %5, %struct.qlcnic_adapter* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %63

26:                                               ; preds = %22
  %27 = load i32, i32* @QLC_REGISTER_LB_IDC, align 4
  %28 = load i32, i32* @QLC_INIT_FW_RESOURCES, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load i32, i32* @QLC_REGISTER_DCB_AEN, align 4
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %38, %26
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %47, %struct.qlcnic_cmd_args* %5)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %51, %46
  %62 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %5)
  br label %63

63:                                               ; preds = %61, %25, %10
  ret void
}

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
