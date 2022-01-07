; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_decode_end_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_decode_end_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { i32, %struct.vdec_vp9_vsi* }
%struct.vdec_vp9_vsi = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Decode failed, Decode Timeout @[%d]\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vp9_dec_vpu_end failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Decode Ok @%d (%d/%d)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Decode Ok @%d (show_existing_frame)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_vp9_inst*)* @vp9_decode_end_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_decode_end_proc(%struct.vdec_vp9_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdec_vp9_inst*, align 8
  %4 = alloca %struct.vdec_vp9_vsi*, align 8
  %5 = alloca i32, align 4
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %3, align 8
  %6 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %7 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %6, i32 0, i32 1
  %8 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %7, align 8
  store %struct.vdec_vp9_vsi* %8, %struct.vdec_vp9_vsi** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %10 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %1
  %14 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %15 = call i32 @vp9_wait_dec_end(%struct.vdec_vp9_inst* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %20 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %21 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_err(%struct.vdec_vp9_inst* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %2, align 4
  br label %57

24:                                               ; preds = %13
  %25 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %26 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %25, i32 0, i32 0
  %27 = call i64 @vpu_dec_end(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %31 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_err(%struct.vdec_vp9_inst* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

32:                                               ; preds = %24
  %33 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %34 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %35 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %38 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %41 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.vdec_vp9_inst*, i8*, i32, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  br label %50

44:                                               ; preds = %1
  %45 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %46 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %47 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.vdec_vp9_inst*, i8*, i32, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %32
  %51 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %52 = call i32 @vp9_swap_frm_bufs(%struct.vdec_vp9_inst* %51)
  %53 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %4, align 8
  %54 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %50, %29, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @vp9_wait_dec_end(%struct.vdec_vp9_inst*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*, ...) #1

declare dso_local i64 @vpu_dec_end(i32*) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vp9_inst*, i8*, i32, ...) #1

declare dso_local i32 @vp9_swap_frm_bufs(%struct.vdec_vp9_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
