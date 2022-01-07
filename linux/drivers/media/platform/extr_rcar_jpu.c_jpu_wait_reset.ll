; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_wait_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_wait_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpu = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@JPU_RESET_TIMEOUT = common dso_local global i32 0, align 4
@JCCMD = common dso_local global i32 0, align 4
@JCCMD_SRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"timed out in reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jpu*)* @jpu_wait_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpu_wait_reset(%struct.jpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpu*, align 8
  %4 = alloca i64, align 8
  store %struct.jpu* %0, %struct.jpu** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @JPU_RESET_TIMEOUT, align 4
  %7 = call i64 @msecs_to_jiffies(i32 %6)
  %8 = add i64 %5, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load %struct.jpu*, %struct.jpu** %3, align 8
  %11 = load i32, i32* @JCCMD, align 4
  %12 = call i32 @jpu_read(%struct.jpu* %10, i32 %11)
  %13 = load i32, i32* @JCCMD_SRST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @time_after(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.jpu*, %struct.jpu** %3, align 8
  %23 = getelementptr inbounds %struct.jpu, %struct.jpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %16
  %29 = call i32 (...) @schedule()
  br label %9

30:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @jpu_read(%struct.jpu*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
