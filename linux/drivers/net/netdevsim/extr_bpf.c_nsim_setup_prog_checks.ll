; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_setup_prog_checks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_setup_prog_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.netdev_bpf = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"attempt to load offloaded prog to drv\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSIM_XDP_MAX_MTU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"MTU too large w/ XDP enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdevsim*, %struct.netdev_bpf*)* @nsim_setup_prog_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_setup_prog_checks(%struct.netdevsim* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netdevsim*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  store %struct.netdevsim* %0, %struct.netdevsim** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %6 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %7 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %12 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %21 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @NSIM_EA(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %42

26:                                               ; preds = %10, %2
  %27 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %28 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NSIM_XDP_MAX_MTU, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %36 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @NSIM_EA(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @NSIM_EA(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
