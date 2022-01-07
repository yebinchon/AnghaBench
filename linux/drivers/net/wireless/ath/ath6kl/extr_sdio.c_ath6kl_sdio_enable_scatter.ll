; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_enable_scatter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_enable_scatter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.htc_target* }
%struct.htc_target = type { i32, i64 }
%struct.ath6kl_sdio = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MAX_SCATTER_ENTRIES_PER_REQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"host only supports scatter of :%d entries, need: %d\0A\00", align 1
@MAX_SCATTER_REQUESTS = common dso_local global i32 0, align 4
@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"hif-scatter enabled requests %d entries %d\0A\00", align 1
@MAX_SCATTER_REQ_TRANSFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"hif scatter resource setup failed, trying virtual scatter method\0A\00", align 1
@ATH6KL_SCATTER_ENTRIES_PER_REQ = common dso_local global i64 0, align 8
@ATH6KL_SCATTER_REQS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"failed to alloc virtual scatter resources !\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"virtual scatter enabled requests %d entries %d\0A\00", align 1
@ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_sdio_enable_scatter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_enable_scatter(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.ath6kl_sdio*, align 8
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %8 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %9 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %8)
  store %struct.ath6kl_sdio* %9, %struct.ath6kl_sdio** %4, align 8
  %10 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %11 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %10, i32 0, i32 0
  %12 = load %struct.htc_target*, %struct.htc_target** %11, align 8
  store %struct.htc_target* %12, %struct.htc_target** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %14 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

18:                                               ; preds = %1
  %19 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %20 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %22 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_SCATTER_ENTRIES_PER_REQ, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %18
  %33 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %34 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_SCATTER_ENTRIES_PER_REQ, align 8
  %43 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %32, %18
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %44
  %48 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %49 = load i64, i64* @MAX_SCATTER_ENTRIES_PER_REQ, align 8
  %50 = load i32, i32* @MAX_SCATTER_REQUESTS, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ath6kl_sdio_alloc_prep_scat_req(%struct.ath6kl_sdio* %48, i64 %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %57 = load i32, i32* @MAX_SCATTER_REQUESTS, align 4
  %58 = load i64, i64* @MAX_SCATTER_ENTRIES_PER_REQ, align 8
  %59 = call i32 @ath6kl_dbg(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %58)
  %60 = load i64, i64* @MAX_SCATTER_ENTRIES_PER_REQ, align 8
  %61 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %62 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @MAX_SCATTER_REQ_TRANSFER_SIZE, align 4
  %64 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %65 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %47
  %67 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %68 = call i32 @ath6kl_sdio_cleanup_scatter(%struct.ath6kl* %67)
  %69 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %55
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %74, %71
  %78 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %4, align 8
  %79 = load i64, i64* @ATH6KL_SCATTER_ENTRIES_PER_REQ, align 8
  %80 = load i32, i32* @ATH6KL_SCATTER_REQS, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @ath6kl_sdio_alloc_prep_scat_req(%struct.ath6kl_sdio* %78, i64 %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %88 = call i32 @ath6kl_sdio_cleanup_scatter(%struct.ath6kl* %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %102

90:                                               ; preds = %77
  %91 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %92 = load i32, i32* @ATH6KL_SCATTER_REQS, align 4
  %93 = load i64, i64* @ATH6KL_SCATTER_ENTRIES_PER_REQ, align 8
  %94 = call i32 @ath6kl_dbg(i32 %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %92, i64 %93)
  %95 = load i64, i64* @ATH6KL_SCATTER_ENTRIES_PER_REQ, align 8
  %96 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %97 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @ATH6KL_MAX_TRANSFER_SIZE_PER_SCATTER, align 4
  %99 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %100 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %90, %74
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %85, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

declare dso_local i32 @ath6kl_sdio_alloc_prep_scat_req(%struct.ath6kl_sdio*, i64, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @ath6kl_sdio_cleanup_scatter(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
