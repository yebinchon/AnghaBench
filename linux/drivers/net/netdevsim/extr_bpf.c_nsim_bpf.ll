; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32, i32 }
%struct.netdevsim = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_bpf(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.netdevsim*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.netdevsim* @netdev_priv(%struct.net_device* %8)
  store %struct.netdevsim* %9, %struct.netdevsim** %6, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %12 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %71 [
    i32 131, label %14
    i32 130, label %19
    i32 129, label %24
    i32 128, label %38
    i32 133, label %52
    i32 132, label %66
  ]

14:                                               ; preds = %2
  %15 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %16 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %15, i32 0, i32 2
  %17 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %18 = call i32 @xdp_attachment_query(i32* %16, %struct.netdev_bpf* %17)
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %21 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %20, i32 0, i32 1
  %22 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %23 = call i32 @xdp_attachment_query(i32* %21, %struct.netdev_bpf* %22)
  store i32 %23, i32* %3, align 4
  br label %74

24:                                               ; preds = %2
  %25 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %26 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %27 = call i32 @nsim_setup_prog_checks(%struct.netdevsim* %25, %struct.netdev_bpf* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %74

32:                                               ; preds = %24
  %33 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %34 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %35 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %36 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %35, i32 0, i32 2
  %37 = call i32 @nsim_xdp_set_prog(%struct.netdevsim* %33, %struct.netdev_bpf* %34, i32* %36)
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %2
  %39 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %40 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %41 = call i32 @nsim_setup_prog_hw_checks(%struct.netdevsim* %39, %struct.netdev_bpf* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %74

46:                                               ; preds = %38
  %47 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %48 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %49 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %50 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %49, i32 0, i32 1
  %51 = call i32 @nsim_xdp_set_prog(%struct.netdevsim* %47, %struct.netdev_bpf* %48, i32* %50)
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %2
  %53 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %54 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %74

60:                                               ; preds = %52
  %61 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %62 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %63 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nsim_bpf_map_alloc(%struct.netdevsim* %61, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %74

66:                                               ; preds = %2
  %67 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %68 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nsim_bpf_map_free(i32 %69)
  store i32 0, i32* %3, align 4
  br label %74

71:                                               ; preds = %2
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %66, %60, %57, %46, %44, %32, %30, %19, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.netdevsim* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @xdp_attachment_query(i32*, %struct.netdev_bpf*) #1

declare dso_local i32 @nsim_setup_prog_checks(%struct.netdevsim*, %struct.netdev_bpf*) #1

declare dso_local i32 @nsim_xdp_set_prog(%struct.netdevsim*, %struct.netdev_bpf*, i32*) #1

declare dso_local i32 @nsim_setup_prog_hw_checks(%struct.netdevsim*, %struct.netdev_bpf*) #1

declare dso_local i32 @nsim_bpf_map_alloc(%struct.netdevsim*, i32) #1

declare dso_local i32 @nsim_bpf_map_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
