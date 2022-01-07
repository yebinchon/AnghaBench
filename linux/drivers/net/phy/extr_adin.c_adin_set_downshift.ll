; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_set_downshift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_set_downshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@DOWNSHIFT_DEV_DISABLE = common dso_local global i32 0, align 4
@ADIN1300_PHY_CTRL2 = common dso_local global i32 0, align 4
@ADIN1300_DOWNSPEEDS_EN = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ADIN1300_DOWNSPEED_RETRIES_MSK = common dso_local global i32 0, align 4
@ADIN1300_LINKING_EN = common dso_local global i32 0, align 4
@ADIN1300_PHY_CTRL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @adin_set_downshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_set_downshift(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DOWNSHIFT_DEV_DISABLE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = load i32, i32* @ADIN1300_PHY_CTRL2, align 4
  %14 = load i32, i32* @ADIN1300_DOWNSPEEDS_EN, align 4
  %15 = call i32 @phy_clear_bits(%struct.phy_device* %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @E2BIG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %16
  %23 = load i32, i32* @ADIN1300_DOWNSPEED_RETRIES_MSK, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FIELD_PREP(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @ADIN1300_LINKING_EN, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = load i32, i32* @ADIN1300_PHY_CTRL3, align 4
  %31 = load i32, i32* @ADIN1300_LINKING_EN, align 4
  %32 = load i32, i32* @ADIN1300_DOWNSPEED_RETRIES_MSK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @phy_modify(%struct.phy_device* %29, i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %22
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = load i32, i32* @ADIN1300_PHY_CTRL2, align 4
  %43 = load i32, i32* @ADIN1300_DOWNSPEEDS_EN, align 4
  %44 = call i32 @phy_set_bits(%struct.phy_device* %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %38, %19, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @phy_clear_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_set_bits(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
