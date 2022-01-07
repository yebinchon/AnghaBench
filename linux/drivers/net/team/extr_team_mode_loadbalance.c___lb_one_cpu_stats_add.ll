; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c___lb_one_cpu_stats_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c___lb_one_cpu_stats_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lb_stats = type { i64 }
%struct.u64_stats_sync = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lb_stats*, %struct.lb_stats*, %struct.u64_stats_sync*)* @__lb_one_cpu_stats_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lb_one_cpu_stats_add(%struct.lb_stats* %0, %struct.lb_stats* %1, %struct.u64_stats_sync* %2) #0 {
  %4 = alloca %struct.lb_stats*, align 8
  %5 = alloca %struct.lb_stats*, align 8
  %6 = alloca %struct.u64_stats_sync*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lb_stats, align 8
  store %struct.lb_stats* %0, %struct.lb_stats** %4, align 8
  store %struct.lb_stats* %1, %struct.lb_stats** %5, align 8
  store %struct.u64_stats_sync* %2, %struct.u64_stats_sync** %6, align 8
  br label %9

9:                                                ; preds = %16, %3
  %10 = load %struct.u64_stats_sync*, %struct.u64_stats_sync** %6, align 8
  %11 = call i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.lb_stats*, %struct.lb_stats** %5, align 8
  %13 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %8, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %9
  %17 = load %struct.u64_stats_sync*, %struct.u64_stats_sync** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.lb_stats*, %struct.lb_stats** %4, align 8
  %25 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  ret void
}

declare dso_local i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
