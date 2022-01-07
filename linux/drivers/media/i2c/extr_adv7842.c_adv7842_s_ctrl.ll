; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.adv7842_state = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"R %x, G %x, B %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Y %x, U %x, V %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @adv7842_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.adv7842_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %13 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %12)
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %4, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %14)
  store %struct.adv7842_state* %15, %struct.adv7842_state** %5, align 8
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %176 [
    i32 132, label %19
    i32 131, label %30
    i32 128, label %41
    i32 129, label %52
    i32 135, label %63
    i32 133, label %69
    i32 134, label %82
    i32 130, label %168
  ]

19:                                               ; preds = %1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cp_write(%struct.v4l2_subdev* %20, i32 60, i32 %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sdp_write(%struct.v4l2_subdev* %25, i32 20, i32 %28)
  store i32 0, i32* %2, align 4
  br label %179

30:                                               ; preds = %1
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cp_write(%struct.v4l2_subdev* %31, i32 58, i32 %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sdp_write(%struct.v4l2_subdev* %36, i32 19, i32 %39)
  store i32 0, i32* %2, align 4
  br label %179

41:                                               ; preds = %1
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cp_write(%struct.v4l2_subdev* %42, i32 59, i32 %45)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sdp_write(%struct.v4l2_subdev* %47, i32 21, i32 %50)
  store i32 0, i32* %2, align 4
  br label %179

52:                                               ; preds = %1
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cp_write(%struct.v4l2_subdev* %53, i32 61, i32 %56)
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sdp_write(%struct.v4l2_subdev* %58, i32 22, i32 %61)
  store i32 0, i32* %2, align 4
  br label %179

63:                                               ; preds = %1
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @afe_write(%struct.v4l2_subdev* %64, i32 200, i32 %67)
  store i32 0, i32* %2, align 4
  br label %179

69:                                               ; preds = %1
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %71 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %72 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 2
  %75 = call i32 @cp_write_and_or(%struct.v4l2_subdev* %70, i32 191, i32 -5, i32 %74)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %77 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %78 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 2
  %81 = call i32 @sdp_write_and_or(%struct.v4l2_subdev* %76, i32 221, i32 -5, i32 %80)
  store i32 0, i32* %2, align 4
  br label %179

82:                                               ; preds = %1
  %83 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 16711680
  %87 = ashr i32 %86, 16
  store i32 %87, i32* %6, align 4
  %88 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %89 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 65280
  %92 = ashr i32 %91, 8
  store i32 %92, i32* %7, align 4
  %93 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 255
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 66, %97
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 129, %99
  %101 = add nsw i32 %98, %100
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 25, %102
  %104 = add nsw i32 %101, %103
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 -38, %105
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 74, %107
  %109 = sub nsw i32 %106, %108
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 112, %110
  %112 = add nsw i32 %109, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %6, align 4
  %114 = mul nsw i32 112, %113
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 94, %115
  %117 = sub nsw i32 %114, %116
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 18, %118
  %120 = sub nsw i32 %117, %119
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 128
  %123 = ashr i32 %122, 8
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 128
  %126 = ashr i32 %125, 8
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 128
  %129 = ashr i32 %128, 8
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 16
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 128
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 128
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @debug, align 4
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @v4l2_dbg(i32 1, i32 %136, %struct.v4l2_subdev* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* @debug, align 4
  %143 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @v4l2_dbg(i32 1, i32 %142, %struct.v4l2_subdev* %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %145, i32 %146)
  %148 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @cp_write(%struct.v4l2_subdev* %148, i32 193, i32 %149)
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @cp_write(%struct.v4l2_subdev* %151, i32 192, i32 %152)
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @cp_write(%struct.v4l2_subdev* %154, i32 194, i32 %155)
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @sdp_write(%struct.v4l2_subdev* %157, i32 222, i32 %158)
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %161 = load i32, i32* %11, align 4
  %162 = and i32 %161, 240
  %163 = load i32, i32* %10, align 4
  %164 = ashr i32 %163, 4
  %165 = and i32 %164, 15
  %166 = or i32 %162, %165
  %167 = call i32 @sdp_write(%struct.v4l2_subdev* %160, i32 223, i32 %166)
  store i32 0, i32* %2, align 4
  br label %179

168:                                              ; preds = %1
  %169 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %170 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.adv7842_state*, %struct.adv7842_state** %5, align 8
  %173 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %175 = call i32 @set_rgb_quantization_range(%struct.v4l2_subdev* %174)
  store i32 0, i32* %2, align 4
  br label %179

176:                                              ; preds = %1
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %176, %168, %82, %69, %63, %52, %41, %30, %19
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cp_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @sdp_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @afe_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @cp_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @sdp_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32) #1

declare dso_local i32 @set_rgb_quantization_range(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
