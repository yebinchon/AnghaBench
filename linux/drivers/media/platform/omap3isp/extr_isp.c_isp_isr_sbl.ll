; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_isr_sbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_isr_sbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__, %struct.device* }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.device = type { i32 }
%struct.isp_pipeline = type { i32 }

@OMAP3_ISP_IOMEM_SBL = common dso_local global i32 0, align 4
@ISPSBL_PCR = common dso_local global i32 0, align 4
@ISPSBL_PCR_CCDCPRV_2_RSZ_OVF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SBL overflow (PCR = 0x%08x)\0A\00", align 1
@ISPSBL_PCR_CSIB_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_CSIA_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_CCDC_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_PRV_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_RSZ1_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_RSZ2_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_RSZ3_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_RSZ4_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_H3A_AF_WBL_OVF = common dso_local global i32 0, align 4
@ISPSBL_PCR_H3A_AEAWB_WBL_OVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*)* @isp_isr_sbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_isr_sbl(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.isp_pipeline*, align 8
  %5 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 7
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %10 = load i32, i32* @OMAP3_ISP_IOMEM_SBL, align 4
  %11 = load i32, i32* @ISPSBL_PCR, align 4
  %12 = call i32 @isp_reg_readl(%struct.isp_device* %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @OMAP3_ISP_IOMEM_SBL, align 4
  %16 = load i32, i32* @ISPSBL_PCR, align 4
  %17 = call i32 @isp_reg_writel(%struct.isp_device* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @ISPSBL_PCR_CCDCPRV_2_RSZ_OVF, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ISPSBL_PCR_CSIB_WBL_OVF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %35 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %37)
  store %struct.isp_pipeline* %38, %struct.isp_pipeline** %4, align 8
  %39 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %40 = icmp ne %struct.isp_pipeline* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %43 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ISPSBL_PCR_CSIA_WBL_OVF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %52 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %54)
  store %struct.isp_pipeline* %55, %struct.isp_pipeline** %4, align 8
  %56 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %57 = icmp ne %struct.isp_pipeline* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %60 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ISPSBL_PCR_CCDC_WBL_OVF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %69 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %71)
  store %struct.isp_pipeline* %72, %struct.isp_pipeline** %4, align 8
  %73 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %74 = icmp ne %struct.isp_pipeline* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %77 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %67
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ISPSBL_PCR_PRV_WBL_OVF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %86 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %88)
  store %struct.isp_pipeline* %89, %struct.isp_pipeline** %4, align 8
  %90 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %91 = icmp ne %struct.isp_pipeline* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %94 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %84
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @ISPSBL_PCR_RSZ1_WBL_OVF, align 4
  %99 = load i32, i32* @ISPSBL_PCR_RSZ2_WBL_OVF, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @ISPSBL_PCR_RSZ3_WBL_OVF, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @ISPSBL_PCR_RSZ4_WBL_OVF, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %97, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %96
  %108 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %109 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %111)
  store %struct.isp_pipeline* %112, %struct.isp_pipeline** %4, align 8
  %113 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %114 = icmp ne %struct.isp_pipeline* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %117 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %107
  br label %119

119:                                              ; preds = %118, %96
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @ISPSBL_PCR_H3A_AF_WBL_OVF, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %126 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %125, i32 0, i32 1
  %127 = call i32 @omap3isp_stat_sbl_overflow(i32* %126)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @ISPSBL_PCR_H3A_AEAWB_WBL_OVF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %135 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %134, i32 0, i32 0
  %136 = call i32 @omap3isp_stat_sbl_overflow(i32* %135)
  br label %137

137:                                              ; preds = %133, %128
  ret void
}

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @omap3isp_stat_sbl_overflow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
