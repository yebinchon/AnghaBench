; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_check_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i64, i64, i32, i32, i64, %struct.TYPE_2__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i64, %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i64 }

@QLCNIC_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLCNIC_DEV_NEED_RESET = common dso_local global i64 0, align 8
@QLCNIC_DEV_NEED_QUISCENT = common dso_local global i64 0, align 8
@QLCNIC_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@qlcnic_auto_fw_reset = common dso_local global i64 0, align 8
@FW_FAIL_THRESH = common dso_local global i64 0, align 8
@QLCNIC_FW_HANG = common dso_local global i32 0, align 4
@__QLCNIC_FW_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"firmware hang detected\0A\00", align 1
@QLCNIC_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [172 x i8] c"Dumping hw/fw registers\0APEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0APEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\0APEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\0APEG_NET_4_PC: 0x%x\0A\00", align 1
@QLCNIC_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4
@QLCNIC_CRB_PEG_NET_0 = common dso_local global i64 0, align 8
@QLCNIC_CRB_PEG_NET_1 = common dso_local global i64 0, align 8
@QLCNIC_CRB_PEG_NET_2 = common dso_local global i64 0, align 8
@QLCNIC_CRB_PEG_NET_3 = common dso_local global i64 0, align 8
@QLCNIC_CRB_PEG_NET_4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"Firmware aborted with error code 0x00006700. Device is being reset.\0A\00", align 1
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@qlcnic_detach_work = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"fw recovery scheduled.\0A\00", align 1
@QLCNIC_FW_RESET_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_check_health(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlcnic_fw_dump*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 7
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %11, align 8
  store %struct.qlcnic_hardware_context* %12, %struct.qlcnic_hardware_context** %4, align 8
  %13 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %14 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %13, i32 0, i32 1
  store %struct.qlcnic_fw_dump* %14, %struct.qlcnic_fw_dump** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = call i64 @qlcnic_check_temp(%struct.qlcnic_adapter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %148

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = call i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %30 = call i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @QLCNIC_DEV_NEED_RESET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i32 @qlcnic_set_npar_non_operational(%struct.qlcnic_adapter* %35)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %45

39:                                               ; preds = %27
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @QLCNIC_DEV_NEED_QUISCENT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %148

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = load i32, i32* @QLCNIC_PEG_ALIVE_COUNTER, align 4
  %48 = call i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %46, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %45
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %148

65:                                               ; preds = %54
  %66 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %67 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i64, i64* @qlcnic_auto_fw_reset, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %75 = call i32 @qlcnic_reset_hw_context(%struct.qlcnic_adapter* %74)
  br label %76

76:                                               ; preds = %73, %70, %65
  store i32 0, i32* %2, align 4
  br label %195

77:                                               ; preds = %45
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load i64, i64* @FW_FAIL_THRESH, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %195

85:                                               ; preds = %77
  %86 = load i32, i32* @QLCNIC_FW_HANG, align 4
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %92 = call i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter* %91, i32 0)
  %93 = load i64, i64* @qlcnic_auto_fw_reset, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load i32, i32* @__QLCNIC_FW_ATTACHED, align 4
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %97, i32 0, i32 4
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  br label %100

100:                                              ; preds = %95, %85
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %101, i32 0, i32 6
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %107 = load i32, i32* @QLCNIC_PEG_HALT_STATUS1, align 4
  %108 = call i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %106, i32 %107)
  store i64 %108, i64* %8, align 8
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %109, i32 0, i32 6
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %115 = load i32, i32* @QLCNIC_PEG_HALT_STATUS2, align 4
  %116 = call i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %114, i32 %115)
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %118 = load i64, i64* @QLCNIC_CRB_PEG_NET_0, align 8
  %119 = add nsw i64 %118, 60
  %120 = call i32 @QLCRD32(%struct.qlcnic_adapter* %117, i64 %119, i32* %9)
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %122 = load i64, i64* @QLCNIC_CRB_PEG_NET_1, align 8
  %123 = add nsw i64 %122, 60
  %124 = call i32 @QLCRD32(%struct.qlcnic_adapter* %121, i64 %123, i32* %9)
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %126 = load i64, i64* @QLCNIC_CRB_PEG_NET_2, align 8
  %127 = add nsw i64 %126, 60
  %128 = call i32 @QLCRD32(%struct.qlcnic_adapter* %125, i64 %127, i32* %9)
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %130 = load i64, i64* @QLCNIC_CRB_PEG_NET_3, align 8
  %131 = add nsw i64 %130, 60
  %132 = call i32 @QLCRD32(%struct.qlcnic_adapter* %129, i64 %131, i32* %9)
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %134 = load i64, i64* @QLCNIC_CRB_PEG_NET_4, align 8
  %135 = add nsw i64 %134, 60
  %136 = call i32 @QLCRD32(%struct.qlcnic_adapter* %133, i64 %135, i32* %9)
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.1, i64 0, i64 0), i64 %113, i64 %116, i32 %120, i32 %124, i32 %128, i32 %132, i32 %136)
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @QLCNIC_FWERROR_CODE(i64 %138)
  %140 = icmp eq i32 %139, 103
  br i1 %140, label %141, label %147

141:                                              ; preds = %100
  %142 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %142, i32 0, i32 6
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %141, %100
  br label %148

148:                                              ; preds = %147, %64, %43, %18
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @QLCNIC_DEV_NEED_QUISCENT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* %6, align 8
  br label %156

154:                                              ; preds = %148
  %155 = load i64, i64* @QLCNIC_DEV_NEED_RESET, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i64 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* @qlcnic_auto_fw_reset, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %164 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %164, i32 0, i32 4
  %166 = call i32 @test_and_set_bit(i32 %163, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %162
  %169 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %170 = load i32, i32* @qlcnic_detach_work, align 4
  %171 = call i32 @qlcnic_schedule_work(%struct.qlcnic_adapter* %169, i32 %170, i32 0)
  %172 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %173 = load i32, i32* @DRV, align 4
  %174 = call i32 @QLCDB(%struct.qlcnic_adapter* %172, i32 %173, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %194

175:                                              ; preds = %162, %156
  %176 = load i64, i64* @qlcnic_auto_fw_reset, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %175
  %179 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %5, align 8
  %180 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @QLCNIC_FW_RESET_OWNER, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %192 = call i32 @qlcnic_dump_fw(%struct.qlcnic_adapter* %191)
  br label %193

193:                                              ; preds = %190, %183, %178, %175
  br label %194

194:                                              ; preds = %193, %168
  store i32 1, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %84, %76
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i64 @qlcnic_check_temp(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_dev_request_reset(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_set_npar_non_operational(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_reset_hw_context(%struct.qlcnic_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i64, i32*) #1

declare dso_local i32 @QLCNIC_FWERROR_CODE(i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_schedule_work(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @QLCDB(%struct.qlcnic_adapter*, i32, i8*) #1

declare dso_local i32 @qlcnic_dump_fw(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
