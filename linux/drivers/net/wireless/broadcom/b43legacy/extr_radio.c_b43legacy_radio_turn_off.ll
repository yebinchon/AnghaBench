; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_turn_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_turn_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.TYPE_5__*, %struct.b43legacy_phy }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_PHY_RFOVER = common dso_local global i32 0, align 4
@B43legacy_PHY_RFOVERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Radio initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_radio_turn_off(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 2
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %5, align 8
  %10 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %11 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %74

18:                                               ; preds = %14, %2
  %19 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %20 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %26 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 5
  br i1 %31, label %32, label %64

32:                                               ; preds = %24
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %34 = load i32, i32* @B43legacy_PHY_RFOVER, align 4
  %35 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %37 = load i32, i32* @B43legacy_PHY_RFOVERVAL, align 4
  %38 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %44 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %48 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %51 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %41, %32
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %55 = load i32, i32* @B43legacy_PHY_RFOVER, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, 140
  %58 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %54, i32 %55, i32 %57)
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %60 = load i32, i32* @B43legacy_PHY_RFOVERVAL, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 65395
  %63 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %59, i32 %60, i32 %62)
  br label %67

64:                                               ; preds = %24, %18
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %66 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %65, i32 21, i32 43520)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %69 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %71 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @b43legacydbg(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %67, %17
  ret void
}

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacydbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
