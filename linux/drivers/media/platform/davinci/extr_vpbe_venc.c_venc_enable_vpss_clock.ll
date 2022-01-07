; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_enable_vpss_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_venc.c_venc_enable_vpss_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VPBE_VERSION_1 = common dso_local global i32 0, align 4
@VPBE_VERSION_2 = common dso_local global i32 0, align 4
@VPBE_ENC_STD = common dso_local global i32 0, align 4
@VPBE_ENC_DV_TIMINGS = common dso_local global i32 0, align 4
@VPSS_VENC_CLOCK_SEL = common dso_local global i32 0, align 4
@VPSS_VPBE_CLOCK = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @venc_enable_vpss_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venc_enable_vpss_clock(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @VPBE_VERSION_1, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %42

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @VPBE_VERSION_2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VPBE_ENC_STD, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @VPBE_ENC_DV_TIMINGS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp ule i32 %24, 27000000
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %15
  %27 = load i32, i32* @VPSS_VENC_CLOCK_SEL, align 4
  %28 = call i32 @vpss_enable_clock(i32 %27, i32 1)
  %29 = load i32, i32* @VPSS_VPBE_CLOCK, align 4
  %30 = call i32 @vpss_enable_clock(i32 %29, i32 1)
  br label %42

31:                                               ; preds = %23, %19, %11
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VPBE_VERSION_3, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @VPBE_ENC_STD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @VPSS_VENC_CLOCK_SEL, align 4
  %41 = call i32 @vpss_enable_clock(i32 %40, i32 0)
  br label %42

42:                                               ; preds = %10, %26, %39, %35, %31
  ret void
}

declare dso_local i32 @vpss_enable_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
