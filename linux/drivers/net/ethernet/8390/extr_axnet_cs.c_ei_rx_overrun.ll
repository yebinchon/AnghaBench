; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ei_rx_overrun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ei_rx_overrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.axnet_dev = type { i32 }
%struct.ei_device = type { i32 }

@E8390_CMD = common dso_local global i64 0, align 8
@E8390_TRANS = common dso_local global i32 0, align 4
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_STOP = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Receiver overrun\0A\00", align 1
@EN0_RCNTLO = common dso_local global i64 0, align 8
@EN0_RCNTHI = common dso_local global i64 0, align 8
@EN0_ISR = common dso_local global i64 0, align 8
@ENISR_TX = common dso_local global i32 0, align 4
@ENISR_TX_ERR = common dso_local global i32 0, align 4
@E8390_TXOFF = common dso_local global i32 0, align 4
@EN0_TXCR = common dso_local global i64 0, align 8
@E8390_START = common dso_local global i32 0, align 4
@E8390_TXCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ei_rx_overrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ei_rx_overrun(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.axnet_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.ei_device*, align 8
  %8 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.axnet_dev* @PRIV(%struct.net_device* %9)
  store %struct.axnet_dev* %10, %struct.axnet_dev** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  store i8 0, i8* %6, align 1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.ei_device* @netdev_priv(%struct.net_device* %14)
  store %struct.ei_device* %15, %struct.ei_device** %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @E8390_CMD, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inb_p(i64 %18)
  %20 = load i32, i32* @E8390_TRANS, align 4
  %21 = and i32 %19, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = load i32, i32* @E8390_NODMA, align 4
  %24 = load i32, i32* @E8390_PAGE0, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @E8390_STOP, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @E8390_CMD, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb_p(i32 %27, i64 %30)
  %32 = load %struct.ei_device*, %struct.ei_device** %7, align 8
  %33 = load i32, i32* @rx_err, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @netif_dbg(%struct.ei_device* %32, i32 %33, %struct.net_device* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = call i32 @mdelay(i32 2)
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @EN0_RCNTLO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb_p(i32 0, i64 %44)
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @EN0_RCNTHI, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb_p(i32 0, i64 %48)
  %50 = load i8, i8* %5, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %1
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @EN0_ISR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inb_p(i64 %55)
  %57 = load i32, i32* @ENISR_TX, align 4
  %58 = load i32, i32* @ENISR_TX_ERR, align 4
  %59 = add nsw i32 %57, %58
  %60 = and i32 %56, %59
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %8, align 1
  %62 = load i8, i8* %8, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %52
  store i8 1, i8* %6, align 1
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %1
  %67 = load i32, i32* @E8390_TXOFF, align 4
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @EN0_TXCR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outb_p(i32 %67, i64 %70)
  %72 = load i32, i32* @E8390_NODMA, align 4
  %73 = load i32, i32* @E8390_PAGE0, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @E8390_START, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @E8390_CMD, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outb_p(i32 %76, i64 %79)
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @ei_receive(%struct.net_device* %81)
  %83 = load i32, i32* @E8390_TXCONFIG, align 4
  %84 = load %struct.axnet_dev*, %struct.axnet_dev** %3, align 8
  %85 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @EN0_TXCR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outb_p(i32 %87, i64 %90)
  %92 = load i8, i8* %6, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %66
  %95 = load i32, i32* @E8390_NODMA, align 4
  %96 = load i32, i32* @E8390_PAGE0, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @E8390_START, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* @E8390_TRANS, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @E8390_CMD, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb_p(i32 %101, i64 %104)
  br label %106

106:                                              ; preds = %94, %66
  ret void
}

declare dso_local %struct.axnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @netif_dbg(%struct.ei_device*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ei_receive(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
