; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_transmit_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_transmit_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_KCAN_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_IRQ_TOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Tx FIFO overflow\0A\00", align 1
@KVASER_PCIEFD_KCAN_IRQ_TFD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_TX_NPACKETS_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_CTRL_EFLUSH = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CTRL_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_IRQ_BPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Fail to change bittiming, when not in reset mode\0A\00", align 1
@KVASER_PCIEFD_KCAN_IRQ_FDIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"CAN FD frame in CAN mode\0A\00", align 1
@KVASER_PCIEFD_KCAN_IRQ_ROF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Rx FIFO overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_transmit_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_transmit_irq(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd_can*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %2, align 8
  %5 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %6 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @KVASER_PCIEFD_KCAN_IRQ_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @ioread32(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TOF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %17 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netdev_err(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TFD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %28 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KVASER_PCIEFD_KCAN_TX_NPACKETS_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ioread32(i64 %31)
  %33 = and i32 %32, 255
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load i32, i32* @KVASER_PCIEFD_KCAN_CTRL_EFLUSH, align 4
  %39 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %40 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @KVASER_PCIEFD_KCAN_CTRL_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %37, %26
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_BPP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %53 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_err(i32 %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_FDIC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %64 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_ROF, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %75 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netdev_err(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %82 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @KVASER_PCIEFD_KCAN_IRQ_REG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @iowrite32(i32 %80, i64 %85)
  ret i32 0
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
