; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_hi311x.c_hi3110_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.hi3110_priv = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"hi3110_cmd: %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32)* @hi3110_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3110_cmd(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hi3110_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device* %6)
  store %struct.hi3110_priv* %7, %struct.hi3110_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hi3110_priv*, %struct.hi3110_priv** %5, align 8
  %10 = getelementptr inbounds %struct.hi3110_priv, %struct.hi3110_priv* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = call i32 @hi3110_spi_trans(%struct.spi_device* %17, i32 1)
  ret i32 %18
}

declare dso_local %struct.hi3110_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @hi3110_spi_trans(%struct.spi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
