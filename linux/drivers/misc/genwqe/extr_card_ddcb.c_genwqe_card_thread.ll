; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_card_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_card_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32, i32 }

@GENWQE_POLLING_ENABLED = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @genwqe_card_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_card_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.genwqe_dev*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.genwqe_dev*
  store %struct.genwqe_dev* %7, %struct.genwqe_dev** %5, align 8
  br label %8

8:                                                ; preds = %52, %1
  %9 = call i32 (...) @kthread_should_stop()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %14 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %15 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %14, i32 0, i32 1
  %16 = call i32 @genwqe_check_ddcb_queue(%struct.genwqe_dev* %13, i32* %15)
  %17 = load i64, i64* @GENWQE_POLLING_ENABLED, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %21 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %24 = call i64 @genwqe_ddcbs_in_flight(%struct.genwqe_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = call i32 (...) @kthread_should_stop()
  store i32 %27, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i1 [ true, %19 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @wait_event_interruptible_timeout(i32 %22, i32 %31, i32 1)
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %12
  %34 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %35 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %38 = call i64 @genwqe_next_ddcb_ready(%struct.genwqe_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = call i32 (...) @kthread_should_stop()
  store i32 %41, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i1 [ true, %33 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @HZ, align 4
  %47 = call i32 @wait_event_interruptible_timeout(i32 %36, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %29
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @cond_resched()
  br label %8

54:                                               ; preds = %51, %8
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @genwqe_check_ddcb_queue(%struct.genwqe_dev*, i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @genwqe_ddcbs_in_flight(%struct.genwqe_dev*) #1

declare dso_local i64 @genwqe_next_ddcb_ready(%struct.genwqe_dev*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
