; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, i32 }

@LNK_LED_REG = common dso_local global i32 0, align 4
@LED_REG_OFF = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @skge_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_link_down(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %3 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %4 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %7 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LNK_LED_REG, align 4
  %10 = call i32 @SK_REG(i32 %8, i32 %9)
  %11 = load i32, i32* @LED_REG_OFF, align 4
  %12 = call i32 @skge_write8(i32 %5, i32 %10, i32 %11)
  %13 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_carrier_off(i32 %15)
  %17 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %18 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_stop_queue(i32 %19)
  %21 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %22 = load i32, i32* @link, align 4
  %23 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %24 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_info(%struct.skge_port* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @skge_write8(i32, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_info(%struct.skge_port*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
