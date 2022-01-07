; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___do_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32, i32, i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*)* @__do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_poll(%struct.vub300_mmc_host* %0) #0 {
  %2 = alloca %struct.vub300_mmc_host*, align 8
  %3 = alloca i64, align 8
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %2, align 8
  %4 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %4, i32 0, i32 5
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @HZ, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @mod_timer(i32* %5, i64 %8)
  %10 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %10, i32 0, i32 4
  %12 = call i32 @init_completion(i32* %11)
  %13 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %14 = call i32 @send_irqpoll(%struct.vub300_mmc_host* %13)
  %15 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %15, i32 0, i32 4
  %17 = call i32 @msecs_to_jiffies(i32 500)
  %18 = call i64 @wait_for_completion_timeout(i32* %16, i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %42

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %31 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_kill_urb(i32 %32)
  %34 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_kill_urb(i32 %36)
  br label %41

38:                                               ; preds = %24
  %39 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %40 = call i32 @__vub300_irqpoll_response(%struct.vub300_mmc_host* %39)
  br label %41

41:                                               ; preds = %38, %27
  br label %42

42:                                               ; preds = %41, %23
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @send_irqpoll(%struct.vub300_mmc_host*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @__vub300_irqpoll_response(%struct.vub300_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
