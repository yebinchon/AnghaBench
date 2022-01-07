; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_set_chanspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_set_chanspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__**, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.txpwr_limits = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"wl%d: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_b_set_chanspec(%struct.brcms_hardware* %0, i32 %1, i32 %2, %struct.txpwr_limits* %3) #0 {
  %5 = alloca %struct.brcms_hardware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.txpwr_limits*, align 8
  %9 = alloca i64, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.txpwr_limits* %3, %struct.txpwr_limits** %8, align 8
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @brcms_dbg_mac80211(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %20 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %22 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %61

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @chspec_bandunit(i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %29 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %25
  %36 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %37 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %42 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @wlc_phy_chanspec_radio_set(i32 %48, i32 %49)
  %51 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @brcms_b_setband(%struct.brcms_hardware* %51, i64 %52, i32 %53)
  br label %59

55:                                               ; preds = %35
  %56 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @brcms_c_setxband(%struct.brcms_hardware* %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %40
  br label %60

60:                                               ; preds = %59, %25
  br label %61

61:                                               ; preds = %60, %4
  %62 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %63 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @wlc_phy_initcal_enable(i32 %66, i32 %70)
  %72 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %73 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %61
  %77 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %78 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %83 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.txpwr_limits*, %struct.txpwr_limits** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @wlc_phy_txpower_limit_set(i32 %86, %struct.txpwr_limits* %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %76
  %91 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %92 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @wlc_phy_chanspec_radio_set(i32 %95, i32 %96)
  br label %117

98:                                               ; preds = %61
  %99 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %100 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @wlc_phy_chanspec_set(i32 %103, i32 %104)
  %106 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %107 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.txpwr_limits*, %struct.txpwr_limits** %8, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @wlc_phy_txpower_limit_set(i32 %110, %struct.txpwr_limits* %111, i32 %112)
  %114 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @brcms_b_mute(%struct.brcms_hardware* %114, i32 %115)
  br label %117

117:                                              ; preds = %98, %90
  ret void
}

declare dso_local i32 @brcms_dbg_mac80211(i32, i8*, i32, i32) #1

declare dso_local i64 @chspec_bandunit(i32) #1

declare dso_local i32 @wlc_phy_chanspec_radio_set(i32, i32) #1

declare dso_local i32 @brcms_b_setband(%struct.brcms_hardware*, i64, i32) #1

declare dso_local i32 @brcms_c_setxband(%struct.brcms_hardware*, i64) #1

declare dso_local i32 @wlc_phy_initcal_enable(i32, i32) #1

declare dso_local i32 @wlc_phy_txpower_limit_set(i32, %struct.txpwr_limits*, i32) #1

declare dso_local i32 @wlc_phy_chanspec_set(i32, i32) #1

declare dso_local i32 @brcms_b_mute(%struct.brcms_hardware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
