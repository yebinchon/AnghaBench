; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_port_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_GET_LINK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Get Link Status Command failed: 0x%x\0A\00", align 1
@QLCNIC_GBE = common dso_local global i32 0, align 4
@QLCNIC_XGBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_get_port_type(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca %struct.qlcnic_cmd_args, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %3, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = load i32, i32* @QLCNIC_CMD_GET_LINK_STATUS, align 4
  %12 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %4, %struct.qlcnic_adapter* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %18 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %17, %struct.qlcnic_cmd_args* %4)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %46

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %4, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @QLC_83XX_SFP_MODULE_TYPE(i32 %34)
  switch i32 %35, label %40 [
    i32 129, label %36
    i32 130, label %36
    i32 131, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %28, %28, %28, %28
  %37 = load i32, i32* @QLCNIC_GBE, align 4
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @QLCNIC_XGBE, align 4
  %42 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %43 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45, %21
  %47 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %4)
  br label %48

48:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @QLC_83XX_SFP_MODULE_TYPE(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
