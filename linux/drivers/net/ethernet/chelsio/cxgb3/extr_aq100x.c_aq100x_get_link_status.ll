; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_aq100x.c_aq100x_get_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_aq100x.c_aq100x_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@AQ_LINK_STAT = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@AQ_ANEG_STAT = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @aq100x_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq100x_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %5
  %17 = load %struct.cphy*, %struct.cphy** %7, align 8
  %18 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %19 = load i32, i32* @AQ_LINK_STAT, align 4
  %20 = call i32 @t3_mdio_read(%struct.cphy* %17, i32 %18, i32 %19, i32* %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %77

25:                                               ; preds = %16
  %26 = load i32, i32* %13, align 4
  %27 = and i32 %26, 1
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %77

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %5
  %35 = load %struct.cphy*, %struct.cphy** %7, align 8
  %36 = load i32, i32* @MDIO_MMD_AN, align 4
  %37 = load i32, i32* @AQ_ANEG_STAT, align 4
  %38 = call i32 @t3_mdio_read(%struct.cphy* %35, i32 %36, i32 %37, i32* %13)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %77

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, 6
  switch i32 %48, label %61 [
    i32 6, label %49
    i32 4, label %52
    i32 2, label %55
    i32 0, label %58
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @SPEED_10000, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i32, i32* @SPEED_1000, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load i32, i32* @SPEED_100, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @SPEED_10, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %46, %58, %55, %52, %49
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @DUPLEX_FULL, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @DUPLEX_HALF, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %62
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %41, %32, %23
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
