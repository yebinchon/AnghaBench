; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-arasan.c_arasan_select_phy_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-arasan.c_arasan_select_phy_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sdhci_pci_slot = type { i32 }
%struct.arasan_host = type { i32 }

@ENHSTRB_MODE = common dso_local global i32 0, align 4
@DLLTRM_ICP = common dso_local global i32 0, align 4
@LEGACY_MODE = common dso_local global i32 0, align 4
@HISPD_MODE = common dso_local global i32 0, align 4
@HS200_MODE = common dso_local global i32 0, align 4
@DDR50_MODE = common dso_local global i32 0, align 4
@HS400_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @arasan_select_phy_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arasan_select_phy_clock(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pci_slot*, align 8
  %5 = alloca %struct.arasan_host*, align 8
  %6 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = call %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_pci_slot* %8, %struct.sdhci_pci_slot** %4, align 8
  %9 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %4, align 8
  %10 = call %struct.arasan_host* @sdhci_pci_priv(%struct.sdhci_pci_slot* %9)
  store %struct.arasan_host* %10, %struct.arasan_host** %5, align 8
  %11 = load %struct.arasan_host*, %struct.arasan_host** %5, align 8
  %12 = getelementptr inbounds %struct.arasan_host, %struct.arasan_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %13, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

22:                                               ; preds = %1
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.arasan_host*, %struct.arasan_host** %5, align 8
  %30 = getelementptr inbounds %struct.arasan_host, %struct.arasan_host* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 200000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %60

39:                                               ; preds = %22
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %41 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 100000000
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 2, i32* %6, align 4
  br label %59

48:                                               ; preds = %39
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %50 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 50000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %47
  br label %60

60:                                               ; preds = %59, %38
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %68 = load i32, i32* @ENHSTRB_MODE, align 4
  %69 = load i32, i32* @DLLTRM_ICP, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @arasan_phy_set(%struct.sdhci_host* %67, i32 %68, i32 1, i32 0, i32 0, i32 %69, i32 %70)
  br label %121

72:                                               ; preds = %60
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %74 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %119 [
    i32 135, label %79
    i32 133, label %83
    i32 130, label %83
    i32 132, label %89
    i32 128, label %89
    i32 134, label %101
    i32 129, label %101
    i32 131, label %107
  ]

79:                                               ; preds = %72
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = load i32, i32* @LEGACY_MODE, align 4
  %82 = call i32 @arasan_phy_set(%struct.sdhci_host* %80, i32 %81, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %120

83:                                               ; preds = %72, %72
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %85 = load i32, i32* @HISPD_MODE, align 4
  %86 = load i32, i32* @DLLTRM_ICP, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @arasan_phy_set(%struct.sdhci_host* %84, i32 %85, i32 3, i32 0, i32 2, i32 %86, i32 %87)
  br label %120

89:                                               ; preds = %72, %72
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %91 = load i32, i32* @HS200_MODE, align 4
  %92 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %93 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DLLTRM_ICP, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @arasan_phy_set(%struct.sdhci_host* %90, i32 %91, i32 2, i32 %97, i32 0, i32 %98, i32 %99)
  br label %120

101:                                              ; preds = %72, %72
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %103 = load i32, i32* @DDR50_MODE, align 4
  %104 = load i32, i32* @DLLTRM_ICP, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @arasan_phy_set(%struct.sdhci_host* %102, i32 %103, i32 1, i32 0, i32 0, i32 %104, i32 %105)
  br label %120

107:                                              ; preds = %72
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %109 = load i32, i32* @HS400_MODE, align 4
  %110 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %111 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DLLTRM_ICP, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @arasan_phy_set(%struct.sdhci_host* %108, i32 %109, i32 1, i32 %115, i32 10, i32 %116, i32 %117)
  br label %120

119:                                              ; preds = %72
  br label %120

120:                                              ; preds = %119, %107, %101, %89, %83, %79
  br label %121

121:                                              ; preds = %120, %66
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %21
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.arasan_host* @sdhci_pci_priv(%struct.sdhci_pci_slot*) #1

declare dso_local i32 @arasan_phy_set(%struct.sdhci_host*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
