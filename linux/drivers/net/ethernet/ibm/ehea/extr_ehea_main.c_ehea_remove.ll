; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ehea_adapter = type { i32, %struct.TYPE_4__*, i32, i32** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EHEA_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehea_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ehea_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ehea_adapter* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ehea_adapter* %6, %struct.ehea_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EHEA_MAX_PORTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %12, i32 0, i32 3
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %21, i32 0, i32 3
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ehea_shutdown_single_port(i32* %27)
  %29 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %20, %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %7

39:                                               ; preds = %7
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = call i32 @ehea_remove_device_sysfs(%struct.platform_device* %40)
  %42 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %49 = call i32 @ibmebus_free_irq(i32 %47, %struct.ehea_adapter* %48)
  %50 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %50, i32 0, i32 2
  %52 = call i32 @tasklet_kill(i32* %51)
  %53 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i32 @ehea_destroy_eq(%struct.TYPE_4__* %55)
  %57 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %58 = call i32 @ehea_remove_adapter_mr(%struct.ehea_adapter* %57)
  %59 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ehea_adapter, %struct.ehea_adapter* %59, i32 0, i32 0
  %61 = call i32 @list_del(i32* %60)
  %62 = call i32 (...) @ehea_update_firmware_handles()
  ret i32 0
}

declare dso_local %struct.ehea_adapter* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ehea_shutdown_single_port(i32*) #1

declare dso_local i32 @ehea_remove_device_sysfs(%struct.platform_device*) #1

declare dso_local i32 @ibmebus_free_irq(i32, %struct.ehea_adapter*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ehea_destroy_eq(%struct.TYPE_4__*) #1

declare dso_local i32 @ehea_remove_adapter_mr(%struct.ehea_adapter*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ehea_update_firmware_handles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
