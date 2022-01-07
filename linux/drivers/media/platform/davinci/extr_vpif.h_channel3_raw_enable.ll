; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif.h_channel3_raw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif.h_channel3_raw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VPIF_CH_VANC_EN_BIT = common dso_local global i32 0, align 4
@VPIF_CH_HANC_EN_BIT = common dso_local global i32 0, align 4
@VPIF_CH3_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @channel3_raw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel3_raw_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 1, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @VPIF_CH_VANC_EN_BIT, align 4
  store i32 %9, i32* %5, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @VPIF_CH_HANC_EN_BIT, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @VPIF_CH3_CTRL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vpif_set_bit(i32 %16, i32 %17)
  br label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @VPIF_CH3_CTRL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @vpif_clr_bit(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @vpif_set_bit(i32, i32) #1

declare dso_local i32 @vpif_clr_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
