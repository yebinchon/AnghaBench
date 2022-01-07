; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_rdwr_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_rdwr_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SDIO Write ERR\0A\00", align 1
@RDWR_STATUS_FAILURE = common dso_local global i32 0, align 4
@MAX_POLL_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SDIO read err\0A\00", align 1
@FW_DUMP_DONE = common dso_local global i64 0, align 8
@RDWR_STATUS_DONE = common dso_local global i32 0, align 4
@WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"The ctrl reg was changed, re-try again\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"SDIO write err\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Fail to pull ctrl_data\0A\00", align 1
@RDWR_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i64)* @mwifiex_sdio_rdwr_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_rdwr_firmware(%struct.mwifiex_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sdio_mmc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %11, align 8
  store %struct.sdio_mmc_card* %12, %struct.sdio_mmc_card** %6, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %14 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %17 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %22 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sdio_writeb(i32 %15, i64 %20, i32 %25, i32* %7)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %30, i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %106, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MAX_POLL_TRIES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %109

39:                                               ; preds = %35
  %40 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %41 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %44 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @sdio_readb(i32 %42, i32 %47, i32* %7)
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %53 = load i32, i32* @ERROR, align 4
  %54 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %52, i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %124

56:                                               ; preds = %39
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @FW_DUMP_DONE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %109

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @RDWR_STATUS_DONE, align 4
  store i32 %69, i32* %3, align 4
  br label %124

70:                                               ; preds = %64, %61
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %73 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %70
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %80 = load i32, i32* @WARN, align 4
  %81 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %79, i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %83 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %86 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %91 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sdio_writeb(i32 %84, i64 %89, i32 %94, i32* %7)
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %78
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %100 = load i32, i32* @ERROR, align 4
  %101 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %99, i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %102, i32* %3, align 4
  br label %124

103:                                              ; preds = %78
  br label %104

104:                                              ; preds = %103, %70
  %105 = call i32 @usleep_range(i32 100, i32 200)
  br label %106

106:                                              ; preds = %104
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %35

109:                                              ; preds = %60, %35
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %6, align 8
  %112 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %110, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %119 = load i32, i32* @ERROR, align 4
  %120 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %118, i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* @RDWR_STATUS_FAILURE, align 4
  store i32 %121, i32* %3, align 4
  br label %124

122:                                              ; preds = %109
  %123 = load i32, i32* @RDWR_STATUS_SUCCESS, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %117, %98, %68, %51, %29
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @sdio_writeb(i32, i64, i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i64 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
