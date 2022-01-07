; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_est.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_est.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.lcnphy_iq_est = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i32, i64, %struct.lcnphy_iq_est*)* @wlc_lcnphy_rx_iq_est to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_rx_iq_est(%struct.brcms_phy* %0, i32 %1, i64 %2, %struct.lcnphy_iq_est* %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.lcnphy_iq_est*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.lcnphy_iq_est* %3, %struct.lcnphy_iq_est** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %12 = call i32 @mod_phy_reg(%struct.brcms_phy* %11, i32 1754, i32 32, i32 32)
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %14 = call i32 @mod_phy_reg(%struct.brcms_phy* %13, i32 1040, i32 8, i32 0)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 0
  %18 = call i32 @mod_phy_reg(%struct.brcms_phy* %15, i32 1154, i32 65535, i32 %17)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 0
  %23 = call i32 @mod_phy_reg(%struct.brcms_phy* %19, i32 1153, i32 255, i32 %22)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %25 = call i32 @mod_phy_reg(%struct.brcms_phy* %24, i32 1153, i32 256, i32 0)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %27 = call i32 @mod_phy_reg(%struct.brcms_phy* %26, i32 1153, i32 512, i32 512)
  br label %28

28:                                               ; preds = %37, %4
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %30 = call i32 @read_phy_reg(%struct.brcms_phy* %29, i32 1153)
  %31 = and i32 %30, 512
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 5000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %66

37:                                               ; preds = %33
  %38 = call i32 @udelay(i32 100)
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %43 = call i32 @read_phy_reg(%struct.brcms_phy* %42, i32 1155)
  %44 = shl i32 %43, 16
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %46 = call i32 @read_phy_reg(%struct.brcms_phy* %45, i32 1156)
  %47 = or i32 %44, %46
  %48 = load %struct.lcnphy_iq_est*, %struct.lcnphy_iq_est** %8, align 8
  %49 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %51 = call i32 @read_phy_reg(%struct.brcms_phy* %50, i32 1157)
  %52 = shl i32 %51, 16
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %54 = call i32 @read_phy_reg(%struct.brcms_phy* %53, i32 1158)
  %55 = or i32 %52, %54
  %56 = load %struct.lcnphy_iq_est*, %struct.lcnphy_iq_est** %8, align 8
  %57 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %59 = call i32 @read_phy_reg(%struct.brcms_phy* %58, i32 1159)
  %60 = shl i32 %59, 16
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %62 = call i32 @read_phy_reg(%struct.brcms_phy* %61, i32 1160)
  %63 = or i32 %60, %62
  %64 = load %struct.lcnphy_iq_est*, %struct.lcnphy_iq_est** %8, align 8
  %65 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %41, %36
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %68 = call i32 @mod_phy_reg(%struct.brcms_phy* %67, i32 1040, i32 8, i32 8)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %70 = call i32 @mod_phy_reg(%struct.brcms_phy* %69, i32 1754, i32 32, i32 0)
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
