; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_unicast_promisc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_unicast_promisc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }

@MVNETA_PORT_CONFIG = common dso_local global i32 0, align 4
@MVNETA_TYPE_PRIO = common dso_local global i32 0, align 4
@MVNETA_UNI_PROMISC_MODE = common dso_local global i32 0, align 4
@MVNETA_FORCE_UNI = common dso_local global i32 0, align 4
@MVNETA_MAC_ADDR_LOW = common dso_local global i32 0, align 4
@MVNETA_MAC_ADDR_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, i32)* @mvneta_rx_unicast_promisc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rx_unicast_promisc_set(%struct.mvneta_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %8 = load i32, i32* @MVNETA_PORT_CONFIG, align 4
  %9 = call i32 @mvreg_read(%struct.mvneta_port* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %11 = load i32, i32* @MVNETA_TYPE_PRIO, align 4
  %12 = call i32 @mvreg_read(%struct.mvneta_port* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @MVNETA_UNI_PROMISC_MODE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @MVNETA_FORCE_UNI, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %23 = load i32, i32* @MVNETA_MAC_ADDR_LOW, align 4
  %24 = call i32 @mvreg_write(%struct.mvneta_port* %22, i32 %23, i32 65535)
  %25 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %26 = load i32, i32* @MVNETA_MAC_ADDR_HIGH, align 4
  %27 = call i32 @mvreg_write(%struct.mvneta_port* %25, i32 %26, i32 -1)
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @MVNETA_UNI_PROMISC_MODE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @MVNETA_FORCE_UNI, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %15
  %38 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %39 = load i32, i32* @MVNETA_PORT_CONFIG, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mvreg_write(%struct.mvneta_port* %38, i32 %39, i32 %40)
  %42 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %43 = load i32, i32* @MVNETA_TYPE_PRIO, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mvreg_write(%struct.mvneta_port* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
