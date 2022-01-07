; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_std_to_v4l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_std_to_v4l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADV7180_STATUS1_IN_LOCK = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@ADV7180_STATUS1_AUTOD_MASK = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adv7180_std_to_v4l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_std_to_v4l2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ADV7180_STATUS1_IN_LOCK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  store i32 %9, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ADV7180_STATUS1_AUTOD_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %32 [
    i32 134, label %14
    i32 135, label %16
    i32 130, label %18
    i32 133, label %20
    i32 132, label %22
    i32 129, label %24
    i32 131, label %26
    i32 128, label %30
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* @V4L2_STD_NTSC, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %10
  %17 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %10
  %19 = load i32, i32* @V4L2_STD_PAL_M, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %10
  %21 = load i32, i32* @V4L2_STD_PAL_60, align 4
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %10
  %23 = load i32, i32* @V4L2_STD_PAL, align 4
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %10
  %25 = load i32, i32* @V4L2_STD_SECAM, align 4
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %10
  %27 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %28 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %10
  %31 = load i32, i32* @V4L2_STD_SECAM, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %10
  %33 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %26, %24, %22, %20, %18, %16, %14, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
