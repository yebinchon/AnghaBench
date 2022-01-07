; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_dma_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_dma_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i32 }

@R852_DMA_CAP = common dso_local global i32 0, align 4
@R852_DMA1 = common dso_local global i32 0, align 4
@R852_DMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Non dma capable device detected, dma disabled\00", align 1
@r852_enable_dma = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"disabling dma on user request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*)* @r852_dma_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_dma_test(%struct.r852_device* %0) #0 {
  %2 = alloca %struct.r852_device*, align 8
  store %struct.r852_device* %0, %struct.r852_device** %2, align 8
  %3 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %4 = load i32, i32* @R852_DMA_CAP, align 4
  %5 = call i32 @r852_read_reg(%struct.r852_device* %3, i32 %4)
  %6 = load i32, i32* @R852_DMA1, align 4
  %7 = load i32, i32* @R852_DMA2, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = load i32, i32* @R852_DMA1, align 4
  %11 = load i32, i32* @R852_DMA2, align 4
  %12 = or i32 %10, %11
  %13 = icmp eq i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %16 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %18 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 @message(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i32, i32* @r852_enable_dma, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = call i32 @message(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %29 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @r852_read_reg(%struct.r852_device*, i32) #1

declare dso_local i32 @message(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
