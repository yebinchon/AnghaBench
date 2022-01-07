; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_wait_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_wait_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@STFSM_MAX_WAIT_SEQ_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout on sequence completion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stfsm*)* @stfsm_wait_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stfsm_wait_seq(%struct.stfsm* %0) #0 {
  %2 = alloca %struct.stfsm*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i32, i32* @STFSM_MAX_WAIT_SEQ_MS, align 4
  %7 = call i64 @msecs_to_jiffies(i32 %6)
  %8 = add i64 %5, %7
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @time_after_eq(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %21 = call i64 @stfsm_is_idle(%struct.stfsm* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %31

24:                                               ; preds = %19
  %25 = call i32 (...) @cond_resched()
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.stfsm*, %struct.stfsm** %2, align 8
  %28 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @stfsm_is_idle(%struct.stfsm*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
