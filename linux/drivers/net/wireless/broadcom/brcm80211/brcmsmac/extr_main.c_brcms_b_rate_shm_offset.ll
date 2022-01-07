; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_rate_shm_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_rate_shm_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32 }

@M_RT_DIRMAP_A = common dso_local global i32 0, align 4
@M_RT_DIRMAP_B = common dso_local global i32 0, align 4
@rate_info = common dso_local global i64* null, align 8
@BRCMS_RATE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_b_rate_shm_offset(%struct.brcms_hardware* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @is_ofdm_rate(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @M_RT_DIRMAP_A, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @M_RT_DIRMAP_B, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** @rate_info, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BRCMS_RATE_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, 15
  store i64 %23, i64* %7, align 8
  %24 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = mul i64 %27, 2
  %29 = add i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @brcms_b_read_shm(%struct.brcms_hardware* %24, i32 %30)
  %32 = mul nsw i32 2, %31
  ret i32 %32
}

declare dso_local i64 @is_ofdm_rate(i64) #1

declare dso_local i32 @brcms_b_read_shm(%struct.brcms_hardware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
