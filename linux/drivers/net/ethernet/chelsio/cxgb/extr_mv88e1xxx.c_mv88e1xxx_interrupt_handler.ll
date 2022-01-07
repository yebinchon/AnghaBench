; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88e1xxx.c_mv88e1xxx_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88e1xxx.c_mv88e1xxx_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MV88E1XXX_INTERRUPT_STATUS_REGISTER = common dso_local global i32 0, align 4
@INTR_ENABLE_MASK = common dso_local global i32 0, align 4
@MV88E1XXX_INTR_LINK_CHNG = common dso_local global i32 0, align 4
@MV88E1XXX_SPECIFIC_STATUS_REGISTER = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_AUTONEG_EN = common dso_local global i32 0, align 4
@PHY_AUTONEG_RDY = common dso_local global i32 0, align 4
@cphy_cause_link_change = common dso_local global i32 0, align 4
@MV88E1XXX_INTR_AUTONEG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @mv88e1xxx_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e1xxx_interrupt_handler(%struct.cphy* %0) #0 {
  %2 = alloca %struct.cphy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %1, %87
  %7 = load %struct.cphy*, %struct.cphy** %2, align 8
  %8 = load i32, i32* @MV88E1XXX_INTERRUPT_STATUS_REGISTER, align 4
  %9 = call i32 @simple_mdio_read(%struct.cphy* %7, i32 %8, i32* %5)
  %10 = load i32, i32* @INTR_ENABLE_MASK, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  br label %88

16:                                               ; preds = %6
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MV88E1XXX_INTR_LINK_CHNG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load %struct.cphy*, %struct.cphy** %2, align 8
  %23 = load i32, i32* @MV88E1XXX_SPECIFIC_STATUS_REGISTER, align 4
  %24 = call i32 @simple_mdio_read(%struct.cphy* %22, i32 %23, i32* %4)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MV88E1XXX_INTR_LINK_CHNG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @PHY_LINK_UP, align 4
  %31 = load %struct.cphy*, %struct.cphy** %2, align 8
  %32 = getelementptr inbounds %struct.cphy, %struct.cphy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %59

35:                                               ; preds = %21
  %36 = load i32, i32* @PHY_LINK_UP, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.cphy*, %struct.cphy** %2, align 8
  %39 = getelementptr inbounds %struct.cphy, %struct.cphy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.cphy*, %struct.cphy** %2, align 8
  %43 = getelementptr inbounds %struct.cphy, %struct.cphy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PHY_AUTONEG_EN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @PHY_AUTONEG_RDY, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.cphy*, %struct.cphy** %2, align 8
  %52 = getelementptr inbounds %struct.cphy, %struct.cphy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %48, %35
  %56 = load i32, i32* @cphy_cause_link_change, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %29
  br label %60

60:                                               ; preds = %59, %16
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MV88E1XXX_INTR_AUTONEG_DONE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @PHY_AUTONEG_RDY, align 4
  %67 = load %struct.cphy*, %struct.cphy** %2, align 8
  %68 = getelementptr inbounds %struct.cphy, %struct.cphy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.cphy*, %struct.cphy** %2, align 8
  %73 = getelementptr inbounds %struct.cphy, %struct.cphy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PHY_LINK_UP, align 4
  %76 = load i32, i32* @PHY_AUTONEG_RDY, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @PHY_LINK_UP, align 4
  %80 = load i32, i32* @PHY_AUTONEG_RDY, align 4
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load i32, i32* @cphy_cause_link_change, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %71
  br label %6

88:                                               ; preds = %15
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @simple_mdio_read(%struct.cphy*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
