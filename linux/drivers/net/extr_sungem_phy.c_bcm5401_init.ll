; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5401_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_bcm5401_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_PHYSID2 = common dso_local global i32 0, align 4
@MII_BCM5400_GB_CONTROL = common dso_local global i32 0, align 4
@MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP = common dso_local global i32 0, align 4
@MII_BCM5201_MULTIPHY = common dso_local global i32 0, align 4
@MII_BCM5201_MULTIPHY_SERIALMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*)* @bcm5401_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5401_init(%struct.mii_phy* %0) #0 {
  %2 = alloca %struct.mii_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %2, align 8
  %5 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %6 = load i32, i32* @MII_PHYSID2, align 4
  %7 = call i32 @sungem_phy_read(%struct.mii_phy* %5, i32 %6)
  %8 = and i32 %7, 15
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %37

14:                                               ; preds = %11, %1
  %15 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %16 = call i32 @sungem_phy_write(%struct.mii_phy* %15, i32 24, i32 3104)
  %17 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %18 = call i32 @sungem_phy_write(%struct.mii_phy* %17, i32 23, i32 18)
  %19 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %20 = call i32 @sungem_phy_write(%struct.mii_phy* %19, i32 21, i32 6148)
  %21 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %22 = call i32 @sungem_phy_write(%struct.mii_phy* %21, i32 23, i32 19)
  %23 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %24 = call i32 @sungem_phy_write(%struct.mii_phy* %23, i32 21, i32 4612)
  %25 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %26 = call i32 @sungem_phy_write(%struct.mii_phy* %25, i32 23, i32 32774)
  %27 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %28 = call i32 @sungem_phy_write(%struct.mii_phy* %27, i32 21, i32 306)
  %29 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %30 = call i32 @sungem_phy_write(%struct.mii_phy* %29, i32 23, i32 32774)
  %31 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %32 = call i32 @sungem_phy_write(%struct.mii_phy* %31, i32 21, i32 562)
  %33 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %34 = call i32 @sungem_phy_write(%struct.mii_phy* %33, i32 23, i32 8223)
  %35 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %36 = call i32 @sungem_phy_write(%struct.mii_phy* %35, i32 21, i32 2592)
  br label %37

37:                                               ; preds = %14, %11
  %38 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %39 = load i32, i32* @MII_BCM5400_GB_CONTROL, align 4
  %40 = call i32 @sungem_phy_read(%struct.mii_phy* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %45 = load i32, i32* @MII_BCM5400_GB_CONTROL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @sungem_phy_write(%struct.mii_phy* %44, i32 %45, i32 %46)
  %48 = call i32 @udelay(i32 10)
  %49 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %50 = call i32 @reset_one_mii_phy(%struct.mii_phy* %49, i32 31)
  %51 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %52 = load i32, i32* @MII_BCM5201_MULTIPHY, align 4
  %53 = call i32 @__sungem_phy_read(%struct.mii_phy* %51, i32 31, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @MII_BCM5201_MULTIPHY_SERIALMODE, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load %struct.mii_phy*, %struct.mii_phy** %2, align 8
  %58 = load i32, i32* @MII_BCM5201_MULTIPHY, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @__sungem_phy_write(%struct.mii_phy* %57, i32 31, i32 %58, i32 %59)
  ret i32 0
}

declare dso_local i32 @sungem_phy_read(%struct.mii_phy*, i32) #1

declare dso_local i32 @sungem_phy_write(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_one_mii_phy(%struct.mii_phy*, i32) #1

declare dso_local i32 @__sungem_phy_read(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @__sungem_phy_write(%struct.mii_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
