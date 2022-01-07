; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, i32, i64 }

@SDHCI_HS400_TUNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: Found good phase = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: Setting the tuning phase to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: No tuning point found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @sdhci_msm_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_msm_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [16 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mmc_ios, align 4
  %13 = alloca %struct.sdhci_pltfm_host*, align 8
  %14 = alloca %struct.sdhci_msm_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %16 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %15)
  store %struct.sdhci_host* %16, %struct.sdhci_host** %6, align 8
  store i32 3, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast %struct.mmc_ios* %12 to i8*
  %22 = bitcast %struct.mmc_ios* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %24 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %23)
  store %struct.sdhci_pltfm_host* %24, %struct.sdhci_pltfm_host** %13, align 8
  %25 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %13, align 8
  %26 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %25)
  store %struct.sdhci_msm_host* %26, %struct.sdhci_msm_host** %14, align 8
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %28 = call i32 @sdhci_msm_is_tuning_needed(%struct.sdhci_host* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %2
  %31 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %14, align 8
  %32 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %34 = call i32 @sdhci_msm_set_cdr(%struct.sdhci_host* %33, i32 0)
  store i32 0, i32* %3, align 4
  br label %152

35:                                               ; preds = %2
  %36 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %14, align 8
  %37 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %46 = call i32 @sdhci_msm_hc_select_mode(%struct.sdhci_host* %45)
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %48 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @msm_set_clock_rate_for_bus_mode(%struct.sdhci_host* %47, i32 %49)
  %51 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %54 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %44, %35
  br label %58

58:                                               ; preds = %135, %57
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %60 = call i32 @msm_init_cm_dll(%struct.sdhci_host* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %152

65:                                               ; preds = %58
  store i64 0, i64* %8, align 8
  br label %66

66:                                               ; preds = %92, %65
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @msm_config_cm_dll_phase(%struct.sdhci_host* %67, i64 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %152

74:                                               ; preds = %66
  %75 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @mmc_send_tuning(%struct.mmc_host* %75, i32 %76, i32* null)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %10, align 8
  %84 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 %82
  store i64 %81, i64* %84, align 8
  %85 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %86 = call i32 @mmc_dev(%struct.mmc_host* %85)
  %87 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %88 = call i32 @mmc_hostname(%struct.mmc_host* %87)
  %89 = load i64, i64* %8, align 8
  %90 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %80, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %8, align 8
  %95 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %96 = call i64 @ARRAY_SIZE(i64* %95)
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %66, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %103 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @msm_find_most_appropriate_phase(%struct.sdhci_host* %102, i64* %103, i64 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %3, align 4
  br label %152

110:                                              ; preds = %101
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %110
  %114 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @msm_config_cm_dll_phase(%struct.sdhci_host* %114, i64 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %152

121:                                              ; preds = %113
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %14, align 8
  %124 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %126 = call i32 @mmc_dev(%struct.mmc_host* %125)
  %127 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %128 = call i32 @mmc_hostname(%struct.mmc_host* %127)
  %129 = load i64, i64* %8, align 8
  %130 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %128, i64 %129)
  br label %144

131:                                              ; preds = %98
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %58

136:                                              ; preds = %131
  %137 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %138 = call i32 @mmc_dev(%struct.mmc_host* %137)
  %139 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %140 = call i32 @mmc_hostname(%struct.mmc_host* %139)
  %141 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %136, %121
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %14, align 8
  %149 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %119, %108, %72, %63, %30
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_msm_is_tuning_needed(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_msm_set_cdr(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_msm_hc_select_mode(%struct.sdhci_host*) #1

declare dso_local i32 @msm_set_clock_rate_for_bus_mode(%struct.sdhci_host*, i32) #1

declare dso_local i32 @msm_init_cm_dll(%struct.sdhci_host*) #1

declare dso_local i32 @msm_config_cm_dll_phase(%struct.sdhci_host*, i64) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @msm_find_most_appropriate_phase(%struct.sdhci_host*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
