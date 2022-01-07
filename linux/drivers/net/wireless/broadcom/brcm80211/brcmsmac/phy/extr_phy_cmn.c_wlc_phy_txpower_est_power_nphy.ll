; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_est_power_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_est_power_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcms_phy*)* @wlc_phy_txpower_est_power_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlc_phy_txpower_est_power_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = call i32 @read_phy_reg(%struct.brcms_phy* %12, i32 280)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = call i32 @read_phy_reg(%struct.brcms_phy* %14, i32 281)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = ashr i32 %21, 0
  store i32 %22, i32* %7, align 4
  br label %24

23:                                               ; preds = %1
  store i32 128, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 255
  %31 = ashr i32 %30, 0
  store i32 %31, i32* %8, align 4
  br label %33

32:                                               ; preds = %24
  store i32 128, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = call i32 @read_phy_reg(%struct.brcms_phy* %34, i32 493)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = call i32 @read_phy_reg(%struct.brcms_phy* %36, i32 494)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 32768
  %40 = icmp eq i32 %39, 32768
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 255
  %44 = ashr i32 %43, 0
  store i32 %44, i32* %9, align 4
  br label %46

45:                                               ; preds = %33
  store i32 128, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 32768
  %49 = icmp eq i32 %48, 32768
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 255
  %53 = ashr i32 %52, 0
  store i32 %53, i32* %10, align 4
  br label %55

54:                                               ; preds = %46
  store i32 128, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 24
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 16
  %60 = or i32 %57, %59
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 8
  %63 = or i32 %60, %62
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %63, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  ret i64 %67
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
