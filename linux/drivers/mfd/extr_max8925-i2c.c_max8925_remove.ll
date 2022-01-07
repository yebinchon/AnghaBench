; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8925-i2c.c_max8925_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max8925_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max8925_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.max8925_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.max8925_chip* %5, %struct.max8925_chip** %3, align 8
  %6 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %7 = call i32 @max8925_device_exit(%struct.max8925_chip* %6)
  %8 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %9 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @i2c_unregister_device(i32 %10)
  %12 = load %struct.max8925_chip*, %struct.max8925_chip** %3, align 8
  %13 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i2c_unregister_device(i32 %14)
  ret i32 0
}

declare dso_local %struct.max8925_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @max8925_device_exit(%struct.max8925_chip*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
