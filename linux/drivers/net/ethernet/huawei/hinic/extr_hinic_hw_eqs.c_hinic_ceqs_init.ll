; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_hinic_ceqs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_hinic_ceqs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_ceqs = type { i32, i32*, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.msix_entry = type { i32 }

@HINIC_CEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to init ceq %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_ceqs_init(%struct.hinic_ceqs* %0, %struct.hinic_hwif* %1, i32 %2, i32 %3, i32 %4, %struct.msix_entry* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_ceqs*, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msix_entry*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hinic_ceqs* %0, %struct.hinic_ceqs** %8, align 8
  store %struct.hinic_hwif* %1, %struct.hinic_hwif** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.msix_entry* %5, %struct.msix_entry** %13, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %14, align 8
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %22 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %8, align 8
  %23 = getelementptr inbounds %struct.hinic_ceqs, %struct.hinic_ceqs* %22, i32 0, i32 2
  store %struct.hinic_hwif* %21, %struct.hinic_hwif** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %8, align 8
  %26 = getelementptr inbounds %struct.hinic_ceqs, %struct.hinic_ceqs* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %58, %6
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %8, align 8
  %33 = getelementptr inbounds %struct.hinic_ceqs, %struct.hinic_ceqs* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %39 = load i32, i32* @HINIC_CEQ, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.msix_entry*, %struct.msix_entry** %13, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %43, i64 %45
  %47 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @init_eq(i32* %37, %struct.hinic_hwif* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %31
  %53 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %62

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %16, align 4
  br label %27

61:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %80

62:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %75, %62
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.hinic_ceqs*, %struct.hinic_ceqs** %8, align 8
  %69 = getelementptr inbounds %struct.hinic_ceqs, %struct.hinic_ceqs* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @remove_eq(i32* %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %63

78:                                               ; preds = %63
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %61
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @init_eq(i32*, %struct.hinic_hwif*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @remove_eq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
