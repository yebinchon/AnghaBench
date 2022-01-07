; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i64, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i64, i64 }

@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_SEND_CSD = common dso_local global i64 0, align 8
@MMC_SEND_CID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.mmc_host*, i64, i8*, i32)* @mmc_send_cxd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_send_cxd_data(%struct.mmc_card* %0, %struct.mmc_host* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mmc_request, align 8
  %13 = alloca %struct.mmc_command, align 8
  %14 = alloca %struct.mmc_data, align 8
  %15 = alloca %struct.scatterlist, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %7, align 8
  store %struct.mmc_host* %1, %struct.mmc_host** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = bitcast %struct.mmc_request* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast %struct.mmc_command* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.mmc_data* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 48, i1 false)
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 1
  store %struct.mmc_command* %13, %struct.mmc_command** %19, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  store %struct.mmc_data* %14, %struct.mmc_data** %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 3
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %25 = load i32, i32* @MMC_RSP_R1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MMC_CMD_ADTC, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @MMC_DATA_READ, align 4
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 7
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 6
  store %struct.scatterlist* %15, %struct.scatterlist** %35, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @sg_init_one(%struct.scatterlist* %15, i8* %37, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @MMC_SEND_CSD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %5
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @MMC_SEND_CID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %5
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 3
  store i32 64, i32* %49, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %52 = call i32 @mmc_set_data_timeout(%struct.mmc_data* %14, %struct.mmc_card* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %55 = call i32 @mmc_wait_for_req(%struct.mmc_host* %54, %struct.mmc_request* %12)
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %70

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  br label %70

69:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %66, %59
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #2

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_data*, %struct.mmc_card*) #2

declare dso_local i32 @mmc_wait_for_req(%struct.mmc_host*, %struct.mmc_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
