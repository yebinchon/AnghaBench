; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_hb_checker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_hb_checker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@current = common dso_local global i32 0, align 4
@XPC_HB_CHECK_CPU = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@xpc_hb_check_interval = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@xpc_hb_check_timeout = common dso_local global i64 0, align 8
@xpc_exiting = common dso_local global i64 0, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"woke up with %d ticks rem; %d IRQs have been received\0A\00", align 1
@xpc_activate_IRQ_rcvd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"checking remote heartbeats\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"processing activate IRQs received\0A\00", align 1
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xpc_activate_IRQ_wq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"heartbeat checker is exiting\0A\00", align 1
@xpc_hb_checker_exited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xpc_hb_checker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_hb_checker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @current, align 4
  %5 = load i32, i32* @XPC_HB_CHECK_CPU, align 4
  %6 = call i32 @cpumask_of(i32 %5)
  %7 = call i32 @set_cpus_allowed_ptr(i32 %4, i32 %6)
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i32, i32* @xpc_hb_check_interval, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %8, %12
  store i64 %13, i64* @xpc_hb_check_timeout, align 8
  %14 = call i32 (...) @xpc_start_hb_beater()
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i64, i64* @xpc_exiting, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load i32, i32* @xpc_part, align 4
  %21 = load i64, i64* @xpc_hb_check_timeout, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = sub nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %26 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  %27 = load i64, i64* @xpc_hb_check_timeout, align 8
  %28 = call i64 @time_is_before_eq_jiffies(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i32, i32* @xpc_hb_check_interval, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  store i64 %36, i64* @xpc_hb_check_timeout, align 8
  %37 = load i32, i32* @xpc_part, align 4
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @xpc_check_remote_hb()
  br label %40

40:                                               ; preds = %30, %19
  %41 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  %47 = load i32, i32* @xpc_part, align 4
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %50 = call i32 (...) %49()
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @xpc_activate_IRQ_wq, align 4
  %53 = load i64, i64* @xpc_hb_check_timeout, align 8
  %54 = call i64 @time_is_before_eq_jiffies(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @xpc_exiting, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %59, %56, %51
  %63 = phi i1 [ true, %56 ], [ true, %51 ], [ %61, %59 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @wait_event_interruptible(i32 %52, i32 %64)
  br label %15

66:                                               ; preds = %15
  %67 = call i32 (...) @xpc_stop_hb_beater()
  %68 = load i32, i32* @xpc_part, align 4
  %69 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @complete(i32* @xpc_hb_checker_exited)
  ret i32 0
}

declare dso_local i32 @set_cpus_allowed_ptr(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @xpc_start_hb_beater(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

declare dso_local i32 @xpc_check_remote_hb(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @xpc_stop_hb_beater(...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
