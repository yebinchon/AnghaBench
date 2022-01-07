; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_default_baseband_attenuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_default_baseband_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }
%struct.b43_bbatt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_bbatt*)* @default_baseband_attenuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_baseband_attenuation(%struct.b43_wldev* %0, %struct.b43_bbatt* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_bbatt*, align 8
  %5 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_bbatt* %1, %struct.b43_bbatt** %4, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %5, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 8272
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.b43_bbatt*, %struct.b43_bbatt** %4, align 8
  %19 = getelementptr inbounds %struct.b43_bbatt, %struct.b43_bbatt* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %23

20:                                               ; preds = %12, %2
  %21 = load %struct.b43_bbatt*, %struct.b43_bbatt** %4, align 8
  %22 = getelementptr inbounds %struct.b43_bbatt, %struct.b43_bbatt* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
