; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_bpf_func_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_bpf_func_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.lb_priv = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.sock_fprog_kern* }
%struct.sock_fprog_kern = type { i32 }
%struct.bpf_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.team*, %struct.team_gsetter_ctx*)* @lb_bpf_func_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb_bpf_func_set(%struct.team* %0, %struct.team_gsetter_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.team*, align 8
  %5 = alloca %struct.team_gsetter_ctx*, align 8
  %6 = alloca %struct.lb_priv*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca %struct.sock_fprog_kern*, align 8
  %10 = alloca i32, align 4
  store %struct.team* %0, %struct.team** %4, align 8
  store %struct.team_gsetter_ctx* %1, %struct.team_gsetter_ctx** %5, align 8
  %11 = load %struct.team*, %struct.team** %4, align 8
  %12 = call %struct.lb_priv* @get_lb_priv(%struct.team* %11)
  store %struct.lb_priv* %12, %struct.lb_priv** %6, align 8
  store %struct.bpf_prog* null, %struct.bpf_prog** %7, align 8
  store %struct.bpf_prog* null, %struct.bpf_prog** %8, align 8
  store %struct.sock_fprog_kern* null, %struct.sock_fprog_kern** %9, align 8
  %13 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  %20 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.team_gsetter_ctx*, %struct.team_gsetter_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__fprog_create(%struct.sock_fprog_kern** %9, i32 %24, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %19
  %36 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %9, align 8
  %37 = call i32 @bpf_prog_create(%struct.bpf_prog** %7, %struct.sock_fprog_kern* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %9, align 8
  %42 = call i32 @__fprog_destroy(%struct.sock_fprog_kern* %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %3, align 4
  br label %84

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %47 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %49, align 8
  %51 = icmp ne %struct.sock_fprog_kern* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %54 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %56, align 8
  %58 = call i32 @__fprog_destroy(%struct.sock_fprog_kern* %57)
  %59 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %60 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.team*, %struct.team** %4, align 8
  %63 = getelementptr inbounds %struct.team, %struct.team* %62, i32 0, i32 0
  %64 = call i32 @lockdep_is_held(i32* %63)
  %65 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %61, i32 %64)
  store %struct.bpf_prog* %65, %struct.bpf_prog** %8, align 8
  br label %66

66:                                               ; preds = %52, %45
  %67 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %68 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %71 = call i32 @rcu_assign_pointer(i32 %69, %struct.bpf_prog* %70)
  %72 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %9, align 8
  %73 = load %struct.lb_priv*, %struct.lb_priv** %6, align 8
  %74 = getelementptr inbounds %struct.lb_priv, %struct.lb_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store %struct.sock_fprog_kern* %72, %struct.sock_fprog_kern** %76, align 8
  %77 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %78 = icmp ne %struct.bpf_prog* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = call i32 (...) @synchronize_rcu()
  %81 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %82 = call i32 @bpf_prog_destroy(%struct.bpf_prog* %81)
  br label %83

83:                                               ; preds = %79, %66
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %40, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.lb_priv* @get_lb_priv(%struct.team*) #1

declare dso_local i32 @__fprog_create(%struct.sock_fprog_kern**, i32, i32) #1

declare dso_local i32 @bpf_prog_create(%struct.bpf_prog**, %struct.sock_fprog_kern*) #1

declare dso_local i32 @__fprog_destroy(%struct.sock_fprog_kern*) #1

declare dso_local %struct.bpf_prog* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @bpf_prog_destroy(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
