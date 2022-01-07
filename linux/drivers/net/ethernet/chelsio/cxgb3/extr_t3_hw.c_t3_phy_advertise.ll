; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_phy_advertise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_phy_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEVAD_NONE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_phy_advertise(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %10 = load i32, i32* @MII_CTRL1000, align 4
  %11 = call i32 @t3_mdio_read(%struct.cphy* %8, i32 %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %110

16:                                               ; preds = %2
  %17 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %18 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.cphy*, %struct.cphy** %4, align 8
  %42 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %43 = load i32, i32* @MII_CTRL1000, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @t3_mdio_write(%struct.cphy* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %110

50:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @ADVERTISE_10HALF, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @ADVERTISE_10FULL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @ADVERTISE_100HALF, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @ADVERTISE_100FULL, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ADVERTISED_Pause, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.cphy*, %struct.cphy** %4, align 8
  %106 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %107 = load i32, i32* @MII_ADVERTISE, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @t3_mdio_write(%struct.cphy* %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %48, %14
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
