; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_is_device_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_is_device_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%-5d%-9s%#-14x%#-16x%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%-5d%-9s%#-14x%#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"\0ADMA  is_idle  QM_GLBL_STS0  DMA_CORE_STS0\0A---  -------  ------------  -------------\0A\00", align 1
@mmDMA_QM_1_GLBL_STS0 = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_STS0 = common dso_local global i32 0, align 4
@DMA_MAX_NUM = common dso_local global i32 0, align 4
@mmDMA_CH_0_STS0 = common dso_local global i32 0, align 4
@GOYA_ENGINE_ID_DMA_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [112 x i8] c"\0ATPC  is_idle  QM_GLBL_STS0  CMDQ_GLBL_STS0  CFG_STATUS\0A---  -------  ------------  --------------  ----------\0A\00", align 1
@mmTPC1_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@TPC_MAX_NUM = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@mmTPC0_CFG_STATUS = common dso_local global i32 0, align 4
@GOYA_ENGINE_ID_TPC_0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [114 x i8] c"\0AMME  is_idle  QM_GLBL_STS0  CMDQ_GLBL_STS0  ARCH_STATUS\0A---  -------  ------------  --------------  -----------\0A\00", align 1
@mmMME_QM_GLBL_STS0 = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_STS0 = common dso_local global i32 0, align 4
@mmMME_ARCH_STATUS = common dso_local global i32 0, align 4
@GOYA_ENGINE_ID_MME_0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32*, %struct.seq_file*)* @goya_is_device_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_is_device_idle(%struct.hl_device* %0, i32* %1, %struct.seq_file* %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* %14, align 4
  %18 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %19 = icmp ne %struct.seq_file* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %22 = call i32 @seq_puts(%struct.seq_file* %21, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @mmDMA_QM_1_GLBL_STS0, align 4
  %25 = load i32, i32* @mmDMA_QM_0_GLBL_STS0, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %86, %23
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @DMA_MAX_NUM, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = load i32, i32* @mmDMA_QM_0_GLBL_STS0, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %16, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %32, %35
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @mmDMA_CH_0_STS0, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %16, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %38, %41
  %43 = call i32 @RREG32(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @IS_DMA_QM_IDLE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @IS_DMA_IDLE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %47, %31
  %52 = phi i1 [ false, %31 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* @GOYA_ENGINE_ID_DMA_0, align 4
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %64, %65
  %67 = shl i32 %63, %66
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %59, %51
  %72 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %73 = icmp ne %struct.seq_file* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (%struct.seq_file*, i8*, i32, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %75, i8* %76, i32 %77, i8* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %74, %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %27

89:                                               ; preds = %27
  %90 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %91 = icmp ne %struct.seq_file* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %94 = call i32 @seq_puts(%struct.seq_file* %93, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @mmTPC1_QM_GLBL_STS0, align 4
  %97 = load i32, i32* @mmTPC0_QM_GLBL_STS0, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %169, %95
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @TPC_MAX_NUM, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %172

103:                                              ; preds = %99
  %104 = load i32, i32* @mmTPC0_QM_GLBL_STS0, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = mul nsw i32 %105, %106
  %108 = add nsw i32 %104, %107
  %109 = call i32 @RREG32(i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* @mmTPC0_CMDQ_GLBL_STS0, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %16, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = call i32 @RREG32(i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @mmTPC0_CFG_STATUS, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %16, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = call i32 @RREG32(i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @IS_TPC_QM_IDLE(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %103
  %126 = load i32, i32* %10, align 4
  %127 = call i64 @IS_TPC_CMDQ_IDLE(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  %131 = call i64 @IS_TPC_IDLE(i32 %130)
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %129, %125, %103
  %134 = phi i1 [ false, %125 ], [ false, %103 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %14, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %14, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* @GOYA_ENGINE_ID_TPC_0, align 4
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %146, %147
  %149 = shl i32 %145, %148
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %141, %133
  %154 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %155 = icmp ne %struct.seq_file* %154, null
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %158 = load i8*, i8** %7, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 (%struct.seq_file*, i8*, i32, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %157, i8* %158, i32 %159, i8* %163, i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %156, %153
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %99

172:                                              ; preds = %99
  %173 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %174 = icmp ne %struct.seq_file* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %177 = call i32 @seq_puts(%struct.seq_file* %176, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* @mmMME_QM_GLBL_STS0, align 4
  %180 = call i32 @RREG32(i32 %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* @mmMME_CMDQ_GLBL_STS0, align 4
  %182 = call i32 @RREG32(i32 %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* @mmMME_ARCH_STATUS, align 4
  %184 = call i32 @RREG32(i32 %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i64 @IS_MME_QM_IDLE(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %178
  %189 = load i32, i32* %10, align 4
  %190 = call i64 @IS_MME_CMDQ_IDLE(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* %13, align 4
  %194 = call i64 @IS_MME_IDLE(i32 %193)
  %195 = icmp ne i64 %194, 0
  br label %196

196:                                              ; preds = %192, %188, %178
  %197 = phi i1 [ false, %188 ], [ false, %178 ], [ %195, %192 ]
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %14, align 4
  %201 = and i32 %200, %199
  store i32 %201, i32* %14, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %214

204:                                              ; preds = %196
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = load i32, i32* @GOYA_ENGINE_ID_MME_0, align 4
  %210 = shl i32 %208, %209
  %211 = load i32*, i32** %5, align 8
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %210
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %204, %196
  %215 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %216 = icmp ne %struct.seq_file* %215, null
  br i1 %216, label %217, label %230

217:                                              ; preds = %214
  %218 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %219 = load i8*, i8** %7, align 8
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %13, align 4
  %227 = call i32 (%struct.seq_file*, i8*, i32, i8*, i32, i32, ...) @seq_printf(%struct.seq_file* %218, i8* %219, i32 0, i8* %223, i32 %224, i32 %225, i32 %226)
  %228 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %229 = call i32 @seq_puts(%struct.seq_file* %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %230

230:                                              ; preds = %217, %214
  %231 = load i32, i32* %14, align 4
  ret i32 %231
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @IS_DMA_QM_IDLE(i32) #1

declare dso_local i64 @IS_DMA_IDLE(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @IS_TPC_QM_IDLE(i32) #1

declare dso_local i64 @IS_TPC_CMDQ_IDLE(i32) #1

declare dso_local i64 @IS_TPC_IDLE(i32) #1

declare dso_local i64 @IS_MME_QM_IDLE(i32) #1

declare dso_local i64 @IS_MME_CMDQ_IDLE(i32) #1

declare dso_local i64 @IS_MME_IDLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
