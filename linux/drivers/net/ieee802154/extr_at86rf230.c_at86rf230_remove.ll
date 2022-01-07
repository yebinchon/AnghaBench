; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.at86rf230_local = type { i32 }

@SR_IRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unregistered at86rf230\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @at86rf230_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.at86rf230_local*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.at86rf230_local* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.at86rf230_local* %5, %struct.at86rf230_local** %3, align 8
  %6 = load %struct.at86rf230_local*, %struct.at86rf230_local** %3, align 8
  %7 = load i32, i32* @SR_IRQ_MASK, align 4
  %8 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %6, i32 %7, i32 0)
  %9 = load %struct.at86rf230_local*, %struct.at86rf230_local** %3, align 8
  %10 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ieee802154_unregister_hw(i32 %11)
  %13 = load %struct.at86rf230_local*, %struct.at86rf230_local** %3, align 8
  %14 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ieee802154_free_hw(i32 %15)
  %17 = call i32 (...) @at86rf230_debugfs_remove()
  %18 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.at86rf230_local* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @at86rf230_write_subreg(%struct.at86rf230_local*, i32, i32) #1

declare dso_local i32 @ieee802154_unregister_hw(i32) #1

declare dso_local i32 @ieee802154_free_hw(i32) #1

declare dso_local i32 @at86rf230_debugfs_remove(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
