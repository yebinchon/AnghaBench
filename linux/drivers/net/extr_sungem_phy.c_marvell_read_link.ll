; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_marvell_read_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_marvell_read_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i32, i64 }

@MII_M1011_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_STATUS_RESOLVED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_STATUS_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_STATUS_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_STATUS_FULLDUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_STATUS_TX_PAUSE = common dso_local global i32 0, align 4
@MII_M1011_PHY_SPEC_STATUS_RX_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @marvell_read_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_read_link(%struct.mii_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  %6 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %7 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %1
  %11 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %12 = load i32, i32* @MII_M1011_PHY_SPEC_STATUS, align 4
  %13 = call i32 @sungem_phy_read(%struct.mii_phy* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MII_M1011_PHY_SPEC_STATUS_RESOLVED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MII_M1011_PHY_SPEC_STATUS_1000, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @SPEED_1000, align 4
  %28 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %29 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %44

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MII_M1011_PHY_SPEC_STATUS_100, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @SPEED_100, align 4
  %37 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %38 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @SPEED_10, align 4
  %41 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %42 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MII_M1011_PHY_SPEC_STATUS_FULLDUPLEX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @DUPLEX_FULL, align 4
  %51 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %52 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @DUPLEX_HALF, align 4
  %55 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %56 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @MII_M1011_PHY_SPEC_STATUS_TX_PAUSE, align 4
  %59 = load i32, i32* @MII_M1011_PHY_SPEC_STATUS_RX_PAUSE, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %68 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %57, %1
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @sungem_phy_read(%struct.mii_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
