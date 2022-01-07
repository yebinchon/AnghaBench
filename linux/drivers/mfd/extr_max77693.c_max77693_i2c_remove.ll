; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77693.c_max77693_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77693.c_max77693_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max77693_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max77693_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.max77693_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.max77693_dev* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.max77693_dev* %5, %struct.max77693_dev** %3, align 8
  %6 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %7 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mfd_remove_devices(i32 %8)
  %10 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %11 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %14 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_del_irq_chip(i32 %12, i32 %15)
  %17 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %18 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %21 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_del_irq_chip(i32 %19, i32 %22)
  %24 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %25 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %28 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_del_irq_chip(i32 %26, i32 %29)
  %31 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %32 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %35 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regmap_del_irq_chip(i32 %33, i32 %36)
  %38 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %39 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @i2c_unregister_device(i32 %40)
  %42 = load %struct.max77693_dev*, %struct.max77693_dev** %3, align 8
  %43 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i2c_unregister_device(i32 %44)
  ret i32 0
}

declare dso_local %struct.max77693_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
