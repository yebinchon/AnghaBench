; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_app_sd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_app_sd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_request = type { %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i64, i32 }

@SD_APP_SD_STATUS = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R2 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_app_sd_status(%struct.mmc_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_request, align 8
  %8 = alloca %struct.mmc_command, align 8
  %9 = alloca %struct.mmc_data, align 8
  %10 = alloca %struct.scatterlist, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = bitcast %struct.mmc_request* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = bitcast %struct.mmc_command* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = bitcast %struct.mmc_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %18 = call i32 @mmc_app_cmd(i32 %16, %struct.mmc_card* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 1
  store %struct.mmc_command* %8, %struct.mmc_command** %24, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 0
  store %struct.mmc_data* %9, %struct.mmc_data** %25, align 8
  %26 = load i32, i32* @SD_APP_SD_STATUS, align 4
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @MMC_RSP_SPI_R2, align 4
  %30 = load i32, i32* @MMC_RSP_R1, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MMC_CMD_ADTC, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 0
  store i32 64, i32* %35, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @MMC_DATA_READ, align 4
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 4
  store %struct.scatterlist* %10, %struct.scatterlist** %39, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @sg_init_one(%struct.scatterlist* %10, i8* %41, i32 64)
  %43 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %44 = call i32 @mmc_set_data_timeout(%struct.mmc_data* %9, %struct.mmc_card* %43)
  %45 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mmc_wait_for_req(i32 %47, %struct.mmc_request* %7)
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %52, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_app_cmd(i32, %struct.mmc_card*) #2

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #2

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_data*, %struct.mmc_card*) #2

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
