; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_set_deaf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_set_deaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32 }

@B43_LPPHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @lpphy_set_deaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_set_deaf(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_lp*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %8, align 8
  store %struct.b43_phy_lp* %9, %struct.b43_phy_lp** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %14 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %5, align 8
  %17 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i32, i32* @B43_LPPHY_CRSGAIN_CTL, align 4
  %21 = call i32 @b43_phy_maskset(%struct.b43_wldev* %19, i32 %20, i32 65311, i32 128)
  ret void
}

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
