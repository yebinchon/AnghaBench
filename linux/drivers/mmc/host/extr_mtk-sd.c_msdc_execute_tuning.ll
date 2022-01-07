; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.msdc_host = type { i32, i64, %struct.TYPE_4__, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@MSDC_IOCON = common dso_local global i64 0, align 8
@MSDC_IOCON_DSPL = common dso_local global i32 0, align 4
@MSDC_IOCON_W_DSPL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Tune response fail!\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Tune data fail!\0A\00", align 1
@PAD_CMD_TUNE = common dso_local global i64 0, align 8
@EMMC_TOP_CONTROL = common dso_local global i64 0, align 8
@EMMC_TOP_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i64)* @msdc_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_execute_tuning(%struct.mmc_host* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.msdc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.msdc_host* %10, %struct.msdc_host** %6, align 8
  %11 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %12 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %17 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %24 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @msdc_tune_together(%struct.mmc_host* %30, i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %34 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %39 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MSDC_IOCON, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %44 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @sdr_clr_bits(i64 %42, i32 %45)
  %47 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %48 = call i32 @msdc_set_data_delay(%struct.msdc_host* %47, i32 0)
  br label %49

49:                                               ; preds = %37, %29
  br label %101

50:                                               ; preds = %22, %2
  %51 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %52 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %57 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %56, i32 0, i32 5
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @hs400_tune_response(%struct.mmc_host* %63, i64 %64)
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %55, %50
  %67 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @msdc_tune_response(%struct.mmc_host* %67, i64 %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %77 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %154

81:                                               ; preds = %70
  %82 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %83 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @msdc_tune_data(%struct.mmc_host* %87, i64 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %96 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %86
  br label %100

100:                                              ; preds = %99, %81
  br label %101

101:                                              ; preds = %100, %49
  %102 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %103 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MSDC_IOCON, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i8* @readl(i64 %106)
  %108 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %109 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  store i8* %107, i8** %110, align 8
  %111 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %112 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i8* @readl(i64 %115)
  %117 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %118 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  store i8* %116, i8** %119, align 8
  %120 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %121 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PAD_CMD_TUNE, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i8* @readl(i64 %124)
  %126 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %127 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %130 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %101
  %134 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %135 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @EMMC_TOP_CONTROL, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i8* @readl(i64 %138)
  %140 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %141 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  %143 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %144 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @EMMC_TOP_CMD, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i8* @readl(i64 %147)
  %149 = load %struct.msdc_host*, %struct.msdc_host** %6, align 8
  %150 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  br label %152

152:                                              ; preds = %133, %101
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %75
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @msdc_tune_together(%struct.mmc_host*, i64) #1

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

declare dso_local i32 @msdc_set_data_delay(%struct.msdc_host*, i32) #1

declare dso_local i32 @hs400_tune_response(%struct.mmc_host*, i64) #1

declare dso_local i32 @msdc_tune_response(%struct.mmc_host*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msdc_tune_data(%struct.mmc_host*, i64) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
