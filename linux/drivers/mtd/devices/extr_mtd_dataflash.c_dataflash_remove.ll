; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.dataflash = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @dataflash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataflash_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.dataflash*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.dataflash* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.dataflash* %6, %struct.dataflash** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dataflash*, %struct.dataflash** %3, align 8
  %11 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %10, i32 0, i32 0
  %12 = call i32 @mtd_device_unregister(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.dataflash*, %struct.dataflash** %3, align 8
  %17 = call i32 @kfree(%struct.dataflash* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local %struct.dataflash* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mtd_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.dataflash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
