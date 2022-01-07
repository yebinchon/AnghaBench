; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe-spi.c_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe-spi.c_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { %struct.TYPE_2__*, %struct.spi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32, i32, i32 }

@STMPE811_REG_SPI_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"spi_setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmpe*)* @spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_init(%struct.stmpe* %0) #0 {
  %2 = alloca %struct.stmpe*, align 8
  %3 = alloca %struct.spi_device*, align 8
  store %struct.stmpe* %0, %struct.stmpe** %2, align 8
  %4 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %5 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %4, i32 0, i32 1
  %6 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  store %struct.spi_device* %6, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %10 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 2065
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.stmpe*, %struct.stmpe** %2, align 8
  %17 = load i32, i32* @STMPE811_REG_SPI_CFG, align 4
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spi_reg_write(%struct.stmpe* %16, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = call i64 @spi_setup(%struct.spi_device* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 1
  %29 = call i32 @dev_dbg(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @spi_reg_write(%struct.stmpe*, i32, i32) #1

declare dso_local i64 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
