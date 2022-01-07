; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_xfer_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_android-goldfish.c_goldfish_mmc_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goldfish_mmc_host = type { i32*, i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_data = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goldfish_mmc_host*, %struct.mmc_data*)* @goldfish_mmc_xfer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goldfish_mmc_xfer_done(%struct.goldfish_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.goldfish_mmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.goldfish_mmc_host* %0, %struct.goldfish_mmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %12 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @sg_copy_from_buffer(%struct.TYPE_5__* %19, i32 1, i32 %22, i64 %27)
  br label %29

29:                                               ; preds = %16, %10
  %30 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %34
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %44 = call i32 @mmc_from_priv(%struct.goldfish_mmc_host* %43)
  %45 = call i32 @mmc_dev(i32 %44)
  %46 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dma_unmap_sg(i32 %45, %struct.TYPE_5__* %48, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %29, %2
  %55 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %56 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %55, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %58 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.goldfish_mmc_host, %struct.goldfish_mmc_host* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %67 = call i32 @mmc_from_priv(%struct.goldfish_mmc_host* %66)
  %68 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mmc_request_done(i32 %67, i32 %70)
  br label %78

72:                                               ; preds = %54
  %73 = load %struct.goldfish_mmc_host*, %struct.goldfish_mmc_host** %3, align 8
  %74 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @goldfish_mmc_start_command(%struct.goldfish_mmc_host* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %63
  ret void
}

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @sg_copy_from_buffer(%struct.TYPE_5__*, i32, i32, i64) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_from_priv(%struct.goldfish_mmc_host*) #1

declare dso_local i32 @mmc_request_done(i32, i32) #1

declare dso_local i32 @goldfish_mmc_start_command(%struct.goldfish_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
