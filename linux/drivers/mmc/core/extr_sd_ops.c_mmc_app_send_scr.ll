; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_app_send_scr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_app_send_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i8**, i32 }
%struct.mmc_request = type { %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SD_APP_SEND_SCR = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_app_send_scr(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_request, align 8
  %6 = alloca %struct.mmc_command, align 8
  %7 = alloca %struct.mmc_data, align 8
  %8 = alloca %struct.scatterlist, align 4
  %9 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %10 = bitcast %struct.mmc_request* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = bitcast %struct.mmc_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = bitcast %struct.mmc_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %17 = call i32 @mmc_app_cmd(i32 %15, %struct.mmc_card* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc(i32 8, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %88

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %5, i32 0, i32 1
  store %struct.mmc_command* %6, %struct.mmc_command** %31, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %5, i32 0, i32 0
  store %struct.mmc_data* %7, %struct.mmc_data** %32, align 8
  %33 = load i32, i32* @SD_APP_SEND_SCR, align 4
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %37 = load i32, i32* @MMC_RSP_R1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MMC_CMD_ADTC, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 0
  store i32 8, i32* %42, align 8
  %43 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @MMC_DATA_READ, align 4
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 4
  store %struct.scatterlist* %8, %struct.scatterlist** %46, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @sg_init_one(%struct.scatterlist* %8, i32* %48, i32 8)
  %50 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %51 = call i32 @mmc_set_data_timeout(%struct.mmc_data* %7, %struct.mmc_card* %50)
  %52 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %53 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mmc_wait_for_req(i32 %54, %struct.mmc_request* %5)
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @be32_to_cpu(i32 %58)
  %60 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %59, i8** %63, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %69 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  store i8* %67, i8** %71, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %30
  %78 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %2, align 4
  br label %88

80:                                               ; preds = %30
  %81 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %7, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %84, %77, %27, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_app_cmd(i32, %struct.mmc_card*) #2

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #2

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_data*, %struct.mmc_card*) #2

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #2

declare dso_local i8* @be32_to_cpu(i32) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
