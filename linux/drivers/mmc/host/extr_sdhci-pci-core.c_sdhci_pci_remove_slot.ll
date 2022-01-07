; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_sdhci_pci_remove_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_sdhci_pci_remove_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.sdhci_pci_slot*, i32)* }

@SDHCI_INT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_pci_slot*)* @sdhci_pci_remove_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_pci_remove_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_pci_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %2, align 8
  %5 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %6 = call i32 @sdhci_pci_remove_own_cd(%struct.sdhci_pci_slot* %5)
  store i32 0, i32* %3, align 4
  %7 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %8 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SDHCI_INT_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl(i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %20 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @sdhci_remove_host(%struct.TYPE_9__* %21, i32 %22)
  %24 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %25 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %18
  %31 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %32 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.sdhci_pci_slot*, i32)*, i32 (%struct.sdhci_pci_slot*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.sdhci_pci_slot*, i32)* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %41 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.sdhci_pci_slot*, i32)*, i32 (%struct.sdhci_pci_slot*, i32)** %45, align 8
  %47 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 %46(%struct.sdhci_pci_slot* %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %30, %18
  %51 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %52 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %57 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %59, align 8
  %61 = icmp ne i32 (%struct.TYPE_8__*)* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %64 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %66, align 8
  %68 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %69 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 %67(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %62, %55, %50
  %73 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %74 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = call i32 @sdhci_free_host(%struct.TYPE_9__* %75)
  ret void
}

declare dso_local i32 @sdhci_pci_remove_own_cd(%struct.sdhci_pci_slot*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @sdhci_remove_host(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sdhci_free_host(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
