; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i64, i32, i32, i32, i32, i32 }

@LNK_LED_REG = common dso_local global i32 0, align 4
@LED_BLK_OFF = common dso_local global i32 0, align 4
@LED_SYNC_OFF = common dso_local global i32 0, align 4
@LED_REG_ON = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Link is up at %d Mbps, %s duplex, flow control %s\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @skge_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_link_up(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %3 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %4 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %7 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LNK_LED_REG, align 4
  %10 = call i32 @SK_REG(i32 %8, i32 %9)
  %11 = load i32, i32* @LED_BLK_OFF, align 4
  %12 = load i32, i32* @LED_SYNC_OFF, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LED_REG_ON, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @skge_write8(i32 %5, i32 %10, i32 %15)
  %17 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %18 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_carrier_on(i32 %19)
  %21 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %22 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netif_wake_queue(i32 %23)
  %25 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %26 = load i32, i32* @link, align 4
  %27 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %28 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %31 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %34 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DUPLEX_FULL, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %41 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @skge_pause(i32 %42)
  %44 = call i32 @netif_info(%struct.skge_port* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %39, i32 %43)
  ret void
}

declare dso_local i32 @skge_write8(i32, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @netif_info(%struct.skge_port*, i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @skge_pause(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
