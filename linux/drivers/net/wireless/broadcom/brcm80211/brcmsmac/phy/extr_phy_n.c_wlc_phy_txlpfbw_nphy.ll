; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txlpfbw_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txlpfbw_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txlpfbw_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txlpfbw_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @NREV_GE(i32 %7, i32 3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %1
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @NREV_LT(i32 %14, i32 7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %10
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CHSPEC_IS40(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 3, i32* %3, align 4
  br label %25

24:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = call i64 @PHY_IPA(%struct.brcms_phy* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @CHSPEC_IS40(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 5, i32* %3, align 4
  br label %37

36:                                               ; preds = %29
  store i32 4, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 %40, 0
  %42 = load i32, i32* %3, align 4
  %43 = shl i32 %42, 3
  %44 = or i32 %41, %43
  %45 = load i32, i32* %3, align 4
  %46 = shl i32 %45, 6
  %47 = or i32 %44, %46
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 %48, 9
  %50 = or i32 %47, %49
  %51 = call i32 @write_phy_reg(%struct.brcms_phy* %39, i32 232, i32 %50)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = call i64 @PHY_IPA(%struct.brcms_phy* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %38
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @CHSPEC_IS40(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 4, i32* %3, align 4
  br label %63

62:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = shl i32 %65, 0
  %67 = load i32, i32* %3, align 4
  %68 = shl i32 %67, 3
  %69 = or i32 %66, %68
  %70 = load i32, i32* %3, align 4
  %71 = shl i32 %70, 6
  %72 = or i32 %69, %71
  %73 = load i32, i32* %3, align 4
  %74 = shl i32 %73, 9
  %75 = or i32 %72, %74
  %76 = call i32 @write_phy_reg(%struct.brcms_phy* %64, i32 233, i32 %75)
  br label %77

77:                                               ; preds = %63, %38
  br label %78

78:                                               ; preds = %77, %10, %1
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
