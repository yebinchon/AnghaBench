; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_dev = type { i32, i32, i32, i64 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.tifm_sd = type { i32, i32, i32, %struct.tifm_dev* }

@EIO = common dso_local global i32 0, align 4
@TIFM_SOCK_STATE_OCCUPIED = common dso_local global i32 0, align 4
@SOCK_PRESENT_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s : card gone, unexpectedly\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@tifm_sd_end_cmd = common dso_local global i32 0, align 4
@tifm_sd_abort = common dso_local global i32 0, align 4
@tifm_sd_ops = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@TIFM_MMCSD_MAX_BLOCK_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@tifm_sd_card_event = common dso_local global i32 0, align 4
@tifm_sd_data_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_dev*)* @tifm_sd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_sd_probe(%struct.tifm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tifm_dev*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.tifm_sd*, align 8
  %6 = alloca i32, align 4
  store %struct.tifm_dev* %0, %struct.tifm_dev** %3, align 8
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @TIFM_SOCK_STATE_OCCUPIED, align 4
  %10 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %11 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCK_PRESENT_STATE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = and i32 %9, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %20 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %19, i32 0, i32 2
  %21 = call i32 @dev_name(i32* %20)
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %116

24:                                               ; preds = %1
  %25 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %26 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %25, i32 0, i32 2
  %27 = call %struct.mmc_host* @mmc_alloc_host(i32 24, i32* %26)
  store %struct.mmc_host* %27, %struct.mmc_host** %4, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %29 = icmp ne %struct.mmc_host* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %116

33:                                               ; preds = %24
  %34 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %35 = call %struct.tifm_sd* @mmc_priv(%struct.mmc_host* %34)
  store %struct.tifm_sd* %35, %struct.tifm_sd** %5, align 8
  %36 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %37 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %38 = call i32 @tifm_set_drvdata(%struct.tifm_dev* %36, %struct.mmc_host* %37)
  %39 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %40 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %41 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %40, i32 0, i32 3
  store %struct.tifm_dev* %39, %struct.tifm_dev** %41, align 8
  %42 = call i32 @msecs_to_jiffies(i32 1000)
  %43 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %44 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %46 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %45, i32 0, i32 1
  %47 = load i32, i32* @tifm_sd_end_cmd, align 4
  %48 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %49 = ptrtoint %struct.tifm_sd* %48 to i64
  %50 = call i32 @tasklet_init(i32* %46, i32 %47, i64 %49)
  %51 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %52 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %51, i32 0, i32 0
  %53 = load i32, i32* @tifm_sd_abort, align 4
  %54 = call i32 @timer_setup(i32* %52, i32 %53, i32 0)
  %55 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 9
  store i32* @tifm_sd_ops, i32** %56, align 8
  %57 = load i32, i32* @MMC_VDD_32_33, align 4
  %58 = load i32, i32* @MMC_VDD_33_34, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %63 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %66 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %65, i32 0, i32 1
  store i32 333333, i32* %66, align 4
  %67 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 2
  store i32 24000000, i32* %68, align 8
  %69 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %69, i32 0, i32 3
  store i32 2048, i32* %70, align 4
  %71 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %72 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @TIFM_MMCSD_MAX_BLOCK_SIZE, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  %79 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %94 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @tifm_sd_card_event, align 4
  %96 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %97 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @tifm_sd_data_event, align 4
  %99 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %100 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.tifm_sd*, %struct.tifm_sd** %5, align 8
  %102 = call i32 @tifm_sd_initialize_host(%struct.tifm_sd* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %33
  %106 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %107 = call i32 @mmc_add_host(%struct.mmc_host* %106)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %33
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %116

112:                                              ; preds = %108
  %113 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %114 = call i32 @mmc_free_host(%struct.mmc_host* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %111, %30, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local %struct.tifm_sd* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @tifm_set_drvdata(%struct.tifm_dev*, %struct.mmc_host*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tifm_sd_initialize_host(%struct.tifm_sd*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
