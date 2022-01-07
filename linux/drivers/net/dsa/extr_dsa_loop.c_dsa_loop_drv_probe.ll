; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_dsa_loop.c_dsa_loop_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_dsa_loop.c_dsa_loop_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.dsa_loop_pdata* }
%struct.dsa_loop_pdata = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32** }
%struct.dsa_loop_priv = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.dsa_switch = type { %struct.dsa_loop_priv*, i32*, %struct.TYPE_8__* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s: 0x%0x\0A\00", align 1
@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@DSA_LOOP_CPU_PORT = common dso_local global i64 0, align 8
@dsa_loop_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @dsa_loop_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_loop_drv_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.dsa_loop_pdata*, align 8
  %5 = alloca %struct.dsa_loop_priv*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %7 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %8 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.dsa_loop_pdata*, %struct.dsa_loop_pdata** %9, align 8
  store %struct.dsa_loop_pdata* %10, %struct.dsa_loop_pdata** %4, align 8
  %11 = load %struct.dsa_loop_pdata*, %struct.dsa_loop_pdata** %4, align 8
  %12 = icmp ne %struct.dsa_loop_pdata* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %18 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %17, i32 0, i32 0
  %19 = load %struct.dsa_loop_pdata*, %struct.dsa_loop_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.dsa_loop_pdata, %struct.dsa_loop_pdata* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dsa_loop_pdata*, %struct.dsa_loop_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.dsa_loop_pdata, %struct.dsa_loop_pdata* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_info(%struct.TYPE_8__* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %27 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %26, i32 0, i32 0
  %28 = load i32, i32* @DSA_MAX_PORTS, align 4
  %29 = call %struct.dsa_switch* @dsa_switch_alloc(%struct.TYPE_8__* %27, i32 %28)
  store %struct.dsa_switch* %29, %struct.dsa_switch** %6, align 8
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %31 = icmp ne %struct.dsa_switch* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %16
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %90

35:                                               ; preds = %16
  %36 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %37 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.dsa_loop_priv* @devm_kzalloc(%struct.TYPE_8__* %37, i32 16, i32 %38)
  store %struct.dsa_loop_priv* %39, %struct.dsa_loop_priv** %5, align 8
  %40 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %5, align 8
  %41 = icmp ne %struct.dsa_loop_priv* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %90

45:                                               ; preds = %35
  %46 = load %struct.dsa_loop_pdata*, %struct.dsa_loop_pdata** %4, align 8
  %47 = getelementptr inbounds %struct.dsa_loop_pdata, %struct.dsa_loop_pdata* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_9__* @dev_get_by_name(i32* @init_net, i32 %48)
  %50 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %5, align 8
  %51 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %50, i32 0, i32 1
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %5, align 8
  %53 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %90

59:                                               ; preds = %45
  %60 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %5, align 8
  %61 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.dsa_loop_pdata*, %struct.dsa_loop_pdata** %4, align 8
  %65 = getelementptr inbounds %struct.dsa_loop_pdata, %struct.dsa_loop_pdata* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @DSA_LOOP_CPU_PORT, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  store i32* %63, i32** %69, align 8
  %70 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %71 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %70, i32 0, i32 0
  %72 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %73 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %72, i32 0, i32 2
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %75 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %74, i32 0, i32 1
  store i32* @dsa_loop_driver, i32** %75, align 8
  %76 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %5, align 8
  %77 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %78 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %77, i32 0, i32 0
  store %struct.dsa_loop_priv* %76, %struct.dsa_loop_priv** %78, align 8
  %79 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %80 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.dsa_loop_priv*, %struct.dsa_loop_priv** %5, align 8
  %83 = getelementptr inbounds %struct.dsa_loop_priv, %struct.dsa_loop_priv* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %85 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %84, i32 0, i32 0
  %86 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %87 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %85, %struct.dsa_switch* %86)
  %88 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %89 = call i32 @dsa_register_switch(%struct.dsa_switch* %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %59, %56, %42, %32, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local %struct.dsa_switch* @dsa_switch_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.dsa_loop_priv* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @dev_get_by_name(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.dsa_switch*) #1

declare dso_local i32 @dsa_register_switch(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
