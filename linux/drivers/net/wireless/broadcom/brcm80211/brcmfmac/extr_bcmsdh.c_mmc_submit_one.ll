; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_mmc_submit_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_mmc_submit_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_data = type { i32, i32, i32 }
%struct.mmc_request = type { i32 }
%struct.mmc_command = type { i32, i32 }
%struct.brcmf_sdio_dev = type { i32 }
%struct.sdio_func = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@BRCMF_SDIOD_NOMEDIUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CMD53 sg block %s failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_data*, %struct.mmc_request*, %struct.mmc_command*, i32, i32, i32, i32*, %struct.brcmf_sdio_dev*, %struct.sdio_func*, i32)* @mmc_submit_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_submit_one(%struct.mmc_data* %0, %struct.mmc_request* %1, %struct.mmc_command* %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.brcmf_sdio_dev* %7, %struct.sdio_func* %8, i32 %9) #0 {
  %11 = alloca %struct.mmc_data*, align 8
  %12 = alloca %struct.mmc_request*, align 8
  %13 = alloca %struct.mmc_command*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.brcmf_sdio_dev*, align 8
  %19 = alloca %struct.sdio_func*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mmc_data* %0, %struct.mmc_data** %11, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %12, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store %struct.brcmf_sdio_dev* %7, %struct.brcmf_sdio_dev** %18, align 8
  store %struct.sdio_func* %8, %struct.sdio_func** %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = sdiv i32 %25, %26
  %28 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %17, align 8
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 131071
  %33 = shl i32 %32, 9
  %34 = load %struct.mmc_command*, %struct.mmc_command** %13, align 8
  %35 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 511
  %42 = load %struct.mmc_command*, %struct.mmc_command** %13, align 8
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sdio_func*, %struct.sdio_func** %19, align 8
  %47 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %10
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %10
  %56 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %57 = load %struct.sdio_func*, %struct.sdio_func** %19, align 8
  %58 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @mmc_set_data_timeout(%struct.mmc_data* %56, %struct.TYPE_2__* %59)
  %61 = load %struct.sdio_func*, %struct.sdio_func** %19, align 8
  %62 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  %67 = call i32 @mmc_wait_for_req(i32 %65, %struct.mmc_request* %66)
  %68 = load %struct.mmc_command*, %struct.mmc_command** %13, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = load %struct.mmc_command*, %struct.mmc_command** %13, align 8
  %74 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  br label %80

76:                                               ; preds = %55
  %77 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i32 [ %75, %72 ], [ %79, %76 ]
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* @ENOMEDIUM, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %18, align 8
  %88 = load i32, i32* @BRCMF_SDIOD_NOMEDIUM, align 4
  %89 = call i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev* %87, i32 %88)
  br label %103

90:                                               ; preds = %80
  %91 = load i32, i32* %21, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @brcmf_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %97, i32 %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %21, align 4
  br label %102

102:                                              ; preds = %93, %90
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %21, align 4
  ret i32 %104
}

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_data*, %struct.TYPE_2__*) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

declare dso_local i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
