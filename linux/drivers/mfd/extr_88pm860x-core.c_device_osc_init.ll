; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_osc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_osc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pm860x_chip = type { i32, i32, i32 }

@PM8606_VSYS = common dso_local global i32 0, align 4
@PM8606_VSYS_EN = common dso_local global i32 0, align 4
@PM8606_MISC = common dso_local global i32 0, align 4
@PM8606_MISC_OSC_EN = common dso_local global i32 0, align 4
@REF_GP_NO_CLIENTS = common dso_local global i32 0, align 4
@PM8606_REF_GP_OSC_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @device_osc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_osc_init(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.pm860x_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.pm860x_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.pm860x_chip* %5, %struct.pm860x_chip** %3, align 8
  %6 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %7 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %6, i32 0, i32 2
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = load i32, i32* @PM8606_VSYS, align 4
  %11 = load i32, i32* @PM8606_VSYS_EN, align 4
  %12 = call i32 @pm860x_set_bits(%struct.i2c_client* %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = load i32, i32* @PM8606_MISC, align 4
  %15 = load i32, i32* @PM8606_MISC_OSC_EN, align 4
  %16 = call i32 @pm860x_set_bits(%struct.i2c_client* %13, i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* @REF_GP_NO_CLIENTS, align 4
  %18 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %19 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @PM8606_REF_GP_OSC_OFF, align 4
  %21 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %22 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local %struct.pm860x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm860x_set_bits(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
