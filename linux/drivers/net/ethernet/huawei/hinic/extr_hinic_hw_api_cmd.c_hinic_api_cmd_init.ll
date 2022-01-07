; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_hinic_api_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_hinic_api_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32 }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_api_cmd_chain_attr = type { i32, i32, i32, %struct.hinic_hwif* }

@API_CHAIN_NUM_CELLS = common dso_local global i32 0, align 4
@HINIC_API_CMD_WRITE_TO_MGMT_CPU = common dso_local global i32 0, align 4
@HINIC_API_CMD_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to create chain %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_api_cmd_init(%struct.hinic_api_cmd_chain** %0, %struct.hinic_hwif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_api_cmd_chain**, align 8
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_api_cmd_chain_attr, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain** %0, %struct.hinic_api_cmd_chain*** %4, align 8
  store %struct.hinic_hwif* %1, %struct.hinic_hwif** %5, align 8
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %13 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %9, align 8
  store i64 4, i64* %10, align 8
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %16 = getelementptr inbounds %struct.hinic_api_cmd_chain_attr, %struct.hinic_api_cmd_chain_attr* %8, i32 0, i32 3
  store %struct.hinic_hwif* %15, %struct.hinic_hwif** %16, align 8
  %17 = load i32, i32* @API_CHAIN_NUM_CELLS, align 4
  %18 = getelementptr inbounds %struct.hinic_api_cmd_chain_attr, %struct.hinic_api_cmd_chain_attr* %8, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @API_CMD_CELL_SIZE(i64 %19)
  %21 = getelementptr inbounds %struct.hinic_api_cmd_chain_attr, %struct.hinic_api_cmd_chain_attr* %8, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @HINIC_API_CMD_WRITE_TO_MGMT_CPU, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %59, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HINIC_API_CMD_MAX, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.hinic_api_cmd_chain_attr, %struct.hinic_api_cmd_chain_attr* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @HINIC_API_CMD_WRITE_TO_MGMT_CPU, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %59

34:                                               ; preds = %27
  %35 = call %struct.hinic_api_cmd_chain* @api_cmd_create_chain(%struct.hinic_api_cmd_chain_attr* %8)
  %36 = load %struct.hinic_api_cmd_chain**, %struct.hinic_api_cmd_chain*** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %36, i64 %38
  store %struct.hinic_api_cmd_chain* %35, %struct.hinic_api_cmd_chain** %39, align 8
  %40 = load %struct.hinic_api_cmd_chain**, %struct.hinic_api_cmd_chain*** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %40, i64 %42
  %44 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %43, align 8
  %45 = call i64 @IS_ERR(%struct.hinic_api_cmd_chain* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %34
  %48 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.hinic_api_cmd_chain**, %struct.hinic_api_cmd_chain*** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %52, i64 %54
  %56 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.hinic_api_cmd_chain* %56)
  store i32 %57, i32* %11, align 4
  br label %63

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %23

62:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %86

63:                                               ; preds = %47
  %64 = load i32, i32* @HINIC_API_CMD_WRITE_TO_MGMT_CPU, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %81, %63
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @HINIC_API_CMD_WRITE_TO_MGMT_CPU, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %81

74:                                               ; preds = %69
  %75 = load %struct.hinic_api_cmd_chain**, %struct.hinic_api_cmd_chain*** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %75, i64 %77
  %79 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %78, align 8
  %80 = call i32 @api_cmd_destroy_chain(%struct.hinic_api_cmd_chain* %79)
  br label %81

81:                                               ; preds = %74, %73
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %62
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @API_CMD_CELL_SIZE(i64) #1

declare dso_local %struct.hinic_api_cmd_chain* @api_cmd_create_chain(%struct.hinic_api_cmd_chain_attr*) #1

declare dso_local i64 @IS_ERR(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @api_cmd_destroy_chain(%struct.hinic_api_cmd_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
