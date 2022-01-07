; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_channel_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_channel_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed bc channel %s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i32 0, align 4
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @qlcnic_sriov_channel_cfg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_cmd_args, align 8
  %7 = alloca %struct.qlcnic_vf_info*, align 8
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %14, align 8
  %16 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %15, i64 0
  store %struct.qlcnic_vf_info* %16, %struct.qlcnic_vf_info** %7, align 8
  %17 = call i32 @memset(%struct.qlcnic_cmd_args* %6, i32 0, i32 8)
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %6, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %2
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %26 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %25, %struct.qlcnic_cmd_args* %6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  br label %70

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %5, align 4
  %47 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 25
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 2, i32* %3, align 4
  br label %73

55:                                               ; preds = %40
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @QLCNIC_BC_CMD_CHANNEL_INIT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %61 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %62 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %61, i32 0, i32 0
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %69

64:                                               ; preds = %55
  %65 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %66 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %67 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %29
  %71 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %6)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %54, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @memset(%struct.qlcnic_cmd_args*, i32, i32) #1

declare dso_local i64 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
