; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, i32, i32, i32, i32, %struct.brcms_c_info* }
%struct.brcms_c_info = type { i32 }

@DEF_MACINTMASK = common dso_local global i32 0, align 4
@RETRY_SHORT_FB = common dso_local global i32 0, align 4
@RETRY_LONG_FB = common dso_local global i32 0, align 4
@RETRY_SHORT_DEF = common dso_local global i32 0, align 4
@RETRY_LONG_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_b_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_info_init(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %4 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %4, i32 0, i32 6
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  store %struct.brcms_c_info* %6, %struct.brcms_c_info** %3, align 8
  %7 = load i32, i32* @DEF_MACINTMASK, align 4
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i32, i32* @RETRY_SHORT_FB, align 4
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @RETRY_LONG_FB, align 4
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %17 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @RETRY_SHORT_DEF, align 4
  %19 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @RETRY_LONG_DEF, align 4
  %22 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = call i32 @ch20mhz_chspec(i32 1)
  %25 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @ch20mhz_chspec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
