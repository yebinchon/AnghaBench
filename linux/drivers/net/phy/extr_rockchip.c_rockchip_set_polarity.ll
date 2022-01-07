; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_rockchip.c_rockchip_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_rockchip.c_rockchip_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_INTERNAL_CTRL_STATUS = common dso_local global i32 0, align 4
@MII_AUTO_MDIX_EN = common dso_local global i32 0, align 4
@MII_MDIX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @rockchip_set_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_set_polarity(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = load i32, i32* @MII_INTERNAL_CTRL_STATUS, align 4
  %11 = call i32 @phy_read(%struct.phy_device* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @MII_AUTO_MDIX_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %33 [
    i32 131, label %23
    i32 128, label %28
    i32 130, label %32
    i32 129, label %32
  ]

23:                                               ; preds = %16
  %24 = load i32, i32* @MII_MDIX_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %34

28:                                               ; preds = %16
  %29 = load i32, i32* @MII_MDIX_EN, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %16, %16
  br label %33

33:                                               ; preds = %16, %32
  store i32 0, i32* %3, align 4
  br label %49

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = load i32, i32* @MII_INTERNAL_CTRL_STATUS, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @phy_write(%struct.phy_device* %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %34
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %33, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
