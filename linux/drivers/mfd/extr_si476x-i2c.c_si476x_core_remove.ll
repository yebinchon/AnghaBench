; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.si476x_core = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @si476x_core_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.si476x_core*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.si476x_core* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.si476x_core* %5, %struct.si476x_core** %3, align 8
  %6 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %7 = call i32 @si476x_core_pronounce_dead(%struct.si476x_core* %6)
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = call i32 @mfd_remove_devices(i32* %9)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @disable_irq(i64 %18)
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %22 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %21, i32 0, i32 2
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %26 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %25, i32 0, i32 1
  %27 = call i32 @kfifo_free(i32* %26)
  %28 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %29 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @gpio_is_valid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %35 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpio_free(i32 %36)
  br label %38

38:                                               ; preds = %33, %24
  ret i32 0
}

declare dso_local %struct.si476x_core* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @si476x_core_pronounce_dead(%struct.si476x_core*) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
