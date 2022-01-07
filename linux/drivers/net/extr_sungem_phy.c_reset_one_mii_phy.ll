; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_reset_one_mii_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sungem_phy.c_reset_one_mii_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_phy = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_phy*, i32)* @reset_one_mii_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_one_mii_phy(%struct.mii_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_phy* %0, %struct.mii_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10000, i32* %6, align 4
  %7 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MII_BMCR, align 4
  %10 = call i32 @__sungem_phy_read(%struct.mii_phy* %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @BMCR_ISOLATE, align 4
  %12 = load i32, i32* @BMCR_PDOWN, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @BMCR_RESET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MII_BMCR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @__sungem_phy_write(%struct.mii_phy* %20, i32 %21, i32 %22, i32 %23)
  %25 = call i32 @udelay(i32 100)
  br label %26

26:                                               ; preds = %40, %2
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MII_BMCR, align 4
  %34 = call i32 @__sungem_phy_read(%struct.mii_phy* %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BMCR_RESET, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %42

40:                                               ; preds = %30
  %41 = call i32 @udelay(i32 10)
  br label %26

42:                                               ; preds = %39, %26
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BMCR_ISOLATE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MII_BMCR, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @BMCR_ISOLATE, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @__sungem_phy_write(%struct.mii_phy* %51, i32 %52, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %50, %47, %42
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 0
  %62 = zext i1 %61 to i32
  ret i32 %62
}

declare dso_local i32 @__sungem_phy_read(%struct.mii_phy*, i32, i32) #1

declare dso_local i32 @__sungem_phy_write(%struct.mii_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
