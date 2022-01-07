; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_eswitch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_eswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_CMD_TOGGLE_ESWITCH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to enable sriov eswitch%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32, i32)* @qlcnic_sriov_pf_cfg_eswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_cfg_eswitch(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %13 = load i32, i32* @QLCNIC_CMD_TOGGLE_ESWITCH, align 4
  %14 = call i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 1610612736
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  %28 = shl i32 %27, 2
  %29 = load i32, i32* @BIT_6, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BIT_1, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %19
  %40 = load i32, i32* @BIT_0, align 4
  %41 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %19
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %48, %struct.qlcnic_cmd_args* %8)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %53, %47
  %63 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
