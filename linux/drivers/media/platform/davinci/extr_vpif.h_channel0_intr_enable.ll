; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif.h_channel0_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif.h_channel0_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vpif_lock = common dso_local global i32 0, align 4
@VPIF_INTEN = common dso_local global i32 0, align 4
@VPIF_INTEN_SET = common dso_local global i32 0, align 4
@VPIF_INTEN_FRAME_CH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @channel0_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel0_intr_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @vpif_lock, i64 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i32, i32* @VPIF_INTEN, align 4
  %10 = call i32 @regr(i32 %9)
  %11 = or i32 %10, 16
  %12 = load i32, i32* @VPIF_INTEN, align 4
  %13 = call i32 @regw(i32 %11, i32 %12)
  %14 = load i32, i32* @VPIF_INTEN_SET, align 4
  %15 = call i32 @regr(i32 %14)
  %16 = or i32 %15, 16
  %17 = load i32, i32* @VPIF_INTEN_SET, align 4
  %18 = call i32 @regw(i32 %16, i32 %17)
  %19 = load i32, i32* @VPIF_INTEN, align 4
  %20 = call i32 @regr(i32 %19)
  %21 = load i32, i32* @VPIF_INTEN_FRAME_CH0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @VPIF_INTEN, align 4
  %24 = call i32 @regw(i32 %22, i32 %23)
  %25 = load i32, i32* @VPIF_INTEN_SET, align 4
  %26 = call i32 @regr(i32 %25)
  %27 = load i32, i32* @VPIF_INTEN_FRAME_CH0, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VPIF_INTEN_SET, align 4
  %30 = call i32 @regw(i32 %28, i32 %29)
  br label %45

31:                                               ; preds = %1
  %32 = load i32, i32* @VPIF_INTEN, align 4
  %33 = call i32 @regr(i32 %32)
  %34 = load i32, i32* @VPIF_INTEN_FRAME_CH0, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @VPIF_INTEN, align 4
  %38 = call i32 @regw(i32 %36, i32 %37)
  %39 = load i32, i32* @VPIF_INTEN_SET, align 4
  %40 = call i32 @regr(i32 %39)
  %41 = load i32, i32* @VPIF_INTEN_FRAME_CH0, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VPIF_INTEN_SET, align 4
  %44 = call i32 @regw(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @vpif_lock, i64 %46)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @regr(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
