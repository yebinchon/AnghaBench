; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_hash_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_hash_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i8 }
%struct.lb_priv = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @lb_hash_stats_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_hash_stats_get(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_gsetter_ctx*, align 8
  %5 = alloca %struct.lb_priv*, align 8
  %6 = alloca i8, align 1
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %4, align 8
  %7 = load %struct.team*, %struct.team** %3, align 8
  %8 = call %struct.lb_priv* @get_lb_priv(%struct.team* %7)
  store %struct.lb_priv* %8, %struct.lb_priv** %5, align 8
  %9 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %6, align 1
  %14 = load %struct.lb_priv*, %struct.lb_priv** %5, align 8
  %15 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32* %23, i32** %27, align 8
  %28 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  ret i32 0
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
