; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2020_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2020_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i64 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@AEL2020_GPIO_INTR = common dso_local global i32 0, align 4
@AEL2020_GPIO_MODDET = common dso_local global i32 0, align 4
@phy_modtype_none = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@edc_twinax = common dso_local global i32 0, align 4
@edc_sr = common dso_local global i32 0, align 4
@cphy_cause_module_change = common dso_local global i32 0, align 4
@cphy_cause_link_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2020_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_intr_handler(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.cphy*, %struct.cphy** %3, align 8
  %9 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %10 = load i32, i32* @AEL2020_GPIO_INTR, align 4
  %11 = call i32 @t3_mdio_read(%struct.cphy* %8, i32 %9, i32 %10, i32* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %92

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AEL2020_GPIO_MODDET, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %16
  %23 = load %struct.cphy*, %struct.cphy** %3, align 8
  %24 = call i32 @ael2020_get_module_type(%struct.cphy* %23, i32 300)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %92

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.cphy*, %struct.cphy** %3, align 8
  %33 = getelementptr inbounds %struct.cphy, %struct.cphy* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @phy_modtype_none, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.cphy*, %struct.cphy** %3, align 8
  %39 = getelementptr inbounds %struct.cphy, %struct.cphy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  br label %54

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @phy_modtype_twinax, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @phy_modtype_twinax_long, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @edc_twinax, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @edc_sr, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.cphy*, %struct.cphy** %3, align 8
  %57 = getelementptr inbounds %struct.cphy, %struct.cphy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.cphy*, %struct.cphy** %3, align 8
  %62 = call i32 @ael2020_reset(%struct.cphy* %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @cphy_cause_module_change, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %2, align 4
  br label %92

71:                                               ; preds = %54
  %72 = load i32, i32* @cphy_cause_module_change, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %16
  %74 = load %struct.cphy*, %struct.cphy** %3, align 8
  %75 = call i32 @t3_phy_lasi_intr_handler(%struct.cphy* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %92

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @cphy_cause_link_change, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %78, %69, %27, %14
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @ael2020_get_module_type(%struct.cphy*, i32) #1

declare dso_local i32 @ael2020_reset(%struct.cphy*, i32) #1

declare dso_local i32 @t3_phy_lasi_intr_handler(%struct.cphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
