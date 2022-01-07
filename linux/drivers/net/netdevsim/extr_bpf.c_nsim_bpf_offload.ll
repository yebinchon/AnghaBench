; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i32, %struct.bpf_prog* }
%struct.bpf_prog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"bad offload state, expected offload %sto be active\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdevsim*, %struct.bpf_prog*, i32)* @nsim_bpf_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_bpf_offload(%struct.netdevsim* %0, %struct.bpf_prog* %1, i32 %2) #0 {
  %4 = alloca %struct.netdevsim*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  store %struct.netdevsim* %0, %struct.netdevsim** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %8 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %7, i32 0, i32 1
  %9 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %10 = call i32 @nsim_prog_set_loaded(%struct.bpf_prog* %9, i32 0)
  %11 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %12 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %11, i32 0, i32 1
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %12, align 8
  %14 = icmp ne %struct.bpf_prog* %13, null
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @WARN(i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %27 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %28 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %27, i32 0, i32 1
  store %struct.bpf_prog* %26, %struct.bpf_prog** %28, align 8
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %30 = icmp ne %struct.bpf_prog* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %33 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %36, %31 ], [ 0, %37 ]
  %40 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %41 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %43 = call i32 @nsim_prog_set_loaded(%struct.bpf_prog* %42, i32 1)
  ret i32 0
}

declare dso_local i32 @nsim_prog_set_loaded(%struct.bpf_prog*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
