; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_set_reset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_set_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cc770_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@control = common dso_local global i32 0, align 4
@CTRL_CCE = common dso_local global i32 0, align 4
@CTRL_INI = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reset_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cc770_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.cc770_priv* %5, %struct.cc770_priv** %3, align 8
  %6 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %7 = load i32, i32* @control, align 4
  %8 = load i32, i32* @CTRL_CCE, align 4
  %9 = load i32, i32* @CTRL_INI, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @cc770_write_reg(%struct.cc770_priv* %6, i32 %7, i32 %10)
  %12 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %13 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %14 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %17 = load i32, i32* @interrupt, align 4
  %18 = call i32 @cc770_read_reg(%struct.cc770_priv* %16, i32 %17)
  %19 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %20 = load i32, i32* @status, align 4
  %21 = call i32 @cc770_write_reg(%struct.cc770_priv* %19, i32 %20, i32 0)
  %22 = load %struct.cc770_priv*, %struct.cc770_priv** %3, align 8
  %23 = call i32 @disable_all_objs(%struct.cc770_priv* %22)
  ret void
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @disable_all_objs(%struct.cc770_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
