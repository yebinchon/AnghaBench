; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_poll_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_poll_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @phy_poll_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_poll_reset(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 12, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = call i32 @msleep(i32 50)
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = load i32, i32* @MII_BMCR, align 4
  %10 = call i32 @phy_read(%struct.phy_device* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BMCR_RESET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %6, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BMCR_RESET, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %27
  %36 = call i32 @msleep(i32 1)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %32, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
