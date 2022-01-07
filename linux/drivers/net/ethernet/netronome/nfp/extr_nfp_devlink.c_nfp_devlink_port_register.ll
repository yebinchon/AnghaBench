; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_port_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_port_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_eth_table_port = type { i32, i32, i32 }
%struct.devlink = type { i32 }

@DEVLINK_PORT_FLAVOUR_PHYSICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_devlink_port_register(%struct.nfp_app* %0, %struct.nfp_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_port*, align 8
  %6 = alloca %struct.nfp_eth_table_port, align 4
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_port* %1, %struct.nfp_port** %5, align 8
  %11 = call i32 (...) @rtnl_lock()
  %12 = load %struct.nfp_port*, %struct.nfp_port** %5, align 8
  %13 = call i32 @nfp_devlink_fill_eth_port(%struct.nfp_port* %12, %struct.nfp_eth_table_port* %6)
  store i32 %13, i32* %10, align 4
  %14 = call i32 (...) @rtnl_unlock()
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.nfp_port*, %struct.nfp_port** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nfp_cpp_serial(i32 %24, i32** %8)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.nfp_port*, %struct.nfp_port** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %26, i32 0, i32 1
  %28 = load i32, i32* @DEVLINK_PORT_FLAVOUR_PHYSICAL, align 4
  %29 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %6, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @devlink_port_attrs_set(i32* %27, i32 %28, i32 %30, i32 %32, i32 %34, i32* %35, i32 %36)
  %38 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %39 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.devlink* @priv_to_devlink(i32 %40)
  store %struct.devlink* %41, %struct.devlink** %7, align 8
  %42 = load %struct.devlink*, %struct.devlink** %7, align 8
  %43 = load %struct.nfp_port*, %struct.nfp_port** %5, align 8
  %44 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %43, i32 0, i32 1
  %45 = load %struct.nfp_port*, %struct.nfp_port** %5, align 8
  %46 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @devlink_port_register(%struct.devlink* %42, i32* %44, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %19, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nfp_devlink_fill_eth_port(%struct.nfp_port*, %struct.nfp_eth_table_port*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nfp_cpp_serial(i32, i32**) #1

declare dso_local i32 @devlink_port_attrs_set(i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @devlink_port_register(%struct.devlink*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
