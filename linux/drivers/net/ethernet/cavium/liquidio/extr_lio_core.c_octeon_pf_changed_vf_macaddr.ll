; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_pf_changed_vf_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_octeon_pf_changed_vf_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32* }
%struct.lio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"PF changed VF's MAC address to %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_pf_changed_vf_macaddr(%struct.octeon_device* %0, i32* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lio*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @rtnl_lock()
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.lio* @GET_LIO(%struct.net_device* %15)
  store %struct.lio* %16, %struct.lio** %7, align 8
  %17 = load %struct.lio*, %struct.lio** %7, align 8
  %18 = getelementptr inbounds %struct.lio, %struct.lio* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ether_addr_equal(i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ether_addr_copy(i32* %29, i32* %30)
  %32 = load %struct.lio*, %struct.lio** %7, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ether_addr_copy(i32* %35, i32* %36)
  %38 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call i32 @call_netdevice_notifiers(i32 %38, %struct.net_device* %39)
  br label %41

41:                                               ; preds = %26, %2
  %42 = call i32 (...) @rtnl_unlock()
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %50)
  br label %52

52:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
