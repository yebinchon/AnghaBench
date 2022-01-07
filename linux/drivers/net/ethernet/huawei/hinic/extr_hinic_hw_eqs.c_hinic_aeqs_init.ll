; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_hinic_aeqs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_hinic_aeqs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_aeqs = type { i32, i32, i32*, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.msix_entry = type { i32 }

@HINIC_EQS_WQ_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HINIC_AEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to init aeq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_aeqs_init(%struct.hinic_aeqs* %0, %struct.hinic_hwif* %1, i32 %2, i32 %3, i32 %4, %struct.msix_entry* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_aeqs*, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msix_entry*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hinic_aeqs* %0, %struct.hinic_aeqs** %8, align 8
  store %struct.hinic_hwif* %1, %struct.hinic_hwif** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.msix_entry* %5, %struct.msix_entry** %13, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %14, align 8
  %21 = load i32, i32* @HINIC_EQS_WQ_NAME, align 4
  %22 = call i32 @create_singlethread_workqueue(i32 %21)
  %23 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %8, align 8
  %24 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %8, align 8
  %26 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %96

32:                                               ; preds = %6
  %33 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %34 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %8, align 8
  %35 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %34, i32 0, i32 3
  store %struct.hinic_hwif* %33, %struct.hinic_hwif** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %8, align 8
  %38 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %70, %32
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %8, align 8
  %45 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %51 = load i32, i32* @HINIC_AEQ, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %55, i64 %57
  %59 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @init_eq(i32* %49, %struct.hinic_hwif* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %43
  %65 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %74

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %39

73:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %96

74:                                               ; preds = %64
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %8, align 8
  %81 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @remove_eq(i32* %85)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load %struct.hinic_aeqs*, %struct.hinic_aeqs** %8, align 8
  %92 = getelementptr inbounds %struct.hinic_aeqs, %struct.hinic_aeqs* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @destroy_workqueue(i32 %93)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %90, %73, %29
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @init_eq(i32*, %struct.hinic_hwif*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @remove_eq(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
