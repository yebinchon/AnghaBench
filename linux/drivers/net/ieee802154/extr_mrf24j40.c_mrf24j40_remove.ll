; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mrf24j40 = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mrf24j40_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.mrf24j40*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.mrf24j40* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.mrf24j40* %5, %struct.mrf24j40** %3, align 8
  %6 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %7 = call i32 @printdev(%struct.mrf24j40* %6)
  %8 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %10 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ieee802154_unregister_hw(i32 %11)
  %13 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %14 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ieee802154_free_hw(i32 %15)
  ret i32 0
}

declare dso_local %struct.mrf24j40* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @ieee802154_unregister_hw(i32) #1

declare dso_local i32 @ieee802154_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
