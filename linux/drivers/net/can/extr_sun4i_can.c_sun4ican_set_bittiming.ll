; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sun4ican_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"setting BITTIMING=0x%08x\0A\00", align 1
@SUN4I_REG_BTIME_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sun4ican_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4ican_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sun4ican_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.sun4ican_priv* %7, %struct.sun4ican_priv** %3, align 8
  %8 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.can_bittiming* %10, %struct.can_bittiming** %4, align 8
  %11 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %12 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %14, 1023
  %16 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %17 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %19, 3
  %21 = shl i32 %20, 14
  %22 = or i32 %15, %21
  %23 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %24 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %27 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %30, 15
  %32 = shl i32 %31, 16
  %33 = or i32 %22, %32
  %34 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %35 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, 7
  %39 = shl i32 %38, 20
  %40 = or i32 %33, %39
  store i32 %40, i32* %5, align 4
  %41 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %42 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 8388608
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %1
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @netdev_dbg(%struct.net_device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %57 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SUN4I_REG_BTIME_ADDR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  ret i32 0
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
