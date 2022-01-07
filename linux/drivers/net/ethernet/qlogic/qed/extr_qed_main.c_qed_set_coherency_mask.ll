; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_set_coherency_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_set_coherency_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Can't request 64-bit consistent allocations\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't request 64b/32b DMA addresses\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_set_coherency_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_set_coherency_mask(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %5 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @DMA_BIT_MASK(i32 64)
  %11 = call i64 @dma_set_mask(%struct.device* %9, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @DMA_BIT_MASK(i32 64)
  %16 = call i64 @dma_set_coherent_mask(%struct.device* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %20 = call i32 @DP_NOTICE(%struct.qed_dev* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %36

23:                                               ; preds = %13
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @DMA_BIT_MASK(i32 32)
  %27 = call i64 @dma_set_mask(%struct.device* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %31 = call i32 @DP_NOTICE(%struct.qed_dev* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %23
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %29, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @dma_set_coherent_mask(%struct.device*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
