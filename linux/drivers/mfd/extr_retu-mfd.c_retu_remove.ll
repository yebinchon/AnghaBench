; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_retu-mfd.c_retu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_retu-mfd.c_retu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retu_dev = type { i32, i32 }
%struct.i2c_client = type { i32 }

@retu_pm_power_off = common dso_local global %struct.retu_dev* null, align 8
@pm_power_off = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @retu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retu_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.retu_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.retu_dev* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.retu_dev* %5, %struct.retu_dev** %3, align 8
  %6 = load %struct.retu_dev*, %struct.retu_dev** @retu_pm_power_off, align 8
  %7 = load %struct.retu_dev*, %struct.retu_dev** %3, align 8
  %8 = icmp eq %struct.retu_dev* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** @pm_power_off, align 8
  store %struct.retu_dev* null, %struct.retu_dev** @retu_pm_power_off, align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.retu_dev*, %struct.retu_dev** %3, align 8
  %12 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mfd_remove_devices(i32 %13)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.retu_dev*, %struct.retu_dev** %3, align 8
  %19 = getelementptr inbounds %struct.retu_dev, %struct.retu_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_del_irq_chip(i32 %17, i32 %20)
  ret i32 0
}

declare dso_local %struct.retu_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
