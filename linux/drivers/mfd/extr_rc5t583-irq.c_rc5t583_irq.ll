; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc5t583_irq_data = type { i64, i32, i64, i32 }
%struct.rc5t583 = type { i32*, i64, i32 }

@RC5T583_MAX_INTERRUPT_MASK_REGS = common dso_local global i32 0, align 4
@RC5T583_INTC_INTMON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error in reading reg 0x%02x error: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@main_int_type = common dso_local global i32* null, align 8
@irq_mon_add = common dso_local global i32* null, align 8
@RTC_INT = common dso_local global i32 0, align 4
@irq_clr_add = common dso_local global i32* null, align 8
@RC5T583_MAX_IRQS = common dso_local global i32 0, align 4
@rc5t583_irqs = common dso_local global %struct.rc5t583_irq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rc5t583_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rc5t583*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rc5t583_irq_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.rc5t583*
  store %struct.rc5t583* %16, %struct.rc5t583** %6, align 8
  %17 = load i32, i32* @RC5T583_MAX_INTERRUPT_MASK_REGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %29, %2
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @RC5T583_MAX_INTERRUPT_MASK_REGS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %20, i64 %27
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %34 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RC5T583_INTC_INTMON, align 4
  %37 = call i32 @rc5t583_read(i32 %35, i32 %36, i32* %9)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %42 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RC5T583_INTC_INTMON, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %247

48:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %189, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @RC5T583_MAX_INTERRUPT_MASK_REGS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %192

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** @main_int_type, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %189

63:                                               ; preds = %53
  %64 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %65 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** @irq_mon_add, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %20, i64 %73
  %75 = call i32 @rc5t583_read(i32 %66, i32 %71, i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %63
  %79 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %80 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** @irq_mon_add, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @dev_warn(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %20, i64 %90
  store i32 0, i32* %91, align 4
  br label %189

92:                                               ; preds = %63
  %93 = load i32*, i32** @main_int_type, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RTC_INT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %146

101:                                              ; preds = %92
  store i32 0, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %20, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = call i32 @BIT(i32 6)
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %108, %101
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %20, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = call i32 @BIT(i32 7)
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %112
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %20, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = call i32 @BIT(i32 0)
  %132 = load i32, i32* %12, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %130, %123
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %20, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = call i32 @BIT(i32 5)
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %141, %134
  br label %146

146:                                              ; preds = %145, %92
  %147 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %148 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** @irq_clr_add, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %20, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %158, -1
  %160 = call i32 @rc5t583_write(i32 %149, i32 %154, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %146
  %164 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %165 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** @irq_clr_add, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @dev_warn(i32 %166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %163, %146
  %175 = load i32*, i32** @main_int_type, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @RTC_INT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %174
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %20, i64 %186
  store i32 %184, i32* %187, align 4
  br label %188

188:                                              ; preds = %183, %174
  br label %189

189:                                              ; preds = %188, %78, %62
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %49

192:                                              ; preds = %49
  %193 = getelementptr inbounds i32, i32* %20, i64 8
  %194 = load i32, i32* %193, align 16
  %195 = getelementptr inbounds i32, i32* %20, i64 7
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %194
  store i32 %197, i32* %195, align 4
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %242, %192
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @RC5T583_MAX_IRQS, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %245

202:                                              ; preds = %198
  %203 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** @rc5t583_irqs, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %203, i64 %205
  store %struct.rc5t583_irq_data* %206, %struct.rc5t583_irq_data** %14, align 8
  %207 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %14, align 8
  %208 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i32, i32* %20, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %14, align 8
  %213 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = shl i32 1, %214
  %216 = and i32 %211, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %241

218:                                              ; preds = %202
  %219 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %220 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %14, align 8
  %223 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %14, align 8
  %228 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = shl i32 1, %229
  %231 = and i32 %226, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %218
  %234 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %235 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = call i32 @handle_nested_irq(i64 %239)
  br label %241

241:                                              ; preds = %233, %218, %202
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %198

245:                                              ; preds = %198
  %246 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %246, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %247

247:                                              ; preds = %245, %40
  %248 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %248)
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rc5t583_read(i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @rc5t583_write(i32, i32, i32) #2

declare dso_local i32 @handle_nested_irq(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
