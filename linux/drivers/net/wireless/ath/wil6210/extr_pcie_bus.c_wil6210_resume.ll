; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil6210_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil6210_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.wil6210_priv = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"resume: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"device failed to resume (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wil6210_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil6210_resume(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(%struct.device* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = call %struct.wil6210_priv* @pci_get_drvdata(%struct.pci_dev* %12)
  store %struct.wil6210_priv* %13, %struct.wil6210_priv** %7, align 8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %24 = call i32 @wil_has_active_ifaces(%struct.wil6210_priv* %23, i32 1, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %32 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %2
  %36 = phi i1 [ false, %2 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = call i32 @pci_set_master(%struct.pci_dev* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @wil_resume(%struct.wil6210_priv* %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %43
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @wil_err(%struct.wil6210_priv* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %58 = call i32 @pci_clear_master(%struct.pci_dev* %57)
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %60 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %72

65:                                               ; preds = %50
  %66 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %67 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %56
  br label %91

73:                                               ; preds = %43
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %78 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %90

83:                                               ; preds = %73
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %85 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.wil6210_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_has_active_ifaces(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @wil_resume(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
