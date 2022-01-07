; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_stop_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_stop_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ep93xx_priv = type { i32 }

@REG_SELFCTL = common dso_local global i32 0, align 4
@REG_SELFCTL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"hw failed to reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ep93xx_stop_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_stop_hw(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ep93xx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ep93xx_priv* %6, %struct.ep93xx_priv** %3, align 8
  %7 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %8 = load i32, i32* @REG_SELFCTL, align 4
  %9 = load i32, i32* @REG_SELFCTL_RESET, align 4
  %10 = call i32 @wrl(%struct.ep93xx_priv* %7, i32 %8, i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %16 = load i32, i32* @REG_SELFCTL, align 4
  %17 = call i32 @rdl(%struct.ep93xx_priv* %15, i32 %16)
  %18 = load i32, i32* @REG_SELFCTL_RESET, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %27

22:                                               ; preds = %14
  %23 = call i32 @msleep(i32 1)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %21, %11
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  ret void
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wrl(%struct.ep93xx_priv*, i32, i32) #1

declare dso_local i32 @rdl(%struct.ep93xx_priv*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
