; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_destroy_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_destroy_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nsim_bpf_bound_prog* }
%struct.nsim_bpf_bound_prog = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"offload state destroyed while program still bound\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*)* @nsim_bpf_destroy_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsim_bpf_destroy_prog(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.nsim_bpf_bound_prog*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %2, align 8
  %4 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %5 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %9, align 8
  store %struct.nsim_bpf_bound_prog* %10, %struct.nsim_bpf_bound_prog** %3, align 8
  %11 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %3, align 8
  %12 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @WARN(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %3, align 8
  %16 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @debugfs_remove_recursive(i32 %17)
  %19 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %3, align 8
  %20 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %3, align 8
  %23 = call i32 @kfree(%struct.nsim_bpf_bound_prog* %22)
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nsim_bpf_bound_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
