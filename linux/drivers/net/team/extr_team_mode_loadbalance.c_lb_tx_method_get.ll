; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_tx_method_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_tx_method_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.lb_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @lb_tx_method_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_tx_method_get(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_gsetter_ctx*, align 8
  %5 = alloca %struct.lb_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %4, align 8
  %8 = load %struct.team*, %struct.team** %3, align 8
  %9 = call %struct.lb_priv* @get_lb_priv(%struct.team* %8)
  store %struct.lb_priv* %9, %struct.lb_priv** %5, align 8
  %10 = load %struct.lb_priv*, %struct.lb_priv** %5, align 8
  %11 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.team*, %struct.team** %3, align 8
  %14 = getelementptr inbounds %struct.team, %struct.team* %13, i32 0, i32 0
  %15 = call i32 @lockdep_is_held(i32* %14)
  %16 = call i32* @rcu_dereference_protected(i32 %12, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @lb_select_tx_port_get_name(i32* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  ret i32 0
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

declare dso_local i32* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i8* @lb_select_tx_port_get_name(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
