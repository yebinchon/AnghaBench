; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_ts_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_ts_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SAA7134_TS_SERIAL1 = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL_SERIAL = common dso_local global i32 0, align 4
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@SAA7134_TS_DMA0 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA1 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_ts_init_hw(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %4 = call i32 @saa_writeb(i32 %3, i32 0)
  %5 = load i32, i32* @SAA7134_TS_PARALLEL, align 4
  %6 = call i32 @saa_writeb(i32 %5, i32 108)
  %7 = load i32, i32* @SAA7134_TS_PARALLEL_SERIAL, align 4
  %8 = load i32, i32* @TS_PACKET_SIZE, align 4
  %9 = sub nsw i32 %8, 1
  %10 = call i32 @saa_writeb(i32 %7, i32 %9)
  %11 = load i32, i32* @SAA7134_TS_DMA0, align 4
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %16, 255
  %18 = call i32 @saa_writeb(i32 %11, i32 %17)
  %19 = load i32, i32* @SAA7134_TS_DMA1, align 4
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %21 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = call i32 @saa_writeb(i32 %19, i32 %26)
  %28 = load i32, i32* @SAA7134_TS_DMA2, align 4
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 63
  %36 = call i32 @saa_writeb(i32 %28, i32 %35)
  ret i32 0
}

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
