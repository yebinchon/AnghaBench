; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_map_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_map_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"unaligned scatterlist: offset %x length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"dma_map_sg failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_request*)* @meson_mx_mmc_map_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_mmc_map_dma(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %6, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %13 = icmp ne %struct.mmc_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 1
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  store %struct.scatterlist* %18, %struct.scatterlist** %8, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %20 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24, %15
  %31 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %32 = call i32 @mmc_dev(%struct.mmc_host* %31)
  %33 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %37 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %24
  %43 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %44 = call i32 @mmc_dev(%struct.mmc_host* %43)
  %45 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i32 0, i32 1
  %47 = load %struct.scatterlist*, %struct.scatterlist** %46, align 8
  %48 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %52 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %51)
  %53 = call i32 @dma_map_sg(i32 %44, %struct.scatterlist* %47, i32 %50, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %58 = call i32 @mmc_dev(%struct.mmc_host* %57)
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %56, %30, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
