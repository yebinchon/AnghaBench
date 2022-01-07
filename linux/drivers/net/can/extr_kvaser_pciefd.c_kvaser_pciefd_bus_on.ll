; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_bus_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_bus_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@KVASER_PCIEFD_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout during bus on flush\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IEN_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_IRQ_ABD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TFD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_MODE_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_MODE_RM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Timeout during bus on reset\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_bus_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_bus_on(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_pciefd_can*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %3, align 8
  %6 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %7 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %6, i32 0, i32 7
  %8 = call i32 @del_timer(i32* %7)
  %9 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %10 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %9, i32 0, i32 6
  %11 = call i32 @completion_done(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %15 = call i32 @kvaser_pciefd_start_controller_flush(%struct.kvaser_pciefd_can* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %18 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %17, i32 0, i32 6
  %19 = load i32, i32* @KVASER_PCIEFD_WAIT_TIMEOUT, align 4
  %20 = call i32 @wait_for_completion_timeout(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %24 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netdev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %124

30:                                               ; preds = %16
  %31 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %32 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %31, i32 0, i32 5
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %36 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @iowrite32(i32 0, i64 %39)
  %41 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %42 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KVASER_PCIEFD_KCAN_IRQ_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @iowrite32(i32 -1, i64 %45)
  %47 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_ABD, align 4
  %48 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TFD, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %51 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @iowrite32(i32 %49, i64 %54)
  %56 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %57 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @ioread32(i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @KVASER_PCIEFD_KCAN_MODE_RM, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %68 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @KVASER_PCIEFD_KCAN_MODE_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @iowrite32(i32 %66, i64 %71)
  %73 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %74 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %73, i32 0, i32 5
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %78 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %77, i32 0, i32 4
  %79 = load i32, i32* @KVASER_PCIEFD_WAIT_TIMEOUT, align 4
  %80 = call i32 @wait_for_completion_timeout(i32* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %30
  %83 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %84 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @netdev_err(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %124

90:                                               ; preds = %30
  %91 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %92 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @iowrite32(i32 0, i64 %95)
  %97 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %98 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @KVASER_PCIEFD_KCAN_IRQ_REG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @iowrite32(i32 -1, i64 %101)
  %103 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %104 = call i32 @kvaser_pciefd_set_tx_irq(%struct.kvaser_pciefd_can* %103)
  %105 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %106 = call i32 @kvaser_pciefd_setup_controller(%struct.kvaser_pciefd_can* %105)
  %107 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %108 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %109 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %112 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @netif_wake_queue(i32 %114)
  %116 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %117 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %120 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %123 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %90, %82, %22
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @kvaser_pciefd_start_controller_flush(%struct.kvaser_pciefd_can*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kvaser_pciefd_set_tx_irq(%struct.kvaser_pciefd_can*) #1

declare dso_local i32 @kvaser_pciefd_setup_controller(%struct.kvaser_pciefd_can*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
