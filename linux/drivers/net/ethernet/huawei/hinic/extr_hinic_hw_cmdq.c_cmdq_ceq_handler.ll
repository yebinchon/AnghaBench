; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_ceq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_ceq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdqs = type { %struct.hinic_hwif*, %struct.hinic_cmdq* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_cmdq = type { i32 }
%struct.hinic_cmdq_header = type { i32 }
%struct.hinic_hw_wqe = type { i32 }

@TYPE = common dso_local global i32 0, align 4
@WQE_SCMD_SIZE = common dso_local global i32 0, align 4
@ARM = common dso_local global i32 0, align 4
@WQE_LCMD_SIZE = common dso_local global i32 0, align 4
@HINIC_SET_ARM_CMDQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to set arm for CMDQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cmdq_ceq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_ceq_handler(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_cmdqs*, align 8
  %7 = alloca %struct.hinic_cmdq*, align 8
  %8 = alloca %struct.hinic_cmdq_header*, align 8
  %9 = alloca %struct.hinic_hw_wqe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hinic_hwif*, align 8
  %15 = alloca %struct.pci_dev*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TYPE, align 4
  %18 = call i32 @CMDQ_CEQE_GET(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = bitcast i8* %19 to %struct.hinic_cmdqs*
  store %struct.hinic_cmdqs* %20, %struct.hinic_cmdqs** %6, align 8
  %21 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %6, align 8
  %22 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %21, i32 0, i32 1
  %23 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %23, i64 %25
  store %struct.hinic_cmdq* %26, %struct.hinic_cmdq** %7, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %78, %2
  %28 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %29 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WQE_SCMD_SIZE, align 4
  %32 = call %struct.hinic_hw_wqe* @hinic_read_wqe(i32 %30, i32 %31, i32* %13)
  store %struct.hinic_hw_wqe* %32, %struct.hinic_hw_wqe** %9, align 8
  %33 = icmp ne %struct.hinic_hw_wqe* %32, null
  br i1 %33, label %34, label %79

34:                                               ; preds = %27
  %35 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %9, align 8
  %36 = call i64 @IS_ERR(%struct.hinic_hw_wqe* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %79

39:                                               ; preds = %34
  %40 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %9, align 8
  %41 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %40, i32 0, i32 0
  %42 = call %struct.hinic_cmdq_header* @CMDQ_WQE_HEADER(i32* %41)
  store %struct.hinic_cmdq_header* %42, %struct.hinic_cmdq_header** %8, align 8
  %43 = load %struct.hinic_cmdq_header*, %struct.hinic_cmdq_header** %8, align 8
  %44 = getelementptr inbounds %struct.hinic_cmdq_header, %struct.hinic_cmdq_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @ARM, align 4
  %49 = call i64 @HINIC_SAVED_DATA_GET(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  %52 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %53 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %9, align 8
  %54 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %53, i32 0, i32 0
  %55 = call i64 @cmdq_arm_ceq_handler(%struct.hinic_cmdq* %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %79

58:                                               ; preds = %51
  br label %78

59:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  %60 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %61 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WQE_LCMD_SIZE, align 4
  %64 = call %struct.hinic_hw_wqe* @hinic_read_wqe(i32 %62, i32 %63, i32* %13)
  store %struct.hinic_hw_wqe* %64, %struct.hinic_hw_wqe** %9, align 8
  %65 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %9, align 8
  %66 = call i64 @IS_ERR(%struct.hinic_hw_wqe* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %79

69:                                               ; preds = %59
  %70 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %9, align 8
  %73 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %72, i32 0, i32 0
  %74 = call i64 @cmdq_cmd_ceq_handler(%struct.hinic_cmdq* %70, i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %79

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %58
  br label %27

79:                                               ; preds = %76, %68, %57, %38, %27
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %6, align 8
  %84 = getelementptr inbounds %struct.hinic_cmdqs, %struct.hinic_cmdqs* %83, i32 0, i32 0
  %85 = load %struct.hinic_hwif*, %struct.hinic_hwif** %84, align 8
  store %struct.hinic_hwif* %85, %struct.hinic_hwif** %14, align 8
  %86 = load %struct.hinic_hwif*, %struct.hinic_hwif** %14, align 8
  %87 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %86, i32 0, i32 0
  %88 = load %struct.pci_dev*, %struct.pci_dev** %87, align 8
  store %struct.pci_dev* %88, %struct.pci_dev** %15, align 8
  %89 = load %struct.hinic_cmdqs*, %struct.hinic_cmdqs** %6, align 8
  %90 = load i32, i32* @HINIC_SET_ARM_CMDQ, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @hinic_set_arm_bit(%struct.hinic_cmdqs* %89, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %82
  br label %100

100:                                              ; preds = %99, %79
  ret void
}

declare dso_local i32 @CMDQ_CEQE_GET(i32, i32) #1

declare dso_local %struct.hinic_hw_wqe* @hinic_read_wqe(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.hinic_hw_wqe*) #1

declare dso_local %struct.hinic_cmdq_header* @CMDQ_WQE_HEADER(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @HINIC_SAVED_DATA_GET(i32, i32) #1

declare dso_local i64 @cmdq_arm_ceq_handler(%struct.hinic_cmdq*, i32*) #1

declare dso_local i64 @cmdq_cmd_ceq_handler(%struct.hinic_cmdq*, i32, i32*) #1

declare dso_local i32 @hinic_set_arm_bit(%struct.hinic_cmdqs*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
