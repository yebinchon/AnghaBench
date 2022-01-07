; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%struct.ivtv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Set blanking mode : %d\0A\00", align 1
@CX2341X_OSD_SET_STATE = common dso_local global i32 0, align 4
@IVTV_HW_SAA7127 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @ivtvfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.ivtv*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ivtv*
  store %struct.ivtv* %9, %struct.ivtv** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %40 [
    i32 129, label %13
    i32 131, label %22
    i32 132, label %22
    i32 128, label %22
    i32 130, label %31
  ]

13:                                               ; preds = %2
  %14 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %15 = load i32, i32* @CX2341X_OSD_SET_STATE, align 4
  %16 = call i32 @ivtv_vapi(%struct.ivtv* %14, i32 %15, i32 1, i32 1)
  %17 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %18 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %19 = load i32, i32* @video, align 4
  %20 = load i32, i32* @s_stream, align 4
  %21 = call i32 @ivtv_call_hw(%struct.ivtv* %17, i32 %18, i32 %19, i32 %20, i32 1)
  br label %40

22:                                               ; preds = %2, %2, %2
  %23 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %24 = load i32, i32* @CX2341X_OSD_SET_STATE, align 4
  %25 = call i32 @ivtv_vapi(%struct.ivtv* %23, i32 %24, i32 1, i32 0)
  %26 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %27 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %28 = load i32, i32* @video, align 4
  %29 = load i32, i32* @s_stream, align 4
  %30 = call i32 @ivtv_call_hw(%struct.ivtv* %26, i32 %27, i32 %28, i32 %29, i32 1)
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %33 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %34 = load i32, i32* @video, align 4
  %35 = load i32, i32* @s_stream, align 4
  %36 = call i32 @ivtv_call_hw(%struct.ivtv* %32, i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %38 = load i32, i32* @CX2341X_OSD_SET_STATE, align 4
  %39 = call i32 @ivtv_vapi(%struct.ivtv* %37, i32 %38, i32 1, i32 0)
  br label %40

40:                                               ; preds = %2, %31, %22, %13
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  ret i32 0
}

declare dso_local i32 @IVTVFB_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
