; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usdhi6_host*)* @usdhi6_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_dma_start(%struct.usdhi6_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usdhi6_host*, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  %4 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %5 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %10 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %8
  %17 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %18 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MMC_DATA_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %29 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %30 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %33 = call i32 @usdhi6_dma_setup(%struct.usdhi6_host* %28, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %16
  %35 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %36 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %37 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %40 = call i32 @usdhi6_dma_setup(%struct.usdhi6_host* %35, i32 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %27, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @usdhi6_dma_setup(%struct.usdhi6_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
