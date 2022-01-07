; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_xdp_set_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_xdp_set_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i32, i32 }
%struct.netdev_bpf = type { i64, i32 }
%struct.xdp_attachment_info = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@XDP_SETUP_PROG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"driver XDP disabled in DebugFS\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XDP_SETUP_PROG_HW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"XDP offload disabled in DebugFS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdevsim*, %struct.netdev_bpf*, %struct.xdp_attachment_info*)* @nsim_xdp_set_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_xdp_set_prog(%struct.netdevsim* %0, %struct.netdev_bpf* %1, %struct.xdp_attachment_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdevsim*, align 8
  %6 = alloca %struct.netdev_bpf*, align 8
  %7 = alloca %struct.xdp_attachment_info*, align 8
  %8 = alloca i32, align 4
  store %struct.netdevsim* %0, %struct.netdevsim** %5, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %6, align 8
  store %struct.xdp_attachment_info* %2, %struct.xdp_attachment_info** %7, align 8
  %9 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %7, align 8
  %10 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %11 = call i32 @xdp_attachment_flags_ok(%struct.xdp_attachment_info* %9, %struct.netdev_bpf* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %18 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XDP_SETUP_PROG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.netdevsim*, %struct.netdevsim** %5, align 8
  %24 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %29 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @NSIM_EA(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %22, %16
  %35 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %36 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XDP_SETUP_PROG_HW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.netdevsim*, %struct.netdevsim** %5, align 8
  %42 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %47 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @NSIM_EA(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %71

52:                                               ; preds = %40, %34
  %53 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %54 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XDP_SETUP_PROG_HW, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.netdevsim*, %struct.netdevsim** %5, align 8
  %60 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %61 = call i32 @nsim_xdp_offload_prog(%struct.netdevsim* %59, %struct.netdev_bpf* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %71

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.xdp_attachment_info*, %struct.xdp_attachment_info** %7, align 8
  %69 = load %struct.netdev_bpf*, %struct.netdev_bpf** %6, align 8
  %70 = call i32 @xdp_attachment_setup(%struct.xdp_attachment_info* %68, %struct.netdev_bpf* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %64, %45, %27, %13
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @xdp_attachment_flags_ok(%struct.xdp_attachment_info*, %struct.netdev_bpf*) #1

declare dso_local i32 @NSIM_EA(i32, i8*) #1

declare dso_local i32 @nsim_xdp_offload_prog(%struct.netdevsim*, %struct.netdev_bpf*) #1

declare dso_local i32 @xdp_attachment_setup(%struct.xdp_attachment_info*, %struct.netdev_bpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
