; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_setup_prog_hw_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_setup_prog_hw_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i32 }
%struct.netdev_bpf = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nsim_bpf_bound_prog* }
%struct.nsim_bpf_bound_prog = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"xdpoffload of non-bound program\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"program bound to different dev\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"xlated\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"offloading program in bad state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdevsim*, %struct.netdev_bpf*)* @nsim_setup_prog_hw_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_setup_prog_hw_checks(%struct.netdevsim* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netdevsim*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.nsim_bpf_bound_prog*, align 8
  store %struct.netdevsim* %0, %struct.netdevsim** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %7 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %8 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

12:                                               ; preds = %2
  %13 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %14 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %23 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @NSIM_EA(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %12
  %29 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %30 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %33 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bpf_offload_dev_match(%struct.TYPE_6__* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %39 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @NSIM_EA(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %28
  %45 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %46 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %52, align 8
  store %struct.nsim_bpf_bound_prog* %53, %struct.nsim_bpf_bound_prog** %6, align 8
  %54 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %55 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %44
  %61 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %62 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @NSIM_EA(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %60, %37, %21, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @NSIM_EA(i32, i8*) #1

declare dso_local i32 @bpf_offload_dev_match(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
