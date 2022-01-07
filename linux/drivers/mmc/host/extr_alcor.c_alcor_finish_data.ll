; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_finish_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { %struct.TYPE_2__*, i64, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i64, i64 }

@AU6601_RESET_CMD = common dso_local global i32 0, align 4
@AU6601_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*)* @alcor_finish_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_finish_data(%struct.alcor_sdmmc_host* %0) #0 {
  %2 = alloca %struct.alcor_sdmmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %2, align 8
  %4 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %4, i32 0, i32 2
  %6 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  store %struct.mmc_data* %6, %struct.mmc_data** %3, align 8
  %7 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %7, i32 0, i32 2
  store %struct.mmc_data* null, %struct.mmc_data** %8, align 8
  %9 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %18, %15
  %29 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %40 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %52 = load i32, i32* @AU6601_RESET_CMD, align 4
  %53 = load i32, i32* @AU6601_RESET_DATA, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @alcor_reset(%struct.alcor_sdmmc_host* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %58 = call i32 @alcor_unmask_sd_irqs(%struct.alcor_sdmmc_host* %57)
  %59 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %60 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @alcor_send_cmd(%struct.alcor_sdmmc_host* %59, i64 %62, i32 0)
  br label %67

64:                                               ; preds = %38, %28
  %65 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %66 = call i32 @alcor_request_complete(%struct.alcor_sdmmc_host* %65, i32 1)
  br label %67

67:                                               ; preds = %64, %56
  ret void
}

declare dso_local i32 @alcor_reset(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_unmask_sd_irqs(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @alcor_send_cmd(%struct.alcor_sdmmc_host*, i64, i32) #1

declare dso_local i32 @alcor_request_complete(%struct.alcor_sdmmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
