; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_cec = type { i32, i64, i64, i32*, i32, i64, i32*, i32 }

@TEGRA_CEC_INT_STAT = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT_TX_REGISTER_UNDERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"TX underrun, interrupt timing issue!\0A\00", align 1
@TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT_TX_ARBITRATION_FAILED = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED = common dso_local global i32 0, align 4
@CEC_TX_STATUS_LOW_DRIVE = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ARB_LOST = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"TX NAKed on the fly!\0A\00", align 1
@TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY = common dso_local global i32 0, align 4
@TEGRA_CEC_TX_REGISTER = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED = common dso_local global i32 0, align 4
@TEGRA_CEC_INT_STAT_RX_REGISTER_FULL = common dso_local global i32 0, align 4
@TEGRA_CEC_RX_REGISTER = common dso_local global i32 0, align 4
@CEC_MAX_MSG_SIZE = common dso_local global i64 0, align 8
@TEGRA_CEC_RX_REGISTER_EOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_cec_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_cec_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tegra_cec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.device*
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.tegra_cec* @dev_get_drvdata(%struct.device* %13)
  store %struct.tegra_cec* %14, %struct.tegra_cec** %7, align 8
  %15 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %16 = load i32, i32* @TEGRA_CEC_INT_STAT, align 4
  %17 = call i32 @cec_read(%struct.tegra_cec* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %19 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %20 = call i32 @cec_read(%struct.tegra_cec* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %219

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_REGISTER_UNDERRUN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %37 = call i32 @tegra_cec_error_recovery(%struct.tegra_cec* %36)
  %38 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %39 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @cec_write(%struct.tegra_cec* %38, i32 %39, i32 %43)
  %45 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %46 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %48 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %49 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %50, i32* %3, align 4
  br label %219

51:                                               ; preds = %28
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_ARBITRATION_FAILED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %56, %51
  %62 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %63 = call i32 @tegra_cec_error_recovery(%struct.tegra_cec* %62)
  %64 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %65 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @cec_write(%struct.tegra_cec* %64, i32 %65, i32 %69)
  %71 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %72 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %61
  %78 = load i32, i32* @CEC_TX_STATUS_LOW_DRIVE, align 4
  %79 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %80 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  br label %85

81:                                               ; preds = %61
  %82 = load i32, i32* @CEC_TX_STATUS_ARB_LOST, align 4
  %83 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %84 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %86, i32* %3, align 4
  br label %219

87:                                               ; preds = %56
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %87
  %93 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %94 = load i32, i32* @TEGRA_CEC_INT_STAT, align 4
  %95 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED, align 4
  %96 = call i32 @cec_write(%struct.tegra_cec* %93, i32 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %92
  %102 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %103 = call i32 @tegra_cec_error_recovery(%struct.tegra_cec* %102)
  %104 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %105 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %107 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %108 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  br label %115

109:                                              ; preds = %92
  %110 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %111 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %113 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %114 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %109, %101
  %116 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %116, i32* %3, align 4
  br label %219

117:                                              ; preds = %87
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 @dev_warn(%struct.device* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %164

130:                                              ; preds = %125
  %131 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %132 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %135 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %130
  %139 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %140 = load i32, i32* @TEGRA_CEC_INT_MASK, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = call i32 @cec_write(%struct.tegra_cec* %139, i32 %140, i32 %144)
  br label %163

146:                                              ; preds = %130
  %147 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %148 = load i32, i32* @TEGRA_CEC_TX_REGISTER, align 4
  %149 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %150 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %153 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  %156 = getelementptr inbounds i32, i32* %151, i64 %154
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @cec_write(%struct.tegra_cec* %147, i32 %148, i32 %157)
  %159 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %160 = load i32, i32* @TEGRA_CEC_INT_STAT, align 4
  %161 = load i32, i32* @TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY, align 4
  %162 = call i32 @cec_write(%struct.tegra_cec* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %146, %138
  br label %164

164:                                              ; preds = %163, %125
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %171 = load i32, i32* @TEGRA_CEC_INT_STAT, align 4
  %172 = load i32, i32* @TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED, align 4
  %173 = call i32 @cec_write(%struct.tegra_cec* %170, i32 %171, i32 %172)
  %174 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %175 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %174, i32 0, i32 4
  store i32 0, i32* %175, align 8
  %176 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %177 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %176, i32 0, i32 5
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %169, %164
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @TEGRA_CEC_INT_STAT_RX_REGISTER_FULL, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %217

183:                                              ; preds = %178
  %184 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %185 = load i32, i32* @TEGRA_CEC_INT_STAT, align 4
  %186 = load i32, i32* @TEGRA_CEC_INT_STAT_RX_REGISTER_FULL, align 4
  %187 = call i32 @cec_write(%struct.tegra_cec* %184, i32 %185, i32 %186)
  %188 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %189 = load i32, i32* @TEGRA_CEC_RX_REGISTER, align 4
  %190 = call i32 @cec_read(%struct.tegra_cec* %188, i32 %189)
  store i32 %190, i32* %10, align 4
  %191 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %192 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CEC_MAX_MSG_SIZE, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %183
  %197 = load i32, i32* %10, align 4
  %198 = and i32 %197, 255
  %199 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %200 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %203 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  %206 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 %198, i32* %206, align 4
  br label %207

207:                                              ; preds = %196, %183
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @TEGRA_CEC_RX_REGISTER_EOM, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.tegra_cec*, %struct.tegra_cec** %7, align 8
  %214 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %213, i32 0, i32 4
  store i32 1, i32* %214, align 8
  %215 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %215, i32* %3, align 4
  br label %219

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %216, %178
  %218 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %217, %212, %115, %85, %33, %26
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local %struct.tegra_cec* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cec_read(%struct.tegra_cec*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @tegra_cec_error_recovery(%struct.tegra_cec*) #1

declare dso_local i32 @cec_write(%struct.tegra_cec*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
