; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_mode_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_w996Xcf.c_w9968cf_mode_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.sd = type { i64, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@w9968cf_vga_mode = common dso_local global %struct.TYPE_6__* null, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@SEN_OV7620 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @w9968cf_mode_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9968cf_mode_init_regs(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = call i32 @w9968cf_set_crop_window(%struct.sd* %6)
  %8 = load %struct.sd*, %struct.sd** %2, align 8
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @reg_w(%struct.sd* %8, i32 20, i32 %13)
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = load %struct.sd*, %struct.sd** %2, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @reg_w(%struct.sd* %15, i32 21, i32 %20)
  %22 = load %struct.sd*, %struct.sd** %2, align 8
  %23 = load %struct.sd*, %struct.sd** %2, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reg_w(%struct.sd* %22, i32 48, i32 %27)
  %29 = load %struct.sd*, %struct.sd** %2, align 8
  %30 = load %struct.sd*, %struct.sd** %2, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @reg_w(%struct.sd* %29, i32 49, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @w9968cf_vga_mode, align 8
  %37 = load %struct.sd*, %struct.sd** %2, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %1
  %47 = load %struct.sd*, %struct.sd** %2, align 8
  %48 = load %struct.sd*, %struct.sd** %2, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 2
  %54 = call i32 @reg_w(%struct.sd* %47, i32 44, i32 %53)
  %55 = load %struct.sd*, %struct.sd** %2, align 8
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 4
  %62 = call i32 @reg_w(%struct.sd* %55, i32 45, i32 %61)
  br label %71

63:                                               ; preds = %1
  %64 = load %struct.sd*, %struct.sd** %2, align 8
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @reg_w(%struct.sd* %64, i32 44, i32 %69)
  br label %71

71:                                               ; preds = %63, %46
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = call i32 @reg_w(%struct.sd* %72, i32 0, i32 48919)
  %74 = load %struct.sd*, %struct.sd** %2, align 8
  %75 = call i32 @reg_w(%struct.sd* %74, i32 0, i32 48912)
  %76 = load %struct.sd*, %struct.sd** %2, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sd*, %struct.sd** %2, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %80, %85
  store i32 %86, i32* %3, align 4
  %87 = load %struct.sd*, %struct.sd** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, 65535
  %90 = call i32 @reg_w(%struct.sd* %87, i32 61, i32 %89)
  %91 = load %struct.sd*, %struct.sd** %2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = ashr i32 %92, 16
  %94 = call i32 @reg_w(%struct.sd* %91, i32 62, i32 %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @w9968cf_vga_mode, align 8
  %96 = load %struct.sd*, %struct.sd** %2, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %134

105:                                              ; preds = %71
  %106 = load %struct.sd*, %struct.sd** %2, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sd*, %struct.sd** %2, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sd*, %struct.sd** %2, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @jpeg_define(i32 %108, i32 %113, i32 %118, i32 34)
  %120 = load %struct.sd*, %struct.sd** %2, align 8
  %121 = getelementptr inbounds %struct.sd, %struct.sd* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sd*, %struct.sd** %2, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @v4l2_ctrl_g_ctrl(i32 %125)
  %127 = call i32 @jpeg_set_qual(i32 %122, i32 %126)
  %128 = load %struct.sd*, %struct.sd** %2, align 8
  %129 = call i32 @w9968cf_upload_quantizationtables(%struct.sd* %128)
  %130 = load %struct.sd*, %struct.sd** %2, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @v4l2_ctrl_grab(i32 %132, i32 1)
  br label %134

134:                                              ; preds = %105, %71
  %135 = load %struct.sd*, %struct.sd** %2, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SEN_OV7620, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %142

141:                                              ; preds = %134
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* %4, align 4
  %144 = shl i32 %143, 12
  %145 = load i32, i32* %5, align 4
  %146 = shl i32 %145, 11
  %147 = or i32 %144, %146
  store i32 %147, i32* %3, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @w9968cf_vga_mode, align 8
  %149 = load %struct.sd*, %struct.sd** %2, align 8
  %150 = getelementptr inbounds %struct.sd, %struct.sd* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %142
  %159 = load i32, i32* %3, align 4
  %160 = or i32 %159, 3
  store i32 %160, i32* %3, align 4
  br label %164

161:                                              ; preds = %142
  %162 = load i32, i32* %3, align 4
  %163 = or i32 %162, 128
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %3, align 4
  %166 = or i32 %165, 32768
  store i32 %166, i32* %3, align 4
  %167 = load %struct.sd*, %struct.sd** %2, align 8
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @reg_w(%struct.sd* %167, i32 22, i32 %168)
  %170 = load %struct.sd*, %struct.sd** %2, align 8
  %171 = getelementptr inbounds %struct.sd, %struct.sd* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  ret void
}

declare dso_local i32 @w9968cf_set_crop_window(%struct.sd*) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @w9968cf_upload_quantizationtables(%struct.sd*) #1

declare dso_local i32 @v4l2_ctrl_grab(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
