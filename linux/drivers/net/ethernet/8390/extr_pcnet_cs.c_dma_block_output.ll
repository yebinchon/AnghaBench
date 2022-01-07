; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_dma_block_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_dma_block_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.pcnet_dev = type { i32 }

@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [64 x i8] c"DMAing conflict in dma_block_output.[DMAstat:%1x][irqlock:%1x]\0A\00", align 1
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@E8390_NODMA = common dso_local global i32 0, align 4
@PCNET_CMD = common dso_local global i64 0, align 8
@ENISR_RDC = common dso_local global i32 0, align 4
@EN0_ISR = common dso_local global i64 0, align 8
@EN0_RCNTLO = common dso_local global i64 0, align 8
@EN0_RCNTHI = common dso_local global i64 0, align 8
@EN0_RSARLO = common dso_local global i64 0, align 8
@EN0_RSARHI = common dso_local global i64 0, align 8
@E8390_RWRITE = common dso_local global i32 0, align 4
@PCNET_DATAPORT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@PCNET_RDC_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"timeout waiting for Tx RDC.\0A\00", align 1
@DELAY_OUTPUT = common dso_local global i32 0, align 4
@delay_time = common dso_local global i64 0, align 8
@tx_queued = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*, i32)* @dma_block_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_block_output(%struct.net_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcnet_dev*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.pcnet_dev* @PRIV(%struct.net_device* %15)
  store %struct.pcnet_dev* %16, %struct.pcnet_dev** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 4
  %30 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %135

31:                                               ; preds = %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %34 = load i32, i32* @E8390_PAGE0, align 4
  %35 = load i32, i32* @E8390_START, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @E8390_NODMA, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @PCNET_CMD, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb_p(i32 %38, i64 %42)
  %44 = load i32, i32* @ENISR_RDC, align 4
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @EN0_ISR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb_p(i32 %44, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 255
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* @EN0_RCNTLO, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outb_p(i32 %51, i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* @EN0_RCNTHI, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb_p(i32 %58, i64 %62)
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* @EN0_RSARLO, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb_p(i32 0, i64 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @EN0_RSARHI, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb_p(i32 %69, i64 %73)
  %75 = load i32, i32* @E8390_RWRITE, align 4
  %76 = load i32, i32* @E8390_START, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @PCNET_CMD, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb_p(i32 %77, i64 %81)
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* @PCNET_DATAPORT, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 1
  %90 = call i32 @outsw(i64 %86, i32* %87, i32 %89)
  %91 = load i64, i64* @jiffies, align 8
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %115, %31
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* @EN0_ISR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @inb_p(i64 %96)
  %98 = load i32, i32* @ENISR_RDC, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %92
  %102 = load i64, i64* @jiffies, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @PCNET_RDC_TIMEOUT, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @time_after(i64 %102, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = call i32 @netdev_warn(%struct.net_device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = call i32 @pcnet_reset_8390(%struct.net_device* %111)
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = call i32 @NS8390_init(%struct.net_device* %113, i32 1)
  br label %116

115:                                              ; preds = %101
  br label %92

116:                                              ; preds = %108, %92
  %117 = load i32, i32* @ENISR_RDC, align 4
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* @EN0_ISR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outb_p(i32 %117, i64 %121)
  %123 = load %struct.pcnet_dev*, %struct.pcnet_dev** %10, align 8
  %124 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DELAY_OUTPUT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %116
  %130 = load i64, i64* @delay_time, align 8
  %131 = call i32 @udelay(i64 %130)
  br label %132

132:                                              ; preds = %129, %116
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  %134 = and i32 %133, -2
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 4
  br label %135

135:                                              ; preds = %132, %26
  ret void
}

declare dso_local %struct.pcnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @outsw(i64, i32*, i32) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @pcnet_reset_8390(%struct.net_device*) #1

declare dso_local i32 @NS8390_init(%struct.net_device*, i32) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
