; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32 }

@RX_PKT_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @adm8211_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_free_rings(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.adm8211_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.adm8211_priv*, %struct.adm8211_priv** %6, align 8
  store %struct.adm8211_priv* %7, %struct.adm8211_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %49, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %11 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %16 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %49

25:                                               ; preds = %14
  %26 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %27 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %30 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RX_PKT_SIZE, align 4
  %38 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %39 = call i32 @pci_unmap_single(i32 %28, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %41 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @dev_kfree_skb(%struct.TYPE_6__* %47)
  br label %49

49:                                               ; preds = %25, %24
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %8

52:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %103, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %56 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %53
  %60 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %61 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %103

70:                                               ; preds = %59
  %71 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %72 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %75 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %83 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %93 = call i32 @pci_unmap_single(i32 %73, i32 %81, i32 %91, i32 %92)
  %94 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %95 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i32 @dev_kfree_skb(%struct.TYPE_6__* %101)
  br label %103

103:                                              ; preds = %70, %69
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %53

106:                                              ; preds = %53
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
