; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_do_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_do_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mcp251x_priv = type { %struct.TYPE_2__, %struct.spi_device* }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i64 }
%struct.spi_device = type { i32 }

@CNF1 = common dso_local global i32 0, align 4
@CNF1_SJW_SHIFT = common dso_local global i32 0, align 4
@CNF2 = common dso_local global i32 0, align 4
@CNF2_BTLMODE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@CNF2_SAM = common dso_local global i32 0, align 4
@CNF2_PS1_SHIFT = common dso_local global i32 0, align 4
@CNF3 = common dso_local global i32 0, align 4
@CNF3_PHSEG2_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CNF: 0x%02x 0x%02x 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mcp251x_do_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_do_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mcp251x_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.spi_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.mcp251x_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mcp251x_priv* %7, %struct.mcp251x_priv** %3, align 8
  %8 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.can_bittiming* %10, %struct.can_bittiming** %4, align 8
  %11 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %11, i32 0, i32 1
  %13 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  store %struct.spi_device* %13, %struct.spi_device** %5, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %15 = load i32, i32* @CNF1, align 4
  %16 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %17 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* @CNF1_SJW_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %23 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = or i32 %21, %25
  %27 = call i32 @mcp251x_write_reg(%struct.spi_device* %14, i32 %15, i32 %26)
  %28 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %29 = load i32, i32* @CNF2, align 4
  %30 = load i32, i32* @CNF2_BTLMODE, align 4
  %31 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* @CNF2_SAM, align 4
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %30, %42
  %44 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %45 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @CNF2_PS1_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %43, %49
  %51 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %52 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = or i32 %50, %54
  %56 = call i32 @mcp251x_write_reg(%struct.spi_device* %28, i32 %29, i32 %55)
  %57 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %58 = load i32, i32* @CNF3, align 4
  %59 = load i32, i32* @CNF3_PHSEG2_MASK, align 4
  %60 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %61 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  %64 = call i32 @mcp251x_write_bits(%struct.spi_device* %57, i32 %58, i32 %59, i64 %63)
  %65 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 0
  %67 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %68 = load i32, i32* @CNF1, align 4
  %69 = call i32 @mcp251x_read_reg(%struct.spi_device* %67, i32 %68)
  %70 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %71 = load i32, i32* @CNF2, align 4
  %72 = call i32 @mcp251x_read_reg(%struct.spi_device* %70, i32 %71)
  %73 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %74 = load i32, i32* @CNF3, align 4
  %75 = call i32 @mcp251x_read_reg(%struct.spi_device* %73, i32 %74)
  %76 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  ret i32 0
}

declare dso_local %struct.mcp251x_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mcp251x_write_reg(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @mcp251x_write_bits(%struct.spi_device*, i32, i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @mcp251x_read_reg(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
