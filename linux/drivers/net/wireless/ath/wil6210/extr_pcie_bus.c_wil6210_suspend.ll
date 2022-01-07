; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil6210_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil6210_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.wil6210_priv = type { %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"suspend: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wil6210_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil6210_suspend(%struct.device* %0, i32 %1) #0 {
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
  %19 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %18)
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
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @wil_can_suspend(%struct.wil6210_priv* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %72

44:                                               ; preds = %35
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @wil_suspend(%struct.wil6210_priv* %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = call i32 @pci_clear_master(%struct.pci_dev* %55)
  %57 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %58 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %70

63:                                               ; preds = %51
  %64 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %65 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %63, %54
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.wil6210_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_has_active_ifaces(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wil_can_suspend(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_suspend(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
