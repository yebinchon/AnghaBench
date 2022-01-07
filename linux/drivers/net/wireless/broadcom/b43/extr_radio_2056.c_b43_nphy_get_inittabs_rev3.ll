; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b43_nphy_get_inittabs_rev3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b43_nphy_get_inittabs_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b2056_inittabs_pts = type { i32 }
%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }

@b2056_inittab_phy_rev3 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_phy_rev4 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev5 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev6 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev7_9 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev8 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@b2056_inittab_radio_rev11 = common dso_local global %struct.b2056_inittabs_pts zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b2056_inittabs_pts* (%struct.b43_wldev*)* @b43_nphy_get_inittabs_rev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b2056_inittabs_pts* @b43_nphy_get_inittabs_rev3(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b2056_inittabs_pts*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  store %struct.b43_phy* %6, %struct.b43_phy** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 3, label %11
    i32 4, label %12
  ]

11:                                               ; preds = %1
  store %struct.b2056_inittabs_pts* @b2056_inittab_phy_rev3, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

12:                                               ; preds = %1
  store %struct.b2056_inittabs_pts* @b2056_inittab_phy_rev4, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %22 [
    i32 5, label %17
    i32 6, label %18
    i32 7, label %19
    i32 9, label %19
    i32 8, label %20
    i32 11, label %21
  ]

17:                                               ; preds = %13
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev5, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

18:                                               ; preds = %13
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev6, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

19:                                               ; preds = %13, %13
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev7_9, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

20:                                               ; preds = %13
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev8, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

21:                                               ; preds = %13
  store %struct.b2056_inittabs_pts* @b2056_inittab_radio_rev11, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  store %struct.b2056_inittabs_pts* null, %struct.b2056_inittabs_pts** %2, align 8
  br label %24

24:                                               ; preds = %23, %21, %20, %19, %18, %17, %12, %11
  %25 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %2, align 8
  ret %struct.b2056_inittabs_pts* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
