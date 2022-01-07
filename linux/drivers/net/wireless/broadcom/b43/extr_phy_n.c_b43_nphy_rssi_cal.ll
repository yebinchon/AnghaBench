; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rssi_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rssi_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@N_RSSI_NB = common dso_local global i32 0, align 4
@N_RSSI_W1 = common dso_local global i32 0, align 4
@N_RSSI_W2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_rssi_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rssi_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 19
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @b43_nphy_rev3_rssi_cal(%struct.b43_wldev* %16)
  br label %28

18:                                               ; preds = %9
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = load i32, i32* @N_RSSI_NB, align 4
  %21 = call i32 @b43_nphy_rev2_rssi_cal(%struct.b43_wldev* %19, i32 %20)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = load i32, i32* @N_RSSI_W1, align 4
  %24 = call i32 @b43_nphy_rev2_rssi_cal(%struct.b43_wldev* %22, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = load i32, i32* @N_RSSI_W2, align 4
  %27 = call i32 @b43_nphy_rev2_rssi_cal(%struct.b43_wldev* %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %15
  br label %29

29:                                               ; preds = %28, %8
  ret void
}

declare dso_local i32 @b43_nphy_rev3_rssi_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_rev2_rssi_cal(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
