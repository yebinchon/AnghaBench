; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, %struct.lmac*, i32, %struct.TYPE_2__* }
%struct.lmac = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BGX_CMR_GLOBAL_CFG = common dso_local global i32 0, align 4
@CMR_GLOBAL_CFG_FCS_STRIP = common dso_local global i64 0, align 8
@BGX_CMR_BIST_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"BGX%d BIST failed\0A\00", align 1
@BGX_CMRX_CFG = common dso_local global i64 0, align 8
@lmac_count = common dso_local global i32 0, align 4
@BGX_CMR_TX_LMACS = common dso_local global i64 0, align 8
@BGX_CMR_RX_LMACS = common dso_local global i64 0, align 8
@BGX_CMR_CHAN_MSK_AND = common dso_local global i32 0, align 4
@MAX_BGX_CHANS_PER_LMAC = common dso_local global i64 0, align 8
@RX_DMAC_COUNT = common dso_local global i32 0, align 4
@BGX_CMR_RX_DMACX_CAM = common dso_local global i64 0, align 8
@RX_TRAFFIC_STEER_RULE_COUNT = common dso_local global i32 0, align 4
@BGX_CMR_RX_STEERING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*)* @bgx_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_init_hw(%struct.bgx* %0) #0 {
  %2 = alloca %struct.bgx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lmac*, align 8
  store %struct.bgx* %0, %struct.bgx** %2, align 8
  %5 = load %struct.bgx*, %struct.bgx** %2, align 8
  %6 = load i32, i32* @BGX_CMR_GLOBAL_CFG, align 4
  %7 = load i64, i64* @CMR_GLOBAL_CFG_FCS_STRIP, align 8
  %8 = call i32 @bgx_reg_modify(%struct.bgx* %5, i32 0, i32 %6, i64 %7)
  %9 = load %struct.bgx*, %struct.bgx** %2, align 8
  %10 = load i32, i32* @BGX_CMR_BIST_STATUS, align 4
  %11 = call i64 @bgx_reg_read(%struct.bgx* %9, i32 0, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.bgx*, %struct.bgx** %2, align 8
  %15 = getelementptr inbounds %struct.bgx, %struct.bgx* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.bgx*, %struct.bgx** %2, align 8
  %19 = getelementptr inbounds %struct.bgx, %struct.bgx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.bgx*, %struct.bgx** %2, align 8
  %26 = getelementptr inbounds %struct.bgx, %struct.bgx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = load %struct.bgx*, %struct.bgx** %2, align 8
  %31 = getelementptr inbounds %struct.bgx, %struct.bgx* %30, i32 0, i32 1
  %32 = load %struct.lmac*, %struct.lmac** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.lmac, %struct.lmac* %32, i64 %34
  store %struct.lmac* %35, %struct.lmac** %4, align 8
  %36 = load %struct.bgx*, %struct.bgx** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i64, i64* @BGX_CMRX_CFG, align 8
  %39 = load %struct.lmac*, %struct.lmac** %4, align 8
  %40 = getelementptr inbounds %struct.lmac, %struct.lmac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load %struct.lmac*, %struct.lmac** %4, align 8
  %44 = getelementptr inbounds %struct.lmac, %struct.lmac* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %42, %45
  %47 = call i32 @bgx_reg_write(%struct.bgx* %36, i32 %37, i64 %38, i32 %46)
  %48 = load i32, i32* @lmac_count, align 4
  %49 = load %struct.bgx*, %struct.bgx** %2, align 8
  %50 = getelementptr inbounds %struct.bgx, %struct.bgx* %49, i32 0, i32 1
  %51 = load %struct.lmac*, %struct.lmac** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.lmac, %struct.lmac* %51, i64 %53
  %55 = getelementptr inbounds %struct.lmac, %struct.lmac* %54, i32 0, i32 2
  store i32 %48, i32* %55, align 4
  %56 = load i32, i32* @lmac_count, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @lmac_count, align 4
  br label %58

58:                                               ; preds = %29
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load %struct.bgx*, %struct.bgx** %2, align 8
  %63 = load i64, i64* @BGX_CMR_TX_LMACS, align 8
  %64 = load %struct.bgx*, %struct.bgx** %2, align 8
  %65 = getelementptr inbounds %struct.bgx, %struct.bgx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bgx_reg_write(%struct.bgx* %62, i32 0, i64 %63, i32 %66)
  %68 = load %struct.bgx*, %struct.bgx** %2, align 8
  %69 = load i64, i64* @BGX_CMR_RX_LMACS, align 8
  %70 = load %struct.bgx*, %struct.bgx** %2, align 8
  %71 = getelementptr inbounds %struct.bgx, %struct.bgx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bgx_reg_write(%struct.bgx* %68, i32 0, i64 %69, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %92, %61
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.bgx*, %struct.bgx** %2, align 8
  %77 = getelementptr inbounds %struct.bgx, %struct.bgx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.bgx*, %struct.bgx** %2, align 8
  %82 = load i32, i32* @BGX_CMR_CHAN_MSK_AND, align 4
  %83 = load i64, i64* @MAX_BGX_CHANS_PER_LMAC, align 8
  %84 = shl i64 1, %83
  %85 = sub i64 %84, 1
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @MAX_BGX_CHANS_PER_LMAC, align 8
  %89 = mul i64 %87, %88
  %90 = shl i64 %85, %89
  %91 = call i32 @bgx_reg_modify(%struct.bgx* %81, i32 0, i32 %82, i64 %90)
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %74

95:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %108, %95
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @RX_DMAC_COUNT, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load %struct.bgx*, %struct.bgx** %2, align 8
  %102 = load i64, i64* @BGX_CMR_RX_DMACX_CAM, align 8
  %103 = load i32, i32* %3, align 4
  %104 = mul nsw i32 %103, 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = call i32 @bgx_reg_write(%struct.bgx* %101, i32 0, i64 %106, i32 0)
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %96

111:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %124, %111
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @RX_TRAFFIC_STEER_RULE_COUNT, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load %struct.bgx*, %struct.bgx** %2, align 8
  %118 = load i64, i64* @BGX_CMR_RX_STEERING, align 8
  %119 = load i32, i32* %3, align 4
  %120 = mul nsw i32 %119, 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %118, %121
  %123 = call i32 @bgx_reg_write(%struct.bgx* %117, i32 0, i64 %122, i32 0)
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %112

127:                                              ; preds = %112
  ret void
}

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i64) #1

declare dso_local i64 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
