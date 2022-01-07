; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_compute_frame_dur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_compute_frame_dur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32, i32, i64)* @brcms_c_compute_frame_dur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_compute_frame_dur(%struct.brcms_c_info* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %12 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_sifs(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @brcms_c_calc_ack_time(%struct.brcms_c_info* %16, i32 %17, i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @brcms_c_calc_frame_time(%struct.brcms_c_info* %31, i32 %32, i32 %33, i64 %34)
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %25, %4
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @get_sifs(i32) #1

declare dso_local i64 @brcms_c_calc_ack_time(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i64 @brcms_c_calc_frame_time(%struct.brcms_c_info*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
