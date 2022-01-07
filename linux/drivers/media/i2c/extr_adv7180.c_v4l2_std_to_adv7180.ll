; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_v4l2_std_to_adv7180.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_v4l2_std_to_adv7180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@ADV7180_STD_PAL60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@ADV7180_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@ADV7180_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@ADV7180_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@ADV7180_STD_PAL_COMB_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@ADV7180_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@ADV7180_STD_NTSC_M = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@ADV7180_STD_PAL_SECAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @v4l2_std_to_adv7180 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_std_to_adv7180(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ADV7180_STD_PAL60, align 4
  store i32 %8, i32* %2, align 4
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @ADV7180_STD_NTSC_443, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @ADV7180_STD_PAL_N, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ADV7180_STD_PAL_M, align 4
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ADV7180_STD_PAL_COMB_N, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @V4L2_STD_PAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ADV7180_STD_PAL_BG, align 4
  store i32 %39, i32* %2, align 4
  br label %57

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @V4L2_STD_NTSC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ADV7180_STD_NTSC_M, align 4
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @V4L2_STD_SECAM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ADV7180_STD_PAL_SECAM, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %52, %45, %38, %31, %25, %19, %13, %7
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
