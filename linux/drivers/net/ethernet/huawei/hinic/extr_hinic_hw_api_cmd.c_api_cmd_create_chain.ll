; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_create_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_create_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32 }
%struct.hinic_api_cmd_chain_attr = type { i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Invalid number of cells, must be power of 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to initialize chain\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create cells for API CMD chain\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to initialize chain HW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hinic_api_cmd_chain* (%struct.hinic_api_cmd_chain_attr*)* @api_cmd_create_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hinic_api_cmd_chain* @api_cmd_create_chain(%struct.hinic_api_cmd_chain_attr* %0) #0 {
  %2 = alloca %struct.hinic_api_cmd_chain*, align 8
  %3 = alloca %struct.hinic_api_cmd_chain_attr*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hinic_api_cmd_chain*, align 8
  %7 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain_attr* %0, %struct.hinic_api_cmd_chain_attr** %3, align 8
  %8 = load %struct.hinic_api_cmd_chain_attr*, %struct.hinic_api_cmd_chain_attr** %3, align 8
  %9 = getelementptr inbounds %struct.hinic_api_cmd_chain_attr, %struct.hinic_api_cmd_chain_attr* %8, i32 0, i32 1
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  store %struct.hinic_hwif* %10, %struct.hinic_hwif** %4, align 8
  %11 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %12 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.hinic_api_cmd_chain_attr*, %struct.hinic_api_cmd_chain_attr** %3, align 8
  %15 = getelementptr inbounds %struct.hinic_api_cmd_chain_attr, %struct.hinic_api_cmd_chain_attr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hinic_api_cmd_chain_attr*, %struct.hinic_api_cmd_chain_attr** %3, align 8
  %18 = getelementptr inbounds %struct.hinic_api_cmd_chain_attr, %struct.hinic_api_cmd_chain_attr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.hinic_api_cmd_chain* @ERR_PTR(i32 %28)
  store %struct.hinic_api_cmd_chain* %29, %struct.hinic_api_cmd_chain** %2, align 8
  br label %84

30:                                               ; preds = %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.hinic_api_cmd_chain* @devm_kzalloc(i32* %32, i32 4, i32 %33)
  store %struct.hinic_api_cmd_chain* %34, %struct.hinic_api_cmd_chain** %6, align 8
  %35 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %36 = icmp ne %struct.hinic_api_cmd_chain* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.hinic_api_cmd_chain* @ERR_PTR(i32 %39)
  store %struct.hinic_api_cmd_chain* %40, %struct.hinic_api_cmd_chain** %2, align 8
  br label %84

41:                                               ; preds = %30
  %42 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %43 = load %struct.hinic_api_cmd_chain_attr*, %struct.hinic_api_cmd_chain_attr** %3, align 8
  %44 = call i32 @api_chain_init(%struct.hinic_api_cmd_chain* %42, %struct.hinic_api_cmd_chain_attr* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.hinic_api_cmd_chain* @ERR_PTR(i32 %51)
  store %struct.hinic_api_cmd_chain* %52, %struct.hinic_api_cmd_chain** %2, align 8
  br label %84

53:                                               ; preds = %41
  %54 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %55 = call i32 @api_cmd_create_cells(%struct.hinic_api_cmd_chain* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %79

62:                                               ; preds = %53
  %63 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %64 = call i32 @api_cmd_chain_hw_init(%struct.hinic_api_cmd_chain* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %73

71:                                               ; preds = %62
  %72 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  store %struct.hinic_api_cmd_chain* %72, %struct.hinic_api_cmd_chain** %2, align 8
  br label %84

73:                                               ; preds = %67
  %74 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %75 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %76 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @api_cmd_destroy_cells(%struct.hinic_api_cmd_chain* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %58
  %80 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %81 = call i32 @api_chain_free(%struct.hinic_api_cmd_chain* %80)
  %82 = load i32, i32* %7, align 4
  %83 = call %struct.hinic_api_cmd_chain* @ERR_PTR(i32 %82)
  store %struct.hinic_api_cmd_chain* %83, %struct.hinic_api_cmd_chain** %2, align 8
  br label %84

84:                                               ; preds = %79, %71, %47, %37, %23
  %85 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  ret %struct.hinic_api_cmd_chain* %85
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.hinic_api_cmd_chain* @ERR_PTR(i32) #1

declare dso_local %struct.hinic_api_cmd_chain* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @api_chain_init(%struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain_attr*) #1

declare dso_local i32 @api_cmd_create_cells(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @api_cmd_chain_hw_init(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @api_cmd_destroy_cells(%struct.hinic_api_cmd_chain*, i32) #1

declare dso_local i32 @api_chain_free(%struct.hinic_api_cmd_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
