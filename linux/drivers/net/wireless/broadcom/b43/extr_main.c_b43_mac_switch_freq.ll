; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_mac_switch_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_mac_switch_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@BCMA_CHIP_ID_BCM4331 = common dso_local global i64 0, align 8
@B43_MMIO_TSF_CLK_FRAC_LOW = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CLK_FRAC_HIGH = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM43131 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43217 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43222 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43224 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43225 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43227 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43228 = common dso_local global i64 0, align 8
@B43_PHYTYPE_LCN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_mac_switch_freq(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @BCMA_CHIP_ID_BCM4331, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %30 [
    i32 2, label %16
    i32 1, label %23
  ]

16:                                               ; preds = %14
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %19 = call i32 @b43_write16(%struct.b43_wldev* %17, i32 %18, i32 6242)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %22 = call i32 @b43_write16(%struct.b43_wldev* %20, i32 %21, i32 6)
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %26 = call i32 @b43_write16(%struct.b43_wldev* %24, i32 %25, i32 15984)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %29 = call i32 @b43_write16(%struct.b43_wldev* %27, i32 %28, i32 6)
  br label %37

30:                                               ; preds = %14
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %33 = call i32 @b43_write16(%struct.b43_wldev* %31, i32 %32, i32 26214)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %36 = call i32 @b43_write16(%struct.b43_wldev* %34, i32 %35, i32 6)
  br label %37

37:                                               ; preds = %30, %23, %16
  br label %116

38:                                               ; preds = %2
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @BCMA_CHIP_ID_BCM43131, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @BCMA_CHIP_ID_BCM43217, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @BCMA_CHIP_ID_BCM43222, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @BCMA_CHIP_ID_BCM43224, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @BCMA_CHIP_ID_BCM43227, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @BCMA_CHIP_ID_BCM43228, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62, %58, %54, %50, %46, %42, %38
  %67 = load i32, i32* %4, align 4
  switch i32 %67, label %82 [
    i32 2, label %68
    i32 1, label %75
  ]

68:                                               ; preds = %66
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %70 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %71 = call i32 @b43_write16(%struct.b43_wldev* %69, i32 %70, i32 8322)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %73 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %74 = call i32 @b43_write16(%struct.b43_wldev* %72, i32 %73, i32 8)
  br label %89

75:                                               ; preds = %66
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %78 = call i32 @b43_write16(%struct.b43_wldev* %76, i32 %77, i32 21313)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %80 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %81 = call i32 @b43_write16(%struct.b43_wldev* %79, i32 %80, i32 8)
  br label %89

82:                                               ; preds = %66
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %84 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %85 = call i32 @b43_write16(%struct.b43_wldev* %83, i32 %84, i32 34953)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %87 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %88 = call i32 @b43_write16(%struct.b43_wldev* %86, i32 %87, i32 8)
  br label %89

89:                                               ; preds = %82, %75, %68
  br label %115

90:                                               ; preds = %62
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @B43_PHYTYPE_LCN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  switch i32 %98, label %106 [
    i32 1, label %99
  ]

99:                                               ; preds = %97
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %101 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %102 = call i32 @b43_write16(%struct.b43_wldev* %100, i32 %101, i32 31968)
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %104 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %105 = call i32 @b43_write16(%struct.b43_wldev* %103, i32 %104, i32 12)
  br label %113

106:                                              ; preds = %97
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %109 = call i32 @b43_write16(%struct.b43_wldev* %107, i32 %108, i32 52429)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %111 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %112 = call i32 @b43_write16(%struct.b43_wldev* %110, i32 %111, i32 12)
  br label %113

113:                                              ; preds = %106, %99
  br label %114

114:                                              ; preds = %113, %90
  br label %115

115:                                              ; preds = %114, %89
  br label %116

116:                                              ; preds = %115, %37
  ret void
}

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
