; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c___mmc_select_powerclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c___mmc_select_powerclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.mmc_ext_csd, %struct.mmc_host* }
%struct.mmc_ext_csd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MMC_HIGH_26_MAX_DTR = common dso_local global i32 0, align 4
@MMC_HIGH_52_MAX_DTR = common dso_local global i32 0, align 4
@EXT_CSD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@MMC_HS200_MAX_DTR = common dso_local global i32 0, align 4
@EXT_CSD_DDR_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Voltage range not supported for power class\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_8BIT_MASK = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_8BIT_SHIFT = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_4BIT_MASK = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_4BIT_SHIFT = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_POWER_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @__mmc_select_powerclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mmc_select_powerclass(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca %struct.mmc_ext_csd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 1
  %12 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  store %struct.mmc_host* %12, %struct.mmc_host** %6, align 8
  %13 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 0
  store %struct.mmc_ext_csd* %14, %struct.mmc_ext_csd** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  switch i32 %19, label %122 [
    i32 137, label %20
    i32 136, label %66
    i32 135, label %66
    i32 134, label %66
    i32 133, label %66
    i32 132, label %66
    i32 131, label %66
    i32 130, label %66
    i32 129, label %66
    i32 128, label %66
  ]

20:                                               ; preds = %2
  %21 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %22 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMC_HIGH_26_MAX_DTR, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %29 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %65

31:                                               ; preds = %20
  %32 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MMC_HIGH_52_MAX_DTR, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @EXT_CSD_BUS_WIDTH_8, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %44 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %48 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i32 [ %45, %42 ], [ %49, %46 ]
  store i32 %51, i32* %8, align 4
  br label %64

52:                                               ; preds = %31
  %53 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %54 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %61 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %27
  br label %128

66:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %67 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %68 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MMC_HIGH_26_MAX_DTR, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %75 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  br label %121

77:                                               ; preds = %66
  %78 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %79 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MMC_HIGH_52_MAX_DTR, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @EXT_CSD_BUS_WIDTH_8, align 4
  %87 = icmp ule i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %90 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %94 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %91, %88 ], [ %95, %92 ]
  store i32 %97, i32* %8, align 4
  br label %120

98:                                               ; preds = %77
  %99 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %100 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MMC_HS200_MAX_DTR, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @EXT_CSD_DDR_BUS_WIDTH_8, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %111 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  br label %117

113:                                              ; preds = %105
  %114 = load %struct.mmc_ext_csd*, %struct.mmc_ext_csd** %7, align 8
  %115 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i32 [ %112, %109 ], [ %116, %113 ]
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %117, %98
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120, %73
  br label %128

122:                                              ; preds = %2
  %123 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %124 = call i32 @mmc_hostname(%struct.mmc_host* %123)
  %125 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %162

128:                                              ; preds = %121, %65
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @EXT_CSD_BUS_WIDTH_8, align 4
  %131 = load i32, i32* @EXT_CSD_DDR_BUS_WIDTH_8, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @EXT_CSD_PWR_CL_8BIT_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @EXT_CSD_PWR_CL_8BIT_SHIFT, align 4
  %140 = lshr i32 %138, %139
  store i32 %140, i32* %8, align 4
  br label %147

141:                                              ; preds = %128
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @EXT_CSD_PWR_CL_4BIT_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @EXT_CSD_PWR_CL_4BIT_SHIFT, align 4
  %146 = lshr i32 %144, %145
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %141, %135
  %148 = load i32, i32* %8, align 4
  %149 = icmp ugt i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %152 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %153 = load i32, i32* @EXT_CSD_POWER_CLASS, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %156 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.mmc_ext_csd, %struct.mmc_ext_csd* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @mmc_switch(%struct.mmc_card* %151, i32 %152, i32 %153, i32 %154, i32 %158)
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %150, %147
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %122
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_switch(%struct.mmc_card*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
