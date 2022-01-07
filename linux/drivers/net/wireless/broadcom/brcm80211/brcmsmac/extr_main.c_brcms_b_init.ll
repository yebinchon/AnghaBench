; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, i32, %struct.TYPE_2__*, %struct.brcms_c_info* }
%struct.TYPE_2__ = type { i32 }
%struct.brcms_c_info = type { i32 }

@BCMA_CLKMODE_FAST = common dso_local global i32 0, align 4
@BRCMS_WAKE_OVERRIDE_MACSUSPEND = common dso_local global i32 0, align 4
@BCMA_CLKMODE_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32)* @brcms_b_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_init(%struct.brcms_hardware* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %8, i32 0, i32 4
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  store %struct.brcms_c_info* %10, %struct.brcms_c_info** %7, align 8
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %18 = load i32, i32* @BCMA_CLKMODE_FAST, align 4
  %19 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @brcms_intrsoff(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @chspec_bandunit(i32 %26)
  %28 = call i32 @brcms_c_setxband(%struct.brcms_hardware* %25, i32 %27)
  %29 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %30 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @wlc_phy_chanspec_radio_set(i32 %33, i32 %34)
  %36 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %37 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wlc_phy_cal_init(i32 %40)
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %43 = call i32 @brcms_b_coreinit(%struct.brcms_c_info* %42)
  %44 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @brcms_b_bsinit(%struct.brcms_c_info* %44, i32 %45)
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @brcms_intrsrestore(i32 %49, i32 %50)
  %52 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %53 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BRCMS_WAKE_OVERRIDE_MACSUSPEND, align 4
  %56 = call i32 @mboolset(i32 %54, i32 %55)
  %57 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %58 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %20
  %62 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %63 = load i32, i32* @BCMA_CLKMODE_DYNAMIC, align 4
  %64 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %20
  ret void
}

declare dso_local i32 @brcms_b_clkctl_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_intrsoff(i32) #1

declare dso_local i32 @brcms_c_setxband(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @chspec_bandunit(i32) #1

declare dso_local i32 @wlc_phy_chanspec_radio_set(i32, i32) #1

declare dso_local i32 @wlc_phy_cal_init(i32) #1

declare dso_local i32 @brcms_b_coreinit(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_b_bsinit(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_intrsrestore(i32, i32) #1

declare dso_local i32 @mboolset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
