; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_my3126.c_my3126_get_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_my3126.c_my3126_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i32* }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@A_ELMER0_GPO = common dso_local global i32 0, align 4
@MDIO_STAT1_LSTATUS = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @my3126_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my3126_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.cphy*, %struct.cphy** %6, align 8
  %15 = getelementptr inbounds %struct.cphy, %struct.cphy* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = load %struct.cphy*, %struct.cphy** %6, align 8
  %18 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %19 = load i32, i32* @MDIO_STAT1, align 4
  %20 = call i32 @cphy_mdio_read(%struct.cphy* %17, i32 %18, i32 %19, i32* %11)
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* @A_ELMER0_GPO, align 4
  %24 = call i32 @t1_tpi_read(i32* %22, i32 %23, i32* %11)
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.cphy*, %struct.cphy** %6, align 8
  %27 = getelementptr inbounds %struct.cphy, %struct.cphy* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @MDIO_STAT1_LSTATUS, align 4
  %30 = and i32 %28, %29
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %5
  %36 = load i32*, i32** %13, align 8
  %37 = call i64 @is_T2(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, -257
  store i32 %41, i32* %11, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load i32*, i32** %13, align 8
  %44 = call i64 @t1_is_T1B(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, -524289
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %39
  br label %67

51:                                               ; preds = %5
  %52 = load i32*, i32** %13, align 8
  %53 = call i64 @is_T2(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, 256
  store i32 %57, i32* %11, align 4
  br label %66

58:                                               ; preds = %51
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @t1_is_T1B(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, 524288
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %55
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* @A_ELMER0_GPO, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @t1_tpi_write(i32* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.cphy*, %struct.cphy** %6, align 8
  %74 = getelementptr inbounds %struct.cphy, %struct.cphy* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SPEED_10000, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @DUPLEX_FULL, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load i32, i32* @PAUSE_RX, align 4
  %83 = load i32, i32* @PAUSE_TX, align 4
  %84 = or i32 %82, %83
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %67
  ret i32 0
}

declare dso_local i32 @cphy_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @t1_tpi_read(i32*, i32, i32*) #1

declare dso_local i64 @is_T2(i32*) #1

declare dso_local i64 @t1_is_T1B(i32*) #1

declare dso_local i32 @t1_tpi_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
