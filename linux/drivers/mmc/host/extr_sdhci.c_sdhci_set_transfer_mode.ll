; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_transfer_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_transfer_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32 }
%struct.mmc_command = type { i64, %struct.TYPE_4__*, %struct.mmc_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32, i32 }

@SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i64 0, align 8
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@SDHCI_TRNS_AUTO_CMD12 = common dso_local global i32 0, align 4
@SDHCI_TRNS_AUTO_CMD23 = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_SUPPORT_SINGLE = common dso_local global i32 0, align 4
@SDHCI_TRNS_BLK_CNT_EN = common dso_local global i32 0, align 4
@SDHCI_TRNS_MULTI = common dso_local global i32 0, align 4
@SDHCI_AUTO_CMD23 = common dso_local global i32 0, align 4
@SDHCI_ARGUMENT2 = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDHCI_TRNS_READ = common dso_local global i32 0, align 4
@SDHCI_REQ_USE_DMA = common dso_local global i32 0, align 4
@SDHCI_TRNS_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, %struct.mmc_command*)* @sdhci_set_transfer_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_transfer_mode(%struct.sdhci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_data*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %6, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %11 = icmp eq %struct.mmc_data* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMC_SEND_TUNING_BLOCK_HS200, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %27 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %28 = call i32 @sdhci_writew(%struct.sdhci_host* %26, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  br label %43

30:                                               ; preds = %12
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %32 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %33 = call i32 @sdhci_readw(%struct.sdhci_host* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SDHCI_TRNS_AUTO_CMD12, align 4
  %37 = load i32, i32* @SDHCI_TRNS_AUTO_CMD23, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %42 = call i32 @sdhci_writew(%struct.sdhci_host* %34, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %30, %29
  br label %130

44:                                               ; preds = %2
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SDHCI_QUIRK2_SUPPORT_SINGLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @SDHCI_TRNS_BLK_CNT_EN, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %44
  %61 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @mmc_op_multi(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %103

71:                                               ; preds = %66, %60
  %72 = load i32, i32* @SDHCI_TRNS_BLK_CNT_EN, align 4
  %73 = load i32, i32* @SDHCI_TRNS_MULTI, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %76 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %77 = call i32 @sdhci_auto_cmd_select(%struct.sdhci_host* %75, %struct.mmc_command* %76, i32* %5)
  %78 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = icmp ne %struct.TYPE_3__* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %71
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %86 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SDHCI_AUTO_CMD23, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %93 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %94 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SDHCI_ARGUMENT2, align 4
  %101 = call i32 @sdhci_writel(%struct.sdhci_host* %92, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %91, %84, %71
  br label %103

103:                                              ; preds = %102, %66
  %104 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %105 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MMC_DATA_READ, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @SDHCI_TRNS_READ, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %116 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SDHCI_REQ_USE_DMA, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load i32, i32* @SDHCI_TRNS_DMA, align 4
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %121, %114
  %126 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %129 = call i32 @sdhci_writew(%struct.sdhci_host* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %43
  ret void
}

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mmc_op_multi(i64) #1

declare dso_local i32 @sdhci_auto_cmd_select(%struct.sdhci_host*, %struct.mmc_command*, i32*) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
