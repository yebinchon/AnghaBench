; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_b43_lpphy_op_switch_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_b43_lpphy_op_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32 }

@B43_MMIO_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @b43_lpphy_op_switch_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_lpphy_op_switch_channel(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_phy_lp*, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %10, align 8
  store %struct.b43_phy_lp* %11, %struct.b43_phy_lp** %6, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 8291
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @lpphy_b2063_tune(%struct.b43_wldev* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %17
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @lpphy_b2062_tune(%struct.b43_wldev* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @lpphy_set_analog_filter(%struct.b43_wldev* %35, i32 %36)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @channel2freq_lp(i32 %39)
  %41 = call i32 @lpphy_adjust_gain_table(%struct.b43_wldev* %38, i32 %40)
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %6, align 8
  %45 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %47 = load i32, i32* @B43_MMIO_CHANNEL, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @b43_write16(%struct.b43_wldev* %46, i32 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %32, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @lpphy_b2063_tune(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_b2062_tune(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_analog_filter(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_adjust_gain_table(%struct.b43_wldev*, i32) #1

declare dso_local i32 @channel2freq_lp(i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
