; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_genmii_setup_forced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_genmii_setup_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32, i32, i64, i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32, i32)* @genmii_setup_forced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genmii_setup_forced(%struct.mii_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %10 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %13 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %16 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %18 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %20 = load i32, i32* @MII_BMCR, align 4
  %21 = call i32 @sungem_phy_read(%struct.mii_phy* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @BMCR_FULLDPLX, align 4
  %23 = load i32, i32* @BMCR_SPEED100, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BMCR_ANENABLE, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %31 = load i32, i32* @MII_BMCR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @BMCR_RESET, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @sungem_phy_write(%struct.mii_phy* %30, i32 %31, i32 %34)
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %43 [
    i32 130, label %37
    i32 129, label %38
    i32 128, label %42
  ]

37:                                               ; preds = %3
  br label %46

38:                                               ; preds = %3
  %39 = load i32, i32* @BMCR_SPEED100, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %46

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %3, %42
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %38, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @DUPLEX_FULL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @BMCR_FULLDPLX, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.mii_phy*, %struct.mii_phy** %5, align 8
  %56 = load i32, i32* @MII_BMCR, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @sungem_phy_write(%struct.mii_phy* %55, i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %43
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @sungem_phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @sungem_phy_write(%struct.mii_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
