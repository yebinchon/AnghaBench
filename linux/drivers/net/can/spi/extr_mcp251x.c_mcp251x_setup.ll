; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.spi_device = type { i32 }

@RXBCTRL_BUKT = common dso_local global i32 0, align 4
@RXBCTRL_RXM0 = common dso_local global i32 0, align 4
@RXBCTRL_RXM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.spi_device*)* @mcp251x_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_setup(%struct.net_device* %0, %struct.spi_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.spi_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.spi_device* %1, %struct.spi_device** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call i32 @mcp251x_do_set_bittiming(%struct.net_device* %5)
  %7 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %8 = call i32 @RXBCTRL(i32 0)
  %9 = load i32, i32* @RXBCTRL_BUKT, align 4
  %10 = load i32, i32* @RXBCTRL_RXM0, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @RXBCTRL_RXM1, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mcp251x_write_reg(%struct.spi_device* %7, i32 %8, i32 %13)
  %15 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %16 = call i32 @RXBCTRL(i32 1)
  %17 = load i32, i32* @RXBCTRL_RXM0, align 4
  %18 = load i32, i32* @RXBCTRL_RXM1, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @mcp251x_write_reg(%struct.spi_device* %15, i32 %16, i32 %19)
  ret i32 0
}

declare dso_local i32 @mcp251x_do_set_bittiming(%struct.net_device*) #1

declare dso_local i32 @mcp251x_write_reg(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @RXBCTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
