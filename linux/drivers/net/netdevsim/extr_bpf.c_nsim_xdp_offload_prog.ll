; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_xdp_offload_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_xdp_offload_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i64 }
%struct.netdev_bpf = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"TC program is already loaded\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdevsim*, %struct.netdev_bpf*)* @nsim_xdp_offload_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_xdp_offload_prog(%struct.netdevsim* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netdevsim*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  store %struct.netdevsim* %0, %struct.netdevsim** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %6 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %7 = call i32 @nsim_xdp_offload_active(%struct.netdevsim* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %11 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %44

15:                                               ; preds = %9, %2
  %16 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %17 = call i32 @nsim_xdp_offload_active(%struct.netdevsim* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %21 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %26 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %31 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @NSIM_EA(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %24, %19, %15
  %37 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %38 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %39 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %42 = call i32 @nsim_xdp_offload_active(%struct.netdevsim* %41)
  %43 = call i32 @nsim_bpf_offload(%struct.netdevsim* %37, i64 %40, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %29, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @nsim_xdp_offload_active(%struct.netdevsim*) #1

declare dso_local i32 @NSIM_EA(i32, i8*) #1

declare dso_local i32 @nsim_bpf_offload(%struct.netdevsim*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
