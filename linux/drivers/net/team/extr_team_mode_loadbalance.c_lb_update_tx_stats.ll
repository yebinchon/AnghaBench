; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_update_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_update_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lb_priv = type { i32 }
%struct.lb_port_priv = type { i32 }
%struct.lb_pcpu_stats = type { i32, %struct.lb_stats* }
%struct.lb_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.lb_priv*, %struct.lb_port_priv*, i8)* @lb_update_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lb_update_tx_stats(i32 %0, %struct.lb_priv* %1, %struct.lb_port_priv* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lb_priv*, align 8
  %7 = alloca %struct.lb_port_priv*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.lb_pcpu_stats*, align 8
  %10 = alloca %struct.lb_stats*, align 8
  %11 = alloca %struct.lb_stats*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.lb_priv* %1, %struct.lb_priv** %6, align 8
  store %struct.lb_port_priv* %2, %struct.lb_port_priv** %7, align 8
  store i8 %3, i8* %8, align 1
  %12 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %13 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @this_cpu_ptr(i32 %14)
  %16 = bitcast i8* %15 to %struct.lb_pcpu_stats*
  store %struct.lb_pcpu_stats* %16, %struct.lb_pcpu_stats** %9, align 8
  %17 = load %struct.lb_port_priv*, %struct.lb_port_priv** %7, align 8
  %18 = getelementptr inbounds %struct.lb_port_priv, %struct.lb_port_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @this_cpu_ptr(i32 %19)
  %21 = bitcast i8* %20 to %struct.lb_stats*
  store %struct.lb_stats* %21, %struct.lb_stats** %10, align 8
  %22 = load %struct.lb_pcpu_stats*, %struct.lb_pcpu_stats** %9, align 8
  %23 = getelementptr inbounds %struct.lb_pcpu_stats, %struct.lb_pcpu_stats* %22, i32 0, i32 1
  %24 = load %struct.lb_stats*, %struct.lb_stats** %23, align 8
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %24, i64 %26
  store %struct.lb_stats* %27, %struct.lb_stats** %11, align 8
  %28 = load %struct.lb_pcpu_stats*, %struct.lb_pcpu_stats** %9, align 8
  %29 = getelementptr inbounds %struct.lb_pcpu_stats, %struct.lb_pcpu_stats* %28, i32 0, i32 0
  %30 = call i32 @u64_stats_update_begin(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.lb_stats*, %struct.lb_stats** %10, align 8
  %33 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.lb_stats*, %struct.lb_stats** %11, align 8
  %38 = getelementptr inbounds %struct.lb_stats, %struct.lb_stats* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.lb_pcpu_stats*, %struct.lb_pcpu_stats** %9, align 8
  %42 = getelementptr inbounds %struct.lb_pcpu_stats, %struct.lb_pcpu_stats* %41, i32 0, i32 0
  %43 = call i32 @u64_stats_update_end(i32* %42)
  ret void
}

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
