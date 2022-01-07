; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_acquire_dma_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_acquire_dma_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get dma_tx channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get dma_rx channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4740_mmc_host*)* @jz4740_mmc_acquire_dma_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_mmc_acquire_dma_channels(%struct.jz4740_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4740_mmc_host*, align 8
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %3, align 8
  %4 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %5 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @mmc_dev(i32 %6)
  %8 = call i8* @dma_request_chan(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mmc_dev(i32 %19)
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mmc_dev(i32 %29)
  %31 = call i8* @dma_request_chan(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %26
  %40 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mmc_dev(i32 %42)
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %46 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @dma_release_channel(i8* %47)
  %49 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %39, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @dma_request_chan(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
