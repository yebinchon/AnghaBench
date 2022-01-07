; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_netdev.c_nsim_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_netdev.c_nsim_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { %struct.TYPE_2__*, %struct.nsim_dev_port*, %struct.nsim_dev*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32* }
%struct.nsim_dev = type { %struct.TYPE_2__* }
%struct.nsim_dev_port = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@nsim_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nsim_netdev_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netdevsim* @nsim_create(%struct.nsim_dev* %0, %struct.nsim_dev_port* %1) #0 {
  %3 = alloca %struct.netdevsim*, align 8
  %4 = alloca %struct.nsim_dev*, align 8
  %5 = alloca %struct.nsim_dev_port*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdevsim*, align 8
  %8 = alloca i32, align 4
  store %struct.nsim_dev* %0, %struct.nsim_dev** %4, align 8
  store %struct.nsim_dev_port* %1, %struct.nsim_dev_port** %5, align 8
  %9 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %10 = load i32, i32* @nsim_setup, align 4
  %11 = call %struct.net_device* @alloc_netdev(i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.netdevsim* @ERR_PTR(i32 %16)
  store %struct.netdevsim* %17, %struct.netdevsim** %3, align 8
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.netdevsim* @netdev_priv(%struct.net_device* %19)
  store %struct.netdevsim* %20, %struct.netdevsim** %7, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %23 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %22, i32 0, i32 3
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %25 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %26 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %25, i32 0, i32 2
  store %struct.nsim_dev* %24, %struct.nsim_dev** %26, align 8
  %27 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %5, align 8
  %28 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %29 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %28, i32 0, i32 1
  store %struct.nsim_dev_port* %27, %struct.nsim_dev_port** %29, align 8
  %30 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %31 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %34 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %33, i32 0, i32 0
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %37 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @SET_NETDEV_DEV(%struct.net_device* %35, i32* %39)
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  store i32* @nsim_netdev_ops, i32** %42, align 8
  %43 = call i32 (...) @rtnl_lock()
  %44 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %45 = call i32 @nsim_bpf_init(%struct.netdevsim* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %18
  br label %66

49:                                               ; preds = %18
  %50 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %51 = call i32 @nsim_ipsec_init(%struct.netdevsim* %50)
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = call i32 @register_netdevice(%struct.net_device* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %60

57:                                               ; preds = %49
  %58 = call i32 (...) @rtnl_unlock()
  %59 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  store %struct.netdevsim* %59, %struct.netdevsim** %3, align 8
  br label %71

60:                                               ; preds = %56
  %61 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %62 = call i32 @nsim_ipsec_teardown(%struct.netdevsim* %61)
  %63 = load %struct.netdevsim*, %struct.netdevsim** %7, align 8
  %64 = call i32 @nsim_bpf_uninit(%struct.netdevsim* %63)
  %65 = call i32 (...) @rtnl_unlock()
  br label %66

66:                                               ; preds = %60, %48
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @free_netdev(%struct.net_device* %67)
  %69 = load i32, i32* %8, align 4
  %70 = call %struct.netdevsim* @ERR_PTR(i32 %69)
  store %struct.netdevsim* %70, %struct.netdevsim** %3, align 8
  br label %71

71:                                               ; preds = %66, %57, %14
  %72 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  ret %struct.netdevsim* %72
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.netdevsim* @ERR_PTR(i32) #1

declare dso_local %struct.netdevsim* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nsim_bpf_init(%struct.netdevsim*) #1

declare dso_local i32 @nsim_ipsec_init(%struct.netdevsim*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nsim_ipsec_teardown(%struct.netdevsim*) #1

declare dso_local i32 @nsim_bpf_uninit(%struct.netdevsim*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
