; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_crs_ed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_crs_ed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@B43_PHY_CRSTHRES1_R1 = common dso_local global i32 0, align 4
@B43_PHY_CRSTHRES1 = common dso_local global i32 0, align 4
@B43_PHY_CRSTHRES2 = common dso_local global i32 0, align 4
@B43_PHY_ANTDWELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_crs_ed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_crs_ed(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  store %struct.b43_phy* %5, %struct.b43_phy** %3, align 8
  %6 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %7 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = load i32, i32* @B43_PHY_CRSTHRES1_R1, align 4
  %13 = call i32 @b43_phy_write(%struct.b43_wldev* %11, i32 %12, i32 20249)
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = load i32, i32* @B43_PHY_CRSTHRES1, align 4
  %22 = call i32 @b43_phy_write(%struct.b43_wldev* %20, i32 %21, i32 6241)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B43_PHY_CRSTHRES2, align 4
  %25 = call i32 @b43_phy_write(%struct.b43_wldev* %23, i32 %24, i32 625)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i32, i32* @B43_PHY_ANTDWELL, align 4
  %28 = call i32 @b43_phy_set(%struct.b43_wldev* %26, i32 %27, i32 2048)
  br label %42

29:                                               ; preds = %14
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_PHY_CRSTHRES1, align 4
  %32 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %31, i32 152)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_PHY_CRSTHRES2, align 4
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %33, i32 %34, i32 112)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @B43_PHY_OFDM(i32 201)
  %38 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 128)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_PHY_ANTDWELL, align 4
  %41 = call i32 @b43_phy_set(%struct.b43_wldev* %39, i32 %40, i32 2048)
  br label %42

42:                                               ; preds = %29, %19
  br label %43

43:                                               ; preds = %42, %10
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
