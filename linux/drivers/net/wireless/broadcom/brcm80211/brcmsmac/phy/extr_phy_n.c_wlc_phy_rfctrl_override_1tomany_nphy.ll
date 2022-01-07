; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rfctrl_override_1tomany_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rfctrl_override_1tomany_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID2 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32, i32)* @wlc_phy_rfctrl_override_1tomany_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @NREV_GE(i32 %17, i32 7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %140

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %139 [
    i32 130, label %22
    i32 132, label %41
    i32 129, label %71
    i32 131, label %101
    i32 128, label %120
  ]

22:                                               ; preds = %20
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %28 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %23, i32 32, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %34 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %29, i32 16, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %40 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %35, i32 8, i32 %36, i32 %37, i32 %38, i32 %39)
  br label %139

41:                                               ; preds = %20
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %47 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %42, i32 4, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %53 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %48, i32 2, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %59 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %54, i32 1, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %65 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %60, i32 2, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %70 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %66, i32 2048, i32 0, i32 %67, i32 %68, i32 %69)
  br label %139

71:                                               ; preds = %20
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %77 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %72, i32 4, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %83 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %78, i32 2, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %89 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %84, i32 1, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %95 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %90, i32 4, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %100 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %96, i32 2048, i32 1, i32 %97, i32 %98, i32 %99)
  br label %139

101:                                              ; preds = %20
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 255
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 65280
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = ashr i32 %106, 8
  store i32 %107, i32* %12, align 4
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %113 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %108, i32 2048, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %119 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %114, i32 24576, i32 %115, i32 %116, i32 %117, i32 %118)
  br label %139

120:                                              ; preds = %20
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 32767
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 32768
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = ashr i32 %125, 14
  store i32 %126, i32* %12, align 4
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %132 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %127, i32 4096, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %138 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %133, i32 8192, i32 %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %20, %120, %101, %71, %41, %22
  br label %140

140:                                              ; preds = %139, %5
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
