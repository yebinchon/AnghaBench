; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_prog_set_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_prog_set_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nsim_bpf_bound_prog* }
%struct.nsim_bpf_bound_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*, i32)* @nsim_prog_set_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsim_prog_set_loaded(%struct.bpf_prog* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nsim_bpf_bound_prog*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %7 = icmp ne %struct.bpf_prog* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8, %2
  br label %27

16:                                               ; preds = %8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %22, align 8
  store %struct.nsim_bpf_bound_prog* %23, %struct.nsim_bpf_bound_prog** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %5, align 8
  %26 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
