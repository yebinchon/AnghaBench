; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_t3_qt2045_phy_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_t3_qt2045_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { i32 }
%struct.mdio_ops = type { i32 }

@qt2045_ops = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"10GBASE-CX4\00", align 1
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_qt2045_phy_prep(%struct.cphy* %0, %struct.adapter* %1, i32 %2, %struct.mdio_ops* %3) #0 {
  %5 = alloca %struct.cphy*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdio_ops*, align 8
  %9 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %5, align 8
  store %struct.adapter* %1, %struct.adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mdio_ops* %3, %struct.mdio_ops** %8, align 8
  %10 = load %struct.cphy*, %struct.cphy** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mdio_ops*, %struct.mdio_ops** %8, align 8
  %14 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %15 = load i32, i32* @SUPPORTED_AUI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SUPPORTED_TP, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @cphy_init(%struct.cphy* %10, %struct.adapter* %11, i32 %12, i32* @qt2045_ops, %struct.mdio_ops* %13, i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %4
  %23 = load %struct.cphy*, %struct.cphy** %5, align 8
  %24 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %25 = load i32, i32* @MDIO_STAT1, align 4
  %26 = call i32 @t3_mdio_read(%struct.cphy* %23, i32 %24, i32 %25, i32* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.cphy*, %struct.cphy** %5, align 8
  %33 = getelementptr inbounds %struct.cphy, %struct.cphy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28, %22, %4
  ret i32 0
}

declare dso_local i32 @cphy_init(%struct.cphy*, %struct.adapter*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
