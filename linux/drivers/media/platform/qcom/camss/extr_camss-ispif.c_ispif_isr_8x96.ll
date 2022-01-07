; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_isr_8x96.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_isr_8x96.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i32, i64 }

@ISPIF_IRQ_GLOBAL_CLEAR_CMD = common dso_local global i64 0, align 8
@ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"VFE0 pix0 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"VFE0 rdi0 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"VFE0 pix1 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"VFE0 rdi1 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"VFE0 rdi2 overflow\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"VFE1 pix0 overflow\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"VFE1 rdi0 overflow\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"VFE1 pix1 overflow\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"VFE1 rdi1 overflow\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"VFE1 rdi2 overflow\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ispif_isr_8x96 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ispif_isr_8x96(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ispif_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ispif_device*
  store %struct.ispif_device* %13, %struct.ispif_device** %5, align 8
  %14 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %15 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @ISPIF_VFE_m_IRQ_STATUS_0(i32 0)
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %21 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @ISPIF_VFE_m_IRQ_STATUS_1(i32 0)
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %27 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @ISPIF_VFE_m_IRQ_STATUS_2(i32 0)
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %33 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ISPIF_VFE_m_IRQ_STATUS_0(i32 1)
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %39 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ISPIF_VFE_m_IRQ_STATUS_1(i32 1)
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl_relaxed(i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %45 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ISPIF_VFE_m_IRQ_STATUS_2(i32 1)
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl_relaxed(i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %52 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32 0)
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel_relaxed(i32 %50, i64 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %59 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32 0)
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel_relaxed(i32 %57, i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %66 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_2(i32 0)
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i32 %64, i64 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %73 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32 1)
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel_relaxed(i32 %71, i64 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %80 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32 1)
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel_relaxed(i32 %78, i64 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %87 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_2(i32 1)
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i32 %85, i64 %90)
  %92 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %93 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ISPIF_IRQ_GLOBAL_CLEAR_CMD, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 1, i64 %96)
  %98 = load i32, i32* %6, align 4
  %99 = ashr i32 %98, 27
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %2
  %103 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %104 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %103, i32 0, i32 0
  %105 = call i32 @complete(i32* %104)
  br label %106

106:                                              ; preds = %102, %2
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW, align 4
  %109 = and i32 %107, %108
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %114 = call i32 @to_device(%struct.ispif_device* %113)
  %115 = call i32 @dev_err_ratelimited(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %106
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW, align 4
  %119 = and i32 %117, %118
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %124 = call i32 @to_device(%struct.ispif_device* %123)
  %125 = call i32 @dev_err_ratelimited(i32 %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %116
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW, align 4
  %129 = and i32 %127, %128
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %134 = call i32 @to_device(%struct.ispif_device* %133)
  %135 = call i32 @dev_err_ratelimited(i32 %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %126
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW, align 4
  %139 = and i32 %137, %138
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %144 = call i32 @to_device(%struct.ispif_device* %143)
  %145 = call i32 @dev_err_ratelimited(i32 %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %146

146:                                              ; preds = %142, %136
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW, align 4
  %149 = and i32 %147, %148
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %154 = call i32 @to_device(%struct.ispif_device* %153)
  %155 = call i32 @dev_err_ratelimited(i32 %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW, align 4
  %159 = and i32 %157, %158
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %164 = call i32 @to_device(%struct.ispif_device* %163)
  %165 = call i32 @dev_err_ratelimited(i32 %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %156
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW, align 4
  %169 = and i32 %167, %168
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %174 = call i32 @to_device(%struct.ispif_device* %173)
  %175 = call i32 @dev_err_ratelimited(i32 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %172, %166
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW, align 4
  %179 = and i32 %177, %178
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %184 = call i32 @to_device(%struct.ispif_device* %183)
  %185 = call i32 @dev_err_ratelimited(i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %176
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW, align 4
  %189 = and i32 %187, %188
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %194 = call i32 @to_device(%struct.ispif_device* %193)
  %195 = call i32 @dev_err_ratelimited(i32 %194, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %196

196:                                              ; preds = %192, %186
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW, align 4
  %199 = and i32 %197, %198
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %204 = call i32 @to_device(%struct.ispif_device* %203)
  %205 = call i32 @dev_err_ratelimited(i32 %204, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %206

206:                                              ; preds = %202, %196
  %207 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %207
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_STATUS_0(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_STATUS_1(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_STATUS_2(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_2(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @to_device(%struct.ispif_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
