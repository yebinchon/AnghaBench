; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_do_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_do_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hi3110_priv = type { %struct.TYPE_2__, %struct.spi_device* }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@HI3110_WRITE_BTR0 = common dso_local global i32 0, align 4
@HI3110_BTR0_SJW_SHIFT = common dso_local global i32 0, align 4
@HI3110_BTR0_BRP_SHIFT = common dso_local global i32 0, align 4
@HI3110_WRITE_BTR1 = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@HI3110_BTR1_SAMP_3PERBIT = common dso_local global i32 0, align 4
@HI3110_BTR1_SAMP_1PERBIT = common dso_local global i32 0, align 4
@HI3110_BTR1_TSEG1_SHIFT = common dso_local global i32 0, align 4
@HI3110_BTR1_TSEG2_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"BT: 0x%02x 0x%02x\0A\00", align 1
@HI3110_READ_BTR0 = common dso_local global i32 0, align 4
@HI3110_READ_BTR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hi3110_do_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_do_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hi3110_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.spi_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hi3110_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.hi3110_priv* %7, %struct.hi3110_priv** %3, align 8
  %8 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.can_bittiming* %10, %struct.can_bittiming** %4, align 8
  %11 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %12 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %11, i32 0, i32 1
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %5, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %15 = load i32, i32* @HI3110_WRITE_BTR0, align 4
  %16 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %17 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @HI3110_BTR0_SJW_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %23 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* @HI3110_BTR0_BRP_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %21, %27
  %29 = call i32 @hi3110_write(%struct.spi_device* %14, i32 %15, i32 %28)
  %30 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %31 = load i32, i32* @HI3110_WRITE_BTR1, align 4
  %32 = load %struct.hi3110_priv*, %struct.hi3110_priv** %3, align 8
  %33 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @HI3110_BTR1_SAMP_3PERBIT, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @HI3110_BTR1_SAMP_1PERBIT, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %46 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %49 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* @HI3110_BTR1_TSEG1_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %44, %54
  %56 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %57 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @HI3110_BTR1_TSEG2_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %55, %61
  %63 = call i32 @hi3110_write(%struct.spi_device* %30, i32 %31, i32 %62)
  %64 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 0
  %66 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %67 = load i32, i32* @HI3110_READ_BTR0, align 4
  %68 = call i32 @hi3110_read(%struct.spi_device* %66, i32 %67)
  %69 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %70 = load i32, i32* @HI3110_READ_BTR1, align 4
  %71 = call i32 @hi3110_read(%struct.spi_device* %69, i32 %70)
  %72 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71)
  ret i32 0
}

declare dso_local %struct.hi3110_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hi3110_write(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @hi3110_read(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
