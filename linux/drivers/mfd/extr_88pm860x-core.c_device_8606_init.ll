; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_8606_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_8606_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_chip = type { i32 }
%struct.i2c_client = type { i32 }
%struct.pm860x_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_chip*, %struct.i2c_client*, %struct.pm860x_platform_data*)* @device_8606_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_8606_init(%struct.pm860x_chip* %0, %struct.i2c_client* %1, %struct.pm860x_platform_data* %2) #0 {
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.pm860x_platform_data*, align 8
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  store %struct.pm860x_platform_data* %2, %struct.pm860x_platform_data** %6, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %8 = call i32 @device_osc_init(%struct.i2c_client* %7)
  %9 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %10 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %11 = call i32 @device_bk_init(%struct.pm860x_chip* %9, %struct.pm860x_platform_data* %10)
  %12 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %13 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %14 = call i32 @device_led_init(%struct.pm860x_chip* %12, %struct.pm860x_platform_data* %13)
  ret void
}

declare dso_local i32 @device_osc_init(%struct.i2c_client*) #1

declare dso_local i32 @device_bk_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_led_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
