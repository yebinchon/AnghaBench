; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_inactivity_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_inactivity_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i64, i32, i32 }
%struct.timer_list = type { i32 }

@inactivity_timer = common dso_local global i32 0, align 4
@vub300_delete = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@vub300 = common dso_local global %struct.vub300_mmc_host* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vub300_inactivity_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_inactivity_timer_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vub300_mmc_host*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %5 = ptrtoint %struct.vub300_mmc_host* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @inactivity_timer, align 4
  %8 = call %struct.vub300_mmc_host* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.vub300_mmc_host* %8, %struct.vub300_mmc_host** %3, align 8
  %9 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %14, i32 0, i32 2
  %16 = load i32, i32* @vub300_delete, align 4
  %17 = call i32 @kref_put(i32* %15, i32 %16)
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @HZ, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @mod_timer(i32* %25, i64 %28)
  br label %39

30:                                               ; preds = %18
  %31 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %32 = call i32 @vub300_queue_dead_work(%struct.vub300_mmc_host* %31)
  %33 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %33, i32 0, i32 0
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* @HZ, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @mod_timer(i32* %34, i64 %37)
  br label %39

39:                                               ; preds = %30, %23
  br label %40

40:                                               ; preds = %39, %13
  ret void
}

declare dso_local %struct.vub300_mmc_host* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @vub300_queue_dead_work(%struct.vub300_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
