; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_bpf_func_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_bpf_func_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.lb_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*)* @lb_bpf_func_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lb_bpf_func_free(%struct.team* %0) #0 {
  %2 = alloca %struct.team*, align 8
  %3 = alloca %struct.lb_priv*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  store %struct.team* %0, %struct.team** %2, align 8
  %5 = load %struct.team*, %struct.team** %2, align 8
  %6 = call %struct.lb_priv* @get_lb_priv(%struct.team* %5)
  store %struct.lb_priv* %6, %struct.lb_priv** %3, align 8
  %7 = load %struct.lb_priv*, %struct.lb_priv** %3, align 8
  %8 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.lb_priv*, %struct.lb_priv** %3, align 8
  %16 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__fprog_destroy(i32 %19)
  %21 = load %struct.lb_priv*, %struct.lb_priv** %3, align 8
  %22 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.team*, %struct.team** %2, align 8
  %25 = getelementptr inbounds %struct.team, %struct.team* %24, i32 0, i32 0
  %26 = call i32 @lockdep_is_held(i32* %25)
  %27 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %23, i32 %26)
  store %struct.bpf_prog* %27, %struct.bpf_prog** %4, align 8
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %29 = call i32 @bpf_prog_destroy(%struct.bpf_prog* %28)
  br label %30

30:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

declare dso_local i32 @__fprog_destroy(i32) #1

declare dso_local %struct.bpf_prog* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @bpf_prog_destroy(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
