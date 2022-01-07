; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_start_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_start_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_4__*, %struct.mmc_data*, %struct.tmio_mmc_data* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.tmio_mmc_data = type { i32 }
%struct.mmc_data = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"setup data transfer: blocksize %08x  nr_blocks %d\0A\00", align 1
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@TMIO_MMC_BLKSZ_2BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: %d byte block unsupported in 4/8 bit mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CTL_SD_XFER_LEN = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i64 0, align 8
@CTL_XFER_BLK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, %struct.mmc_data*)* @tmio_mmc_start_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_mmc_start_data(%struct.tmio_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.tmio_mmc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 3
  %10 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %9, align 8
  store %struct.tmio_mmc_data* %10, %struct.tmio_mmc_data** %6, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %35, label %26

26:                                               ; preds = %2
  %27 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %28 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %26, %2
  %36 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %37 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TMIO_MMC_BLKSZ_2BYTES, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %53, label %45

45:                                               ; preds = %35
  %46 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50, %35
  %54 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %55 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @mmc_hostname(%struct.TYPE_4__* %56)
  %58 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %105

64:                                               ; preds = %50, %45
  br label %65

65:                                               ; preds = %64, %26
  %66 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %67 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %68 = call i32 @tmio_mmc_init_sg(%struct.tmio_mmc_host* %66, %struct.mmc_data* %67)
  %69 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %70 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %70, i32 0, i32 2
  store %struct.mmc_data* %69, %struct.mmc_data** %71, align 8
  %72 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %73 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %75 = load i32, i32* @CTL_SD_XFER_LEN, align 4
  %76 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %74, i32 %75, i32 %78)
  %80 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %81 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SZ_64K, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %65
  %88 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %89 = load i32, i32* @CTL_XFER_BLK_COUNT, align 4
  %90 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %91 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sd_ctrl_write32(%struct.tmio_mmc_host* %88, i32 %89, i32 %92)
  br label %101

94:                                               ; preds = %65
  %95 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %96 = load i32, i32* @CTL_XFER_BLK_COUNT, align 4
  %97 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %98 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %95, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %94, %87
  %102 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %103 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %104 = call i32 @tmio_mmc_start_dma(%struct.tmio_mmc_host* %102, %struct.mmc_data* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %53
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_4__*) #1

declare dso_local i32 @tmio_mmc_init_sg(%struct.tmio_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @sd_ctrl_write32(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @tmio_mmc_start_dma(%struct.tmio_mmc_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
