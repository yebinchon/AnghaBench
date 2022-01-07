; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-ac97.c_stk1160_ac97_wait_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-ac97.c_stk1160_ac97_wait_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@STK1160_AC97_TIMEOUT = common dso_local global i32 0, align 4
@STK1160_AC97CTL_0 = common dso_local global i32 0, align 4
@STK1160_AC97CTL_0_CR = common dso_local global i32 0, align 4
@STK1160_AC97CTL_0_CW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"AC97 transfer took too long, this should never happen!\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk1160*)* @stk1160_ac97_wait_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_ac97_wait_transfer_complete(%struct.stk1160* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk1160*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i32, i32* @STK1160_AC97_TIMEOUT, align 4
  %8 = call i64 @msecs_to_jiffies(i32 %7)
  %9 = add i64 %6, %8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @time_is_after_jiffies(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %16 = load i32, i32* @STK1160_AC97CTL_0, align 4
  %17 = call i32 @stk1160_read_reg(%struct.stk1160* %15, i32 %16, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @STK1160_AC97CTL_0_CR, align 4
  %20 = load i32, i32* @STK1160_AC97CTL_0_CW, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %31

25:                                               ; preds = %14
  %26 = call i32 @usleep_range(i32 50, i32 100)
  br label %10

27:                                               ; preds = %10
  %28 = call i32 @stk1160_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @stk1160_read_reg(%struct.stk1160*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @stk1160_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
