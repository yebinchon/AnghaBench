; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_get_link_status_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_get_link_status_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_RXDET = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_PCS_10GBRT_STAT1 = common dso_local global i32 0, align 4
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_PHYXS_LNSTAT = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @get_link_status_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_link_status_r(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %5
  %19 = load %struct.cphy*, %struct.cphy** %7, align 8
  %20 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %21 = load i32, i32* @MDIO_PMA_RXDET, align 4
  %22 = call i32 @t3_mdio_read(%struct.cphy* %19, i32 %20, i32 %21, i32* %12)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.cphy*, %struct.cphy** %7, align 8
  %27 = load i32, i32* @MDIO_MMD_PCS, align 4
  %28 = load i32, i32* @MDIO_PCS_10GBRT_STAT1, align 4
  %29 = call i32 @t3_mdio_read(%struct.cphy* %26, i32 %27, i32 %28, i32* %13)
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.cphy*, %struct.cphy** %7, align 8
  %35 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %36 = load i32, i32* @MDIO_PHYXS_LNSTAT, align 4
  %37 = call i32 @t3_mdio_read(%struct.cphy* %34, i32 %35, i32 %36, i32* %14)
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %65

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = lshr i32 %47, 12
  %49 = and i32 %46, %48
  %50 = and i32 %49, 1
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %5
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @SPEED_10000, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @DUPLEX_FULL, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
