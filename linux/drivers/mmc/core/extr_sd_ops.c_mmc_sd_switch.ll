; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_sd_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_sd_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_request = type { %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32 }

@SD_SWITCH = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_sd_switch(%struct.mmc_card* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mmc_request, align 8
  %13 = alloca %struct.mmc_command, align 4
  %14 = alloca %struct.mmc_data, align 8
  %15 = alloca %struct.scatterlist, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = bitcast %struct.mmc_request* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast %struct.mmc_command* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = bitcast %struct.mmc_data* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %24, 15
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 1
  store %struct.mmc_command* %13, %struct.mmc_command** %26, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  store %struct.mmc_data* %14, %struct.mmc_data** %27, align 8
  %28 = load i32, i32* @SD_SWITCH, align 4
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 31
  %32 = or i32 %31, 16777215
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 4
  %36 = shl i32 15, %35
  %37 = xor i32 %36, -1
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %42, 4
  %44 = shl i32 %41, %43
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %49 = load i32, i32* @MMC_RSP_R1, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MMC_CMD_ADTC, align 4
  %52 = or i32 %50, %51
  %53 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  store i32 64, i32* %54, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @MMC_DATA_READ, align 4
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 5
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 4
  store %struct.scatterlist* %15, %struct.scatterlist** %58, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @sg_init_one(%struct.scatterlist* %15, i32* %60, i32 64)
  %62 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %63 = call i32 @mmc_set_data_timeout(%struct.mmc_data* %14, %struct.mmc_card* %62)
  %64 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %65 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @mmc_wait_for_req(i32 %66, %struct.mmc_request* %12)
  %68 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %5
  %72 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  br label %82

74:                                               ; preds = %5
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %6, align 4
  br label %82

81:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %78, %71
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #2

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_data*, %struct.mmc_card*) #2

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
