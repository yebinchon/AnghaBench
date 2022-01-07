; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_status_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_status_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cc770_priv = type { i32 }

@STAT_LEC_MASK = common dso_local global i32 0, align 4
@STAT_WARN = common dso_local global i32 0, align 4
@STAT_BOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cc770_status_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc770_status_interrupt(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cc770_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cc770_priv* %7, %struct.cc770_priv** %4, align 8
  %8 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @cc770_read_reg(%struct.cc770_priv* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STAT_LEC_MASK, align 4
  %14 = call i32 @cc770_write_reg(%struct.cc770_priv* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @STAT_WARN, align 4
  %17 = load i32, i32* @STAT_BOFF, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @STAT_LEC_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @STAT_LEC_MASK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %1
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @cc770_err(%struct.net_device* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @STAT_BOFF, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

declare dso_local i32 @cc770_err(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
