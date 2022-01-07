; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_aci_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_aci_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_radio_aci_detect(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 0
  store %struct.b43legacy_phy* %13, %struct.b43legacy_phy** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %15 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %14, i32 1027)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %16, i32 %17, i32 0)
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 65528
  %22 = or i32 %21, 5
  %23 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %19, i32 1027, i32 %22)
  %24 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %25 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %30 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %29, i32 1162)
  %31 = and i32 %30, 63
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 63
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 32
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 64
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %35
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %67, %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 100
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %47 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %46, i32 1151)
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 63
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 32
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 64
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %63, 20
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %42

70:                                               ; preds = %42
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %71, i32 1027, i32 %72)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
