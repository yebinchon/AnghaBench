; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max14577.c_max14577_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max14577.c_max14577_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max14577 = type { i64, i32, i32, i32 }

@MAXIM_DEVICE_TYPE_MAX77836 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max14577_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.max14577*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.max14577* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.max14577* %5, %struct.max14577** %3, align 8
  %6 = load %struct.max14577*, %struct.max14577** %3, align 8
  %7 = getelementptr inbounds %struct.max14577, %struct.max14577* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @mfd_remove_devices(i32 %8)
  %10 = load %struct.max14577*, %struct.max14577** %3, align 8
  %11 = getelementptr inbounds %struct.max14577, %struct.max14577* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.max14577*, %struct.max14577** %3, align 8
  %14 = getelementptr inbounds %struct.max14577, %struct.max14577* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @regmap_del_irq_chip(i32 %12, i32 %15)
  %17 = load %struct.max14577*, %struct.max14577** %3, align 8
  %18 = getelementptr inbounds %struct.max14577, %struct.max14577* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAXIM_DEVICE_TYPE_MAX77836, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.max14577*, %struct.max14577** %3, align 8
  %24 = call i32 @max77836_remove(%struct.max14577* %23)
  br label %25

25:                                               ; preds = %22, %1
  ret i32 0
}

declare dso_local %struct.max14577* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @max77836_remove(%struct.max14577*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
