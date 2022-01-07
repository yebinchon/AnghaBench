; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_detect_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_detect_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@BE_ERROR_HW = common dso_local global i32 0, align 4
@SLIPORT_STATUS_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_STATUS_ERR_MASK = common dso_local global i32 0, align 4
@BE_ERROR_UE = common dso_local global i32 0, align 4
@SLIPORT_ERROR1_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_ERROR2_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_ERROR_FW_RESET1 = common dso_local global i32 0, align 4
@SLIPORT_ERROR_FW_RESET2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Reset is in progress\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error detected in the card\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ERR: sliport status 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ERR: sliport error1 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ERR: sliport error2 0x%x\0A\00", align 1
@PCICFG_UE_STATUS_LOW = common dso_local global i64 0, align 8
@PCICFG_UE_STATUS_HIGH = common dso_local global i64 0, align 8
@PCICFG_UE_STATUS_LOW_MASK = common dso_local global i64 0, align 8
@PCICFG_UE_STATUS_HI_MASK = common dso_local global i64 0, align 8
@POST_STAGE_FAT_LOG_START = common dso_local global i32 0, align 4
@POST_STAGE_ARMFW_UE = common dso_local global i32 0, align 4
@POST_STAGE_RECOVERABLE_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Error detected in the adapter\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"UE: %s bit set\0A\00", align 1
@ue_status_low_desc = common dso_local global i32* null, align 8
@ue_status_hi_desc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_detect_error(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %18 = load i32, i32* @BE_ERROR_HW, align 4
  %19 = call i64 @be_check_error(%struct.be_adapter* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %192

22:                                               ; preds = %1
  %23 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %24 = call i64 @lancer_chip(%struct.be_adapter* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SLIPORT_STATUS_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ioread32(i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %26
  %38 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %39 = load i32, i32* @BE_ERROR_UE, align 4
  %40 = call i32 @be_set_error(%struct.be_adapter* %38, i32 %39)
  %41 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SLIPORT_ERROR1_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ioread32(i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SLIPORT_ERROR2_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @ioread32(i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SLIPORT_ERROR_FW_RESET1, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %37
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SLIPORT_ERROR_FW_RESET2, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.device*, %struct.device** %10, align 8
  %62 = call i32 @dev_info(%struct.device* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %75

63:                                               ; preds = %56, %37
  %64 = load %struct.device*, %struct.device** %10, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.device*, %struct.device** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.device*, %struct.device** %10, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %63, %60
  br label %76

76:                                               ; preds = %75, %26
  br label %192

77:                                               ; preds = %22
  %78 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PCICFG_UE_STATUS_LOW, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @ioread32(i64 %82)
  store i32 %83, i32* %3, align 4
  %84 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PCICFG_UE_STATUS_HIGH, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @ioread32(i64 %88)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PCICFG_UE_STATUS_LOW_MASK, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @ioread32(i64 %94)
  store i32 %95, i32* %5, align 4
  %96 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PCICFG_UE_STATUS_HI_MASK, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @ioread32(i64 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %5, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %6, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %77
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %191

115:                                              ; preds = %112, %77
  %116 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %117 = call i64 @BE3_chip(%struct.be_adapter* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %115
  %120 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %121 = call i32 @be_POST_stage_get(%struct.be_adapter* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @POST_STAGE_FAT_LOG_START, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @POST_STAGE_FAT_LOG_START, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %119
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @POST_STAGE_ARMFW_UE, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @POST_STAGE_ARMFW_UE, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @POST_STAGE_RECOVERABLE_ERR, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @POST_STAGE_RECOVERABLE_ERR, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %192

140:                                              ; preds = %133, %127, %119
  br label %141

141:                                              ; preds = %140, %115
  %142 = load %struct.device*, %struct.device** %10, align 8
  %143 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %142, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %144 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %145 = load i32, i32* @BE_ERROR_UE, align 4
  %146 = call i32 @be_set_error(%struct.be_adapter* %144, i32 %145)
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %163, %141
  %148 = load i32, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %147
  %151 = load i32, i32* %3, align 4
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load %struct.device*, %struct.device** %10, align 8
  %156 = load i32*, i32** @ue_status_low_desc, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %154, %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %3, align 4
  %165 = ashr i32 %164, 1
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %147

168:                                              ; preds = %147
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %185, %168
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %169
  %173 = load i32, i32* %4, align 4
  %174 = and i32 %173, 1
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load %struct.device*, %struct.device** %10, align 8
  %178 = load i32*, i32** @ue_status_hi_desc, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %176, %172
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %4, align 4
  %187 = ashr i32 %186, 1
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %169

190:                                              ; preds = %169
  br label %191

191:                                              ; preds = %190, %112
  br label %192

192:                                              ; preds = %21, %139, %191, %76
  ret void
}

declare dso_local i64 @be_check_error(%struct.be_adapter*, i32) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @be_set_error(%struct.be_adapter*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_POST_stage_get(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
