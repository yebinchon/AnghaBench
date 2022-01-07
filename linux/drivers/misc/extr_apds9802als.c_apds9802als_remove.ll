; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_apds9802als_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_apds9802als_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.als_data = type { i32 }

@m_als_gr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @apds9802als_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9802als_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.als_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.als_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.als_data* %5, %struct.als_data** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_get_sync(%struct.TYPE_5__* %7)
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = call i32 @als_set_power_state(%struct.i2c_client* %9, i32 0)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @sysfs_remove_group(i32* %13, i32* @m_als_gr)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_disable(%struct.TYPE_5__* %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @pm_runtime_set_suspended(%struct.TYPE_5__* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_put_noidle(%struct.TYPE_5__* %22)
  %24 = load %struct.als_data*, %struct.als_data** %3, align 8
  %25 = call i32 @kfree(%struct.als_data* %24)
  ret i32 0
}

declare dso_local %struct.als_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @als_set_power_state(%struct.i2c_client*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.als_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
