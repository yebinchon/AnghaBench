; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_setband.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_setband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, %struct.brcms_c_info* }
%struct.brcms_c_info = type { i32, i64 }

@ON = common dso_local global i32 0, align 4
@MI_DMAINT = common dso_local global i64 0, align 8
@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32, i32)* @brcms_b_setband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_setband(%struct.brcms_hardware* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_hardware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcms_c_info*, align 8
  %8 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 2
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %10, align 8
  store %struct.brcms_c_info* %11, %struct.brcms_c_info** %7, align 8
  %12 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bcma_core_is_enabled(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %19 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bcma_core_enable(i32 %20, i32 0)
  %22 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %23 = call i32 @brcms_c_mctrl_reset(%struct.brcms_hardware* %22)
  br label %24

24:                                               ; preds = %17, %3
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @brcms_c_setband_inact(%struct.brcms_c_info* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %29 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %65

33:                                               ; preds = %24
  %34 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %35 = load i32, i32* @ON, align 4
  %36 = call i32 @brcms_b_core_phy_clk(%struct.brcms_hardware* %34, i32 %35)
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @brcms_b_bsinit(%struct.brcms_c_info* %37, i32 %38)
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %41 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i64, i64* @MI_DMAINT, align 8
  %46 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %47 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %33
  %49 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  %50 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @brcms_intrsrestore(i32 %51, i32 %52)
  %54 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %55 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @maccontrol, align 4
  %58 = call i32 @D11REGOFFS(i32 %57)
  %59 = call i32 @bcma_read32(i32 %56, i32 %58)
  %60 = load i32, i32* @MCTL_EN_MAC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  br label %65

65:                                               ; preds = %48, %32
  ret void
}

declare dso_local i32 @bcma_core_is_enabled(i32) #1

declare dso_local i32 @bcma_core_enable(i32, i32) #1

declare dso_local i32 @brcms_c_mctrl_reset(%struct.brcms_hardware*) #1

declare dso_local i32 @brcms_c_setband_inact(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_b_core_phy_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_bsinit(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_intrsrestore(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
