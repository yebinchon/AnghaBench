; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_band_from_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_band_from_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX2175_BAND_AM = common dso_local global i32 0, align 4
@MAX2175_BAND_FM = common dso_local global i32 0, align 4
@MAX2175_BAND_VHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @max2175_band_from_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_band_from_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 144000
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 26100000
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @MAX2175_BAND_AM, align 4
  store i32 %10, i32* %2, align 4
  br label %22

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 65000000
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp sle i32 %15, 108000000
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @MAX2175_BAND_FM, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %14, %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* @MAX2175_BAND_VHF, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %17, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
