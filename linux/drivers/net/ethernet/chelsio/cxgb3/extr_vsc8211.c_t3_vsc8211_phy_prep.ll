; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_vsc8211.c_t3_vsc8211_phy_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_vsc8211.c_t3_vsc8211_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i8*, i32* }
%struct.adapter = type { i32 }
%struct.mdio_ops = type { i32 }

@vsc8211_ops = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"10/100/1000BASE-T\00", align 1
@MDIO_DEVAD_NONE = common dso_local global i32 0, align 4
@VSC8211_EXT_CTRL = common dso_local global i32 0, align 4
@VSC_CTRL_MEDIA_MODE_HI = common dso_local global i32 0, align 4
@VSC8211_LED_CTRL = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"1000BASE-X\00", align 1
@vsc8211_fiber_ops = common dso_local global i32 0, align 4
@VSC8211_EXT_PAGE_AXS = common dso_local global i32 0, align 4
@VSC8211_SIGDET_CTRL = common dso_local global i32 0, align 4
@VSC_CTRL_CLAUSE37_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_vsc8211_phy_prep(%struct.cphy* %0, %struct.adapter* %1, i32 %2, %struct.mdio_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdio_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store %struct.adapter* %1, %struct.adapter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mdio_ops* %3, %struct.mdio_ops** %9, align 8
  %12 = load %struct.cphy*, %struct.cphy** %6, align 8
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.mdio_ops*, %struct.mdio_ops** %9, align 8
  %16 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %17 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SUPPORTED_MII, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SUPPORTED_TP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SUPPORTED_IRQ, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cphy_init(%struct.cphy* %12, %struct.adapter* %13, i32 %14, i32* @vsc8211_ops, %struct.mdio_ops* %15, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @msleep(i32 20)
  %31 = load %struct.cphy*, %struct.cphy** %6, align 8
  %32 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %33 = load i32, i32* @VSC8211_EXT_CTRL, align 4
  %34 = call i32 @t3_mdio_read(%struct.cphy* %31, i32 %32, i32 %33, i32* %11)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %112

39:                                               ; preds = %4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @VSC_CTRL_MEDIA_MODE_HI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.cphy*, %struct.cphy** %6, align 8
  %46 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %47 = load i32, i32* @VSC8211_LED_CTRL, align 4
  %48 = call i32 @t3_mdio_write(%struct.cphy* %45, i32 %46, i32 %47, i32 256)
  store i32 %48, i32* %5, align 4
  br label %112

49:                                               ; preds = %39
  %50 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %51 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SUPPORTED_MII, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SUPPORTED_IRQ, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.cphy*, %struct.cphy** %6, align 8
  %60 = getelementptr inbounds %struct.cphy, %struct.cphy* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cphy*, %struct.cphy** %6, align 8
  %62 = getelementptr inbounds %struct.cphy, %struct.cphy* %61, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  %63 = load %struct.cphy*, %struct.cphy** %6, align 8
  %64 = getelementptr inbounds %struct.cphy, %struct.cphy* %63, i32 0, i32 2
  store i32* @vsc8211_fiber_ops, i32** %64, align 8
  %65 = load %struct.cphy*, %struct.cphy** %6, align 8
  %66 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %67 = load i32, i32* @VSC8211_EXT_PAGE_AXS, align 4
  %68 = call i32 @t3_mdio_write(%struct.cphy* %65, i32 %66, i32 %67, i32 1)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %49
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %112

73:                                               ; preds = %49
  %74 = load %struct.cphy*, %struct.cphy** %6, align 8
  %75 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %76 = load i32, i32* @VSC8211_SIGDET_CTRL, align 4
  %77 = call i32 @t3_mdio_write(%struct.cphy* %74, i32 %75, i32 %76, i32 1)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %112

82:                                               ; preds = %73
  %83 = load %struct.cphy*, %struct.cphy** %6, align 8
  %84 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %85 = load i32, i32* @VSC8211_EXT_PAGE_AXS, align 4
  %86 = call i32 @t3_mdio_write(%struct.cphy* %83, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %112

91:                                               ; preds = %82
  %92 = load %struct.cphy*, %struct.cphy** %6, align 8
  %93 = load i32, i32* @MDIO_DEVAD_NONE, align 4
  %94 = load i32, i32* @VSC8211_EXT_CTRL, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @VSC_CTRL_CLAUSE37_VIEW, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @t3_mdio_write(%struct.cphy* %92, i32 %93, i32 %94, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %112

103:                                              ; preds = %91
  %104 = load %struct.cphy*, %struct.cphy** %6, align 8
  %105 = call i32 @vsc8211_reset(%struct.cphy* %104, i32 0)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %112

110:                                              ; preds = %103
  %111 = call i32 @udelay(i32 5)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %108, %101, %89, %80, %71, %44, %37
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @cphy_init(%struct.cphy*, %struct.adapter*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @vsc8211_reset(%struct.cphy*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
