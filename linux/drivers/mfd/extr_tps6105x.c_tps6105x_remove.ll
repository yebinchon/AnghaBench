; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tps6105x = type { i32 }

@TPS6105X_REG_0 = common dso_local global i32 0, align 4
@TPS6105X_REG0_MODE_MASK = common dso_local global i32 0, align 4
@TPS6105X_MODE_SHUTDOWN = common dso_local global i32 0, align 4
@TPS6105X_REG0_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tps6105x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6105x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tps6105x*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.tps6105x* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.tps6105x* %5, %struct.tps6105x** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @mfd_remove_devices(i32* %7)
  %9 = load %struct.tps6105x*, %struct.tps6105x** %3, align 8
  %10 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TPS6105X_REG_0, align 4
  %13 = load i32, i32* @TPS6105X_REG0_MODE_MASK, align 4
  %14 = load i32, i32* @TPS6105X_MODE_SHUTDOWN, align 4
  %15 = load i32, i32* @TPS6105X_REG0_MODE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 %16)
  ret i32 0
}

declare dso_local %struct.tps6105x* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
