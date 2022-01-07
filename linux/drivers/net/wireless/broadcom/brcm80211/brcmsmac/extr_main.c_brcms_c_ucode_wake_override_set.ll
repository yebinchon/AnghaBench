; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_ucode_wake_override_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_ucode_wake_override_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i64 }

@MCTL_WAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_ucode_wake_override_set(%struct.brcms_hardware* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %6 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MCTL_WAKE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %9, %2
  %17 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @mboolset(i64 %19, i32 %20)
  br label %32

22:                                               ; preds = %9
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mboolset(i64 %25, i32 %26)
  %28 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %29 = call i32 @brcms_c_mctrl_write(%struct.brcms_hardware* %28)
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %31 = call i32 @brcms_b_wait_for_wake(%struct.brcms_hardware* %30)
  br label %32

32:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @mboolset(i64, i32) #1

declare dso_local i32 @brcms_c_mctrl_write(%struct.brcms_hardware*) #1

declare dso_local i32 @brcms_b_wait_for_wake(%struct.brcms_hardware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
