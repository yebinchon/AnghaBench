; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_card_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_card_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__, %struct.mmc_host* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.mmc_host = type { i32, i32 }

@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS_26 = common dso_local global i32 0, align 4
@MMC_HIGH_26_MAX_DTR = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS_52 = common dso_local global i32 0, align 4
@MMC_HIGH_52_MAX_DTR = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_3_3V_DDR = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_DDR_1_8V = common dso_local global i32 0, align 4
@MMC_HIGH_DDR_MAX_DTR = common dso_local global i32 0, align 4
@MMC_CAP_1_2V_DDR = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_DDR_1_2V = common dso_local global i32 0, align 4
@MMC_CAP2_HS200_1_8V_SDR = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS200_1_8V = common dso_local global i32 0, align 4
@MMC_HS200_MAX_DTR = common dso_local global i32 0, align 4
@MMC_CAP2_HS200_1_2V_SDR = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS200_1_2V = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_1_8V = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS400_1_8V = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_1_2V = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS400_1_2V = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_ES = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS400 = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_HS400ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @mmc_select_card_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_select_card_type(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %10 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 2
  %12 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  store %struct.mmc_host* %12, %struct.mmc_host** %3, align 8
  %13 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @EXT_CSD_CARD_TYPE_HS_26, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @MMC_HIGH_26_MAX_DTR, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @EXT_CSD_CARD_TYPE_HS_26, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %32, %27, %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @EXT_CSD_CARD_TYPE_HS_52, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @MMC_HIGH_52_MAX_DTR, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @EXT_CSD_CARD_TYPE_HS_52, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %47, %42, %37
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %55 = load i32, i32* @MMC_CAP_3_3V_DDR, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_1_8V, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @MMC_HIGH_DDR_MAX_DTR, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_1_8V, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %64, %59, %52
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MMC_CAP_1_2V_DDR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_1_2V, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @MMC_HIGH_DDR_MAX_DTR, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_1_2V, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %79, %74, %69
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @MMC_CAP2_HS200_1_8V_SDR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @EXT_CSD_CARD_TYPE_HS200_1_8V, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @EXT_CSD_CARD_TYPE_HS200_1_8V, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %94, %89, %84
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @MMC_CAP2_HS200_1_2V_SDR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @EXT_CSD_CARD_TYPE_HS200_1_2V, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @EXT_CSD_CARD_TYPE_HS200_1_2V, align 4
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %109, %104, %99
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @MMC_CAP2_HS400_1_8V, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @EXT_CSD_CARD_TYPE_HS400_1_8V, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @EXT_CSD_CARD_TYPE_HS400_1_8V, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %124, %119, %114
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @MMC_CAP2_HS400_1_2V, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @EXT_CSD_CARD_TYPE_HS400_1_2V, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @EXT_CSD_CARD_TYPE_HS400_1_2V, align 4
  %142 = load i32, i32* %9, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %139, %134, %129
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @MMC_CAP2_HS400_ES, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %144
  %150 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %151 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @EXT_CSD_CARD_TYPE_HS400, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @EXT_CSD_CARD_TYPE_HS400ES, align 4
  %162 = load i32, i32* %9, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %160, %155, %149, %144
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %167 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %171 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %175 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
