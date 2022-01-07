; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_switch_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_switch_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SD_CLK_DIVIDE_128 = common dso_local global i32 0, align 4
@SD_CLK_DIVIDE_0 = common dso_local global i32 0, align 4
@SD_CFG1 = common dso_local global i32 0, align 4
@SD_CLK_DIVIDE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Switch card clock to %dMHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Internal SSC clock: %dMHz (cur_clk = %d)\0A\00", align 1
@MAX_DIV_N = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLK_DIV_1 = common dso_local global i32 0, align 4
@MIN_DIV_N = common dso_local global i32 0, align 4
@CLK_DIV_4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"n = %d, div = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ssc_depth = %d\0A\00", align 1
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CLK_DIV = common dso_local global i32 0, align 4
@CLK_CHANGE = common dso_local global i32 0, align 4
@SSC_CTL1 = common dso_local global i32 0, align 4
@SSC_RSTB = common dso_local global i32 0, align 4
@SSC_CTL2 = common dso_local global i32 0, align 4
@SSC_DEPTH_MASK = common dso_local global i32 0, align 4
@SSC_DIV_N_0 = common dso_local global i32 0, align 4
@SD_VPCLK0_CTL = common dso_local global i32 0, align 4
@PHASE_NOT_RESET = common dso_local global i32 0, align 4
@MODE_C = common dso_local global i32 0, align 4
@SSC_8X_EN = common dso_local global i32 0, align 4
@SSC_SEL_4M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_usb_switch_clock(%struct.rtsx_ucr* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtsx_ucr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %23 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  store i32 0, i32* %7, align 4
  br label %222

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @SD_CLK_DIVIDE_128, align 4
  store i32 %28, i32* %16, align 4
  store i32 30000000, i32* %9, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @SD_CLK_DIVIDE_0, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %33 = load i32, i32* @SD_CFG1, align 4
  %34 = load i32, i32* @SD_CLK_DIVIDE_MASK, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %7, align 4
  br label %222

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = udiv i32 %42, 1000000
  store i32 %43, i32* %9, align 4
  %44 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %45 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = mul i32 %56, 2
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %52, %41
  %59 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %60 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %65 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %70 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %222

74:                                               ; preds = %58
  %75 = load i32, i32* %9, align 4
  %76 = sub i32 %75, 2
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ule i32 %77, 2
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @MAX_DIV_N, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %222

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = udiv i32 60, %87
  %89 = add i32 %88, 3
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp sgt i32 %90, 15
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 15, i32* %17, align 4
  br label %93

93:                                               ; preds = %92, %86
  %94 = load i32, i32* @CLK_DIV_1, align 4
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %105, %93
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @MIN_DIV_N, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @CLK_DIV_4, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 2
  %108 = mul nsw i32 %107, 2
  %109 = sub nsw i32 %108, 2
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %18, align 4
  br label %95

112:                                              ; preds = %103
  %113 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %114 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %18, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @double_ssc_depth(i32 %123)
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %122, %112
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @revise_ssc_depth(i32 %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %130 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %136 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %135)
  %137 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %138 = load i32, i32* @WRITE_REG_CMD, align 4
  %139 = load i32, i32* @CLK_DIV, align 4
  %140 = load i32, i32* @CLK_CHANGE, align 4
  %141 = load i32, i32* @CLK_CHANGE, align 4
  %142 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %144 = load i32, i32* @WRITE_REG_CMD, align 4
  %145 = load i32, i32* @CLK_DIV, align 4
  %146 = load i32, i32* %18, align 4
  %147 = shl i32 %146, 4
  %148 = load i32, i32* %17, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %143, i32 %144, i32 %145, i32 63, i32 %149)
  %151 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %152 = load i32, i32* @WRITE_REG_CMD, align 4
  %153 = load i32, i32* @SSC_CTL1, align 4
  %154 = load i32, i32* @SSC_RSTB, align 4
  %155 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %151, i32 %152, i32 %153, i32 %154, i32 0)
  %156 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %157 = load i32, i32* @WRITE_REG_CMD, align 4
  %158 = load i32, i32* @SSC_CTL2, align 4
  %159 = load i32, i32* @SSC_DEPTH_MASK, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %163 = load i32, i32* @WRITE_REG_CMD, align 4
  %164 = load i32, i32* @SSC_DIV_N_0, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %162, i32 %163, i32 %164, i32 255, i32 %165)
  %167 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %168 = load i32, i32* @WRITE_REG_CMD, align 4
  %169 = load i32, i32* @SSC_CTL1, align 4
  %170 = load i32, i32* @SSC_RSTB, align 4
  %171 = load i32, i32* @SSC_RSTB, align 4
  %172 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %125
  %176 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %177 = load i32, i32* @WRITE_REG_CMD, align 4
  %178 = load i32, i32* @SD_VPCLK0_CTL, align 4
  %179 = load i32, i32* @PHASE_NOT_RESET, align 4
  %180 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %176, i32 %177, i32 %178, i32 %179, i32 0)
  %181 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %182 = load i32, i32* @WRITE_REG_CMD, align 4
  %183 = load i32, i32* @SD_VPCLK0_CTL, align 4
  %184 = load i32, i32* @PHASE_NOT_RESET, align 4
  %185 = load i32, i32* @PHASE_NOT_RESET, align 4
  %186 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %181, i32 %182, i32 %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %175, %125
  %188 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %189 = load i32, i32* @MODE_C, align 4
  %190 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %188, i32 %189, i32 2000)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %7, align 4
  br label %222

195:                                              ; preds = %187
  %196 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %197 = load i32, i32* @SSC_CTL1, align 4
  %198 = load i32, i32* @SSC_RSTB, align 4
  %199 = load i32, i32* @SSC_8X_EN, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @SSC_SEL_4M, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %196, i32 %197, i32 255, i32 %202)
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %195
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %7, align 4
  br label %222

208:                                              ; preds = %195
  %209 = call i32 @usleep_range(i32 100, i32 1000)
  %210 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %211 = load i32, i32* @CLK_DIV, align 4
  %212 = load i32, i32* @CLK_CHANGE, align 4
  %213 = call i32 @rtsx_usb_write_register(%struct.rtsx_ucr* %210, i32 %211, i32 %212, i32 0)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %7, align 4
  br label %222

218:                                              ; preds = %208
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %8, align 8
  %221 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  store i32 0, i32* %7, align 4
  br label %222

222:                                              ; preds = %218, %216, %206, %193, %83, %73, %39, %21
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @rtsx_usb_write_register(%struct.rtsx_ucr*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @double_ssc_depth(i32) #1

declare dso_local i32 @revise_ssc_depth(i32, i32) #1

declare dso_local i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
