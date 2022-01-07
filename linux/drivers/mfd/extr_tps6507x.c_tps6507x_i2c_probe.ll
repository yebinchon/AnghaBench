; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6507x.c_tps6507x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6507x.c_tps6507x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps6507x_dev = type { i32*, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps6507x_i2c_read_device = common dso_local global i32 0, align 4
@tps6507x_i2c_write_device = common dso_local global i32 0, align 4
@tps6507x_devs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps6507x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps6507x_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tps6507x_dev* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.tps6507x_dev* %10, %struct.tps6507x_dev** %6, align 8
  %11 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %12 = icmp eq %struct.tps6507x_dev* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.tps6507x_dev* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %23 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %26 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %25, i32 0, i32 3
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load i32, i32* @tps6507x_i2c_read_device, align 4
  %28 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %29 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @tps6507x_i2c_write_device, align 4
  %31 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %32 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %6, align 8
  %34 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @tps6507x_devs, align 4
  %37 = load i32, i32* @tps6507x_devs, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @devm_mfd_add_devices(i32* %35, i32 -1, i32 %36, i32 %38, i32* null, i32 0, i32* null)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %16, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.tps6507x_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps6507x_dev*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
