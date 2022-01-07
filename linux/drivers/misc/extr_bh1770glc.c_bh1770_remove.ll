; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.bh1770_chip = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 (...)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@bh1770_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @bh1770_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.bh1770_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.bh1770_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.bh1770_chip* %5, %struct.bh1770_chip** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.bh1770_chip* %9)
  %11 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %12 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @sysfs_remove_group(i32* %15, i32* @bh1770_attribute_group)
  %17 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %18 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = icmp ne i32 (...)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %25 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (...)*, i32 (...)** %27, align 8
  %29 = call i32 (...) %28()
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %32 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %31, i32 0, i32 0
  %33 = call i32 @cancel_delayed_work_sync(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_suspended(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %40 = call i32 @bh1770_chip_off(%struct.bh1770_chip* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_disable(i32* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @pm_runtime_set_suspended(i32* %46)
  ret i32 0
}

declare dso_local %struct.bh1770_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @free_irq(i32, %struct.bh1770_chip*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pm_runtime_suspended(i32*) #1

declare dso_local i32 @bh1770_chip_off(%struct.bh1770_chip*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
