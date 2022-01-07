; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9150-core.c_da9150_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9150-core.c_da9150_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.da9150 = type { i32 }

@DA9150_CONFIG_D = common dso_local global i32 0, align 4
@DA9150_WKUP_PM_EN_MASK = common dso_local global i32 0, align 4
@DA9150_CONTROL_C = common dso_local global i32 0, align 4
@DA9150_DISABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @da9150_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9150_shutdown(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.da9150*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.da9150* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.da9150* %5, %struct.da9150** %3, align 8
  %6 = load %struct.da9150*, %struct.da9150** %3, align 8
  %7 = load i32, i32* @DA9150_CONFIG_D, align 4
  %8 = load i32, i32* @DA9150_WKUP_PM_EN_MASK, align 4
  %9 = load i32, i32* @DA9150_WKUP_PM_EN_MASK, align 4
  %10 = call i32 @da9150_set_bits(%struct.da9150* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.da9150*, %struct.da9150** %3, align 8
  %12 = load i32, i32* @DA9150_CONTROL_C, align 4
  %13 = load i32, i32* @DA9150_DISABLE_MASK, align 4
  %14 = load i32, i32* @DA9150_DISABLE_MASK, align 4
  %15 = call i32 @da9150_set_bits(%struct.da9150* %11, i32 %12, i32 %13, i32 %14)
  ret void
}

declare dso_local %struct.da9150* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @da9150_set_bits(%struct.da9150*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
