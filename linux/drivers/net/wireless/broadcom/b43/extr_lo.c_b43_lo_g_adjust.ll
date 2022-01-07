; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_lo_g_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_b43_lo_g_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32 }
%struct.b43_lo_calib = type { i32 }
%struct.b43_rfatt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_lo_g_adjust(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_g*, align 8
  %4 = alloca %struct.b43_lo_calib*, align 8
  %5 = alloca %struct.b43_rfatt, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  store %struct.b43_phy_g* %9, %struct.b43_phy_g** %3, align 8
  %10 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %11 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %10, i32 0, i32 1
  %12 = call i32 @memcpy(%struct.b43_rfatt* %5, i32* %11, i32 4)
  %13 = call i32 @b43_lo_fixup_rfatt(%struct.b43_rfatt* %5)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %16 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %15, i32 0, i32 0
  %17 = call %struct.b43_lo_calib* @b43_get_calib_lo_settings(%struct.b43_wldev* %14, i32* %16, %struct.b43_rfatt* %5)
  store %struct.b43_lo_calib* %17, %struct.b43_lo_calib** %4, align 8
  %18 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %4, align 8
  %19 = icmp ne %struct.b43_lo_calib* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = load %struct.b43_lo_calib*, %struct.b43_lo_calib** %4, align 8
  %24 = getelementptr inbounds %struct.b43_lo_calib, %struct.b43_lo_calib* %23, i32 0, i32 0
  %25 = call i32 @b43_lo_write(%struct.b43_wldev* %22, i32* %24)
  br label %26

26:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @memcpy(%struct.b43_rfatt*, i32*, i32) #1

declare dso_local i32 @b43_lo_fixup_rfatt(%struct.b43_rfatt*) #1

declare dso_local %struct.b43_lo_calib* @b43_get_calib_lo_settings(%struct.b43_wldev*, i32*, %struct.b43_rfatt*) #1

declare dso_local i32 @b43_lo_write(%struct.b43_wldev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
