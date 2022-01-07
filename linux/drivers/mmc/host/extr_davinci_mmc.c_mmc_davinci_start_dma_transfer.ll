; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_start_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_start_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i32, i32, i32 }
%struct.mmc_data = type { i32, i64 }

@rw_threshold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_davinci_host*, %struct.mmc_data*)* @mmc_davinci_start_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_davinci_start_dma_transfer(%struct.mmc_davinci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_davinci_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %9 = load i32, i32* @rw_threshold, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mmc_dev(i32 %13)
  %15 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %22 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %21)
  %23 = call i32 @dma_map_sg(i32 %14, i64 %17, i32 %20, i32 %22)
  %24 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %58, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @sg_dma_len(i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %32
  %44 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mmc_dev(i32 %46)
  %48 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %55 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %54)
  %56 = call i32 @dma_unmap_sg(i32 %47, i64 %50, i32 %53, i32 %55)
  store i32 -1, i32* %3, align 4
  br label %68

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %4, align 8
  %65 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %66 = call i32 @mmc_davinci_send_dma_request(%struct.mmc_davinci_host* %64, %struct.mmc_data* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %43
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dma_map_sg(i32, i64, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @sg_dma_len(i64) #1

declare dso_local i32 @dma_unmap_sg(i32, i64, i32, i32) #1

declare dso_local i32 @mmc_davinci_send_dma_request(%struct.mmc_davinci_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
