; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_create_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_create_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.file = type { i32 }
%struct.ppp_config = type { i32, i32, %struct.file* }
%struct.net_device = type { i32* }
%struct.ppp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NET_NAME_ENUM = common dso_local global i32 0, align 4
@ppp_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ppp_link_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.file*, i32*)* @ppp_create_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_create_interface(%struct.net* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ppp_config, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ppp*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = getelementptr inbounds %struct.ppp_config, %struct.ppp_config* %8, i32 0, i32 0
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.ppp_config, %struct.ppp_config* %8, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.ppp_config, %struct.ppp_config* %8, i32 0, i32 2
  %17 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %17, %struct.file** %16, align 8
  %18 = load i32, i32* @NET_NAME_ENUM, align 4
  %19 = load i32, i32* @ppp_setup, align 4
  %20 = call %struct.net_device* @alloc_netdev(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = call i32 @dev_net_set(%struct.net_device* %27, %struct.net* %28)
  %30 = load %struct.net_device*, %struct.net_device** %9, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store i32* @ppp_link_ops, i32** %31, align 8
  %32 = call i32 (...) @rtnl_lock()
  %33 = load %struct.net*, %struct.net** %5, align 8
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = call i32 @ppp_dev_configure(%struct.net* %33, %struct.net_device* %34, %struct.ppp_config* %8)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %48

39:                                               ; preds = %26
  %40 = load %struct.net_device*, %struct.net_device** %9, align 8
  %41 = call %struct.ppp* @netdev_priv(%struct.net_device* %40)
  store %struct.ppp* %41, %struct.ppp** %10, align 8
  %42 = load %struct.ppp*, %struct.ppp** %10, align 8
  %43 = getelementptr inbounds %struct.ppp, %struct.ppp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %4, align 4
  br label %54

48:                                               ; preds = %38
  %49 = call i32 (...) @rtnl_unlock()
  %50 = load %struct.net_device*, %struct.net_device** %9, align 8
  %51 = call i32 @free_netdev(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %48, %23
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %39
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ppp_dev_configure(%struct.net*, %struct.net_device*, %struct.ppp_config*) #1

declare dso_local %struct.ppp* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
