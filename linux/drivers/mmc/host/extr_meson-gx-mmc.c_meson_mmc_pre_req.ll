; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_pre_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_pre_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32 }

@SD_EMMC_PRE_REQ_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dma_map_sg failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @meson_mmc_pre_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_pre_req(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %7 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %6, i32 0, i32 0
  %8 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  store %struct.mmc_data* %8, %struct.mmc_data** %5, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %10 = icmp ne %struct.mmc_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %15 = call i32 @meson_mmc_get_transfer_mode(%struct.mmc_host* %13, %struct.mmc_request* %14)
  %16 = load i32, i32* @SD_EMMC_PRE_REQ_DONE, align 4
  %17 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %22 = call i32 @meson_mmc_desc_chain_mode(%struct.mmc_data* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %47

25:                                               ; preds = %12
  %26 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %27 = call i32 @mmc_dev(%struct.mmc_host* %26)
  %28 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %35 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %34)
  %36 = call i32 @dma_map_sg(i32 %27, i32 %30, i32 %33, i32 %35)
  %37 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %25
  %44 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %45 = call i32 @mmc_dev(%struct.mmc_host* %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %11, %24, %43, %25
  ret void
}

declare dso_local i32 @meson_mmc_get_transfer_mode(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @meson_mmc_desc_chain_mode(%struct.mmc_data*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
