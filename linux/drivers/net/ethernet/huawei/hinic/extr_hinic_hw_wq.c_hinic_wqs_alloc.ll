; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wqs = type { i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@WQS_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@WQS_MAX_NUM_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid max_wqs = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate mem for page addresses\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed wq page allocation\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_wqs_alloc(%struct.hinic_wqs* %0, i32 %1, %struct.hinic_hwif* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_wqs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_hwif*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_wqs* %0, %struct.hinic_wqs** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hinic_hwif* %2, %struct.hinic_hwif** %7, align 8
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %13 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @WQS_BLOCKS_PER_PAGE, align 4
  %17 = call i32 @ALIGN(i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WQS_MAX_NUM_BLOCKS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %103

28:                                               ; preds = %3
  %29 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %30 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %31 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %30, i32 0, i32 2
  store %struct.hinic_hwif* %29, %struct.hinic_hwif** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @WQS_BLOCKS_PER_PAGE, align 4
  %34 = sdiv i32 %32, %33
  %35 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %36 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %38 = call i64 @alloc_page_arrays(%struct.hinic_wqs* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %103

46:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %50 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @wqs_allocate_page(%struct.hinic_wqs* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %87

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %47

67:                                               ; preds = %47
  %68 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %71 = call i32 @WQS_FREE_BLOCKS_SIZE(%struct.hinic_wqs* %70)
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @devm_kzalloc(i32* %69, i32 %71, i32 %72)
  %74 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %75 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %77 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %86

83:                                               ; preds = %67
  %84 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %85 = call i32 @init_wqs_blocks_arr(%struct.hinic_wqs* %84)
  store i32 0, i32* %4, align 4
  br label %103

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %59
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %96, %87
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @wqs_free_page(%struct.hinic_wqs* %93, i32 %94)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %88

99:                                               ; preds = %88
  %100 = load %struct.hinic_wqs*, %struct.hinic_wqs** %5, align 8
  %101 = call i32 @free_page_arrays(%struct.hinic_wqs* %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %83, %40, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @alloc_page_arrays(%struct.hinic_wqs*) #1

declare dso_local i32 @wqs_allocate_page(%struct.hinic_wqs*, i32) #1

declare dso_local i32 @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @WQS_FREE_BLOCKS_SIZE(%struct.hinic_wqs*) #1

declare dso_local i32 @init_wqs_blocks_arr(%struct.hinic_wqs*) #1

declare dso_local i32 @wqs_free_page(%struct.hinic_wqs*, i32) #1

declare dso_local i32 @free_page_arrays(%struct.hinic_wqs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
