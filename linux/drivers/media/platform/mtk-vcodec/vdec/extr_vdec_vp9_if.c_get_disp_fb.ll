; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_get_disp_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_get_disp_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { i32 }
%struct.vdec_fb = type { i32 }

@FB_ST_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_vp9_inst*, %struct.vdec_fb**)* @get_disp_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_disp_fb(%struct.vdec_vp9_inst* %0, %struct.vdec_fb** %1) #0 {
  %3 = alloca %struct.vdec_vp9_inst*, align 8
  %4 = alloca %struct.vdec_fb**, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %3, align 8
  store %struct.vdec_fb** %1, %struct.vdec_fb*** %4, align 8
  %5 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %6 = call %struct.vdec_fb* @vp9_rm_from_fb_disp_list(%struct.vdec_vp9_inst* %5)
  %7 = load %struct.vdec_fb**, %struct.vdec_fb*** %4, align 8
  store %struct.vdec_fb* %6, %struct.vdec_fb** %7, align 8
  %8 = load %struct.vdec_fb**, %struct.vdec_fb*** %4, align 8
  %9 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %10 = icmp ne %struct.vdec_fb* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @FB_ST_DISPLAY, align 4
  %13 = load %struct.vdec_fb**, %struct.vdec_fb*** %4, align 8
  %14 = load %struct.vdec_fb*, %struct.vdec_fb** %13, align 8
  %15 = getelementptr inbounds %struct.vdec_fb, %struct.vdec_fb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %12
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.vdec_fb* @vp9_rm_from_fb_disp_list(%struct.vdec_vp9_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
