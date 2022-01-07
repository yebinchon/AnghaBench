; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.apds990x_chip = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (...)* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@apds990x_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @apds990x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.apds990x_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.apds990x_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.apds990x_chip* %5, %struct.apds990x_chip** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.apds990x_chip* %9)
  %11 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %12 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* @apds990x_attribute_group, align 4
  %17 = call i32 @sysfs_remove_group(i32* %15, i32 %16)
  %18 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %19 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %24 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = icmp ne i32 (...)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %31 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  br label %36

36:                                               ; preds = %29, %22, %1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @pm_runtime_suspended(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %43 = call i32 @apds990x_chip_off(%struct.apds990x_chip* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @pm_runtime_disable(i32* %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @pm_runtime_set_suspended(i32* %49)
  %51 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %52 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %56 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regulator_bulk_free(i32 %54, i32 %57)
  %59 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %60 = call i32 @kfree(%struct.apds990x_chip* %59)
  ret i32 0
}

declare dso_local %struct.apds990x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i32, %struct.apds990x_chip*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32) #1

declare dso_local i32 @pm_runtime_suspended(i32*) #1

declare dso_local i32 @apds990x_chip_off(%struct.apds990x_chip*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @regulator_bulk_free(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kfree(%struct.apds990x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
