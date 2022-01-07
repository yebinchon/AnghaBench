; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_stop_playback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_stop_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_ht* }
%struct.b43_phy_ht = type { i64* }

@B43_PHY_HT_SAMP_STAT = common dso_local global i32 0, align 4
@B43_PHY_HT_SAMP_CMD = common dso_local global i32 0, align 4
@B43_PHY_HT_SAMP_CMD_STOP = common dso_local global i32 0, align 4
@B43_PHY_HT_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_ht_stop_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_stop_playback(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_ht*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %8, align 8
  store %struct.b43_phy_ht* %9, %struct.b43_phy_ht** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = load i32, i32* @B43_PHY_HT_SAMP_STAT, align 4
  %12 = call i32 @b43_phy_read(%struct.b43_wldev* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_PHY_HT_SAMP_CMD, align 4
  %19 = load i32, i32* @B43_PHY_HT_SAMP_CMD_STOP, align 4
  %20 = call i32 @b43_phy_set(%struct.b43_wldev* %17, i32 %18, i32 %19)
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i32, i32* @B43_PHY_HT_IQLOCAL_CMDGCTL, align 4
  %28 = call i32 @b43_phy_mask(%struct.b43_wldev* %26, i32 %27, i32 32767)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load i32, i32* @B43_PHY_HT_SAMP_CMD, align 4
  %33 = call i32 @b43_phy_mask(%struct.b43_wldev* %31, i32 %32, i32 -5)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %74, %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %77

37:                                               ; preds = %34
  %38 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %3, align 8
  %39 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %37
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 4
  %50 = add nsw i32 99, %49
  %51 = call i32 @B43_HTTAB16(i32 13, i32 %50)
  %52 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %3, align 8
  %53 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @b43_httab_write(%struct.b43_wldev* %47, i32 %51, i64 %58)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 103, %62
  %64 = call i32 @B43_HTTAB16(i32 13, i32 %63)
  %65 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %3, align 8
  %66 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @b43_httab_write(%struct.b43_wldev* %60, i32 %64, i64 %71)
  br label %73

73:                                               ; preds = %46, %37
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %34

77:                                               ; preds = %34
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_httab_write(%struct.b43_wldev*, i32, i64) #1

declare dso_local i32 @B43_HTTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
