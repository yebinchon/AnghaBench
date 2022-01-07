; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_set_txpower_bg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_set_txpower_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32, i32, i32, i32, i64 }

@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_radio_set_txpower_bg(%struct.b43legacy_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43legacy_phy*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 0
  store %struct.b43legacy_phy* %11, %struct.b43legacy_phy** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 65535
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %16 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 65535
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %23 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %30 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %35 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %38 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %41 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 11
  %44 = zext i1 %43 to i32
  %45 = call i32 @B43legacy_WARN_ON(i32 %44)
  %46 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %47 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 9
  %53 = zext i1 %52 to i32
  %54 = call i32 @B43legacy_WARN_ON(i32 %53)
  br label %60

55:                                               ; preds = %32
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 31
  %58 = zext i1 %57 to i32
  %59 = call i32 @B43legacy_WARN_ON(i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 7
  %63 = zext i1 %62 to i32
  %64 = call i32 @B43legacy_WARN_ON(i32 %63)
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev* %65, i32 %66)
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %68, i32 67, i32 %69)
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %72 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %71, i32 %72, i32 100, i32 %73)
  %75 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %76 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 8272
  br i1 %78, label %79, label %89

79:                                               ; preds = %60
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %82 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %81, i32 82)
  %83 = and i32 %82, -113
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 %84, 4
  %86 = and i32 %85, 112
  %87 = or i32 %83, %86
  %88 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %80, i32 82, i32 %87)
  br label %89

89:                                               ; preds = %79, %60
  %90 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %9, align 8
  %91 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %97 = call i32 @b43legacy_phy_lo_adjust(%struct.b43legacy_wldev* %96, i32 0)
  br label %98

98:                                               ; preds = %95, %89
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_phy_set_baseband_attenuation(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_phy_lo_adjust(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
