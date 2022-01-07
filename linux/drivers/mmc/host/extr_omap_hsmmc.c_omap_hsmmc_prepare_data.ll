; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i64, i32, i32* }
%struct.mmc_request = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i64 }

@BLK = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"MMC start dma failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, %struct.mmc_request*)* @omap_hsmmc_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_prepare_data(%struct.omap_hsmmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  %13 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %19 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BLK, align 4
  %22 = call i32 @OMAP_HSMMC_WRITE(i32 %20, i32 %21, i32 0)
  %23 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %24 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MMC_RSP_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %17
  %32 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NSEC_PER_MSEC, align 8
  %38 = mul i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  store i64 100000000, i64* %7, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @set_data_timeout(%struct.omap_hsmmc_host* %43, i64 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %17
  store i32 0, i32* %3, align 4
  br label %67

47:                                               ; preds = %2
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %54 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %55 = call i32 @omap_hsmmc_setup_dma_transfer(%struct.omap_hsmmc_host* %53, %struct.mmc_request* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mmc_dev(i32 %61)
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %47
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %58, %46
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @set_data_timeout(%struct.omap_hsmmc_host*, i64, i32) #1

declare dso_local i32 @omap_hsmmc_setup_dma_transfer(%struct.omap_hsmmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
