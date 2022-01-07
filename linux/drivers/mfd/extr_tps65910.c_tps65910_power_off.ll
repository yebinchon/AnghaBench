; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tps65910 = type { i32 }

@tps65910_i2c_client = common dso_local global %struct.TYPE_2__* null, align 8
@TPS65910_DEVCTRL = common dso_local global i32 0, align 4
@DEVCTRL_PWR_OFF_MASK = common dso_local global i32 0, align 4
@DEVCTRL_DEV_ON_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tps65910_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps65910_power_off() #0 {
  %1 = alloca %struct.tps65910*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tps65910_i2c_client, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = call %struct.tps65910* @dev_get_drvdata(i32* %3)
  store %struct.tps65910* %4, %struct.tps65910** %1, align 8
  %5 = load %struct.tps65910*, %struct.tps65910** %1, align 8
  %6 = load i32, i32* @TPS65910_DEVCTRL, align 4
  %7 = load i32, i32* @DEVCTRL_PWR_OFF_MASK, align 4
  %8 = call i64 @tps65910_reg_set_bits(%struct.tps65910* %5, i32 %6, i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %16

11:                                               ; preds = %0
  %12 = load %struct.tps65910*, %struct.tps65910** %1, align 8
  %13 = load i32, i32* @TPS65910_DEVCTRL, align 4
  %14 = load i32, i32* @DEVCTRL_DEV_ON_MASK, align 4
  %15 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.tps65910* @dev_get_drvdata(i32*) #1

declare dso_local i64 @tps65910_reg_set_bits(%struct.tps65910*, i32, i32) #1

declare dso_local i32 @tps65910_reg_clear_bits(%struct.tps65910*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
