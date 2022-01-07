; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c___nsim_dev_port_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c___nsim_dev_port_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nsim_dev_port = type { i32, i32, %struct.TYPE_6__*, %struct.devlink_port }
%struct.TYPE_6__ = type { i32 }
%struct.devlink_port = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_PORT_FLAVOUR_PHYSICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsim_dev*, i32)* @__nsim_dev_port_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nsim_dev_port_add(%struct.nsim_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsim_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nsim_dev_port*, align 8
  %7 = alloca %struct.devlink_port*, align 8
  %8 = alloca i32, align 4
  store %struct.nsim_dev* %0, %struct.nsim_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nsim_dev_port* @kzalloc(i32 24, i32 %9)
  store %struct.nsim_dev_port* %10, %struct.nsim_dev_port** %6, align 8
  %11 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %12 = icmp ne %struct.nsim_dev_port* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %19 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %21 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %20, i32 0, i32 3
  store %struct.devlink_port* %21, %struct.devlink_port** %7, align 8
  %22 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %23 = load i32, i32* @DEVLINK_PORT_FLAVOUR_PHYSICAL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  %26 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %27 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %31 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @devlink_port_attrs_set(%struct.devlink_port* %22, i32 %23, i32 %25, i32 0, i32 0, i32 %29, i32 %33)
  %35 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %36 = call i32 @priv_to_devlink(%struct.nsim_dev* %35)
  %37 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @devlink_port_register(i32 %36, %struct.devlink_port* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %16
  br label %85

43:                                               ; preds = %16
  %44 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %45 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %46 = call i32 @nsim_dev_port_debugfs_init(%struct.nsim_dev* %44, %struct.nsim_dev_port* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %82

50:                                               ; preds = %43
  %51 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %52 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %53 = call %struct.TYPE_6__* @nsim_create(%struct.nsim_dev* %51, %struct.nsim_dev_port* %52)
  %54 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %55 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %54, i32 0, i32 2
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %57 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i64 @IS_ERR(%struct.TYPE_6__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %63 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.TYPE_6__* %64)
  store i32 %65, i32* %8, align 4
  br label %79

66:                                               ; preds = %50
  %67 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %68 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %69 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @devlink_port_type_eth_set(%struct.devlink_port* %67, i32 %72)
  %74 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %75 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %74, i32 0, i32 1
  %76 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %77 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %76, i32 0, i32 0
  %78 = call i32 @list_add(i32* %75, i32* %77)
  store i32 0, i32* %3, align 4
  br label %89

79:                                               ; preds = %61
  %80 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %81 = call i32 @nsim_dev_port_debugfs_exit(%struct.nsim_dev_port* %80)
  br label %82

82:                                               ; preds = %79, %49
  %83 = load %struct.devlink_port*, %struct.devlink_port** %7, align 8
  %84 = call i32 @devlink_port_unregister(%struct.devlink_port* %83)
  br label %85

85:                                               ; preds = %82, %42
  %86 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %87 = call i32 @kfree(%struct.nsim_dev_port* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %66, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.nsim_dev_port* @kzalloc(i32, i32) #1

declare dso_local i32 @devlink_port_attrs_set(%struct.devlink_port*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @devlink_port_register(i32, %struct.devlink_port*, i32) #1

declare dso_local i32 @priv_to_devlink(%struct.nsim_dev*) #1

declare dso_local i32 @nsim_dev_port_debugfs_init(%struct.nsim_dev*, %struct.nsim_dev_port*) #1

declare dso_local %struct.TYPE_6__* @nsim_create(%struct.nsim_dev*, %struct.nsim_dev_port*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @devlink_port_type_eth_set(%struct.devlink_port*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nsim_dev_port_debugfs_exit(%struct.nsim_dev_port*) #1

declare dso_local i32 @devlink_port_unregister(%struct.devlink_port*) #1

declare dso_local i32 @kfree(%struct.nsim_dev_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
