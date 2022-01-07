; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Card %d already initialised\0A\00", align 1
@ivtvfb_card_id = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate memory for osd_info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@ivtvfb_restore = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT_OVERLAY = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ivtvfb_force_pat = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtvfb_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_init_card(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 3
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @ivtvfb_card_id, align 4
  %11 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %109

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32, i32* @__GFP_NOWARN, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %17)
  %19 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 3
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %20, align 8
  %21 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %109

29:                                               ; preds = %14
  %30 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %31 = call i32 @ivtvfb_init_io(%struct.ivtv* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %36 = call i32 @ivtvfb_release_buffers(%struct.ivtv* %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %109

38:                                               ; preds = %29
  %39 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %40 = call i32 @ivtvfb_init_vidmode(%struct.ivtv* %39)
  store i32 %40, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %44 = call i32 @ivtvfb_release_buffers(%struct.ivtv* %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %109

46:                                               ; preds = %38
  %47 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i64 @register_framebuffer(i32* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %55 = call i32 @ivtvfb_release_buffers(%struct.ivtv* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %109

58:                                               ; preds = %46
  %59 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @ivtvfb_set_par(i32* %69)
  %71 = call i32 @write_reg(i32 0, i32 10800)
  %72 = call i32 @write_reg(i32 0, i32 10804)
  %73 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %74 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %75 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @ivtvfb_blank(i32 %73, i32* %77)
  %79 = load i32, i32* @ivtvfb_restore, align 4
  %80 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %81 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %83 = call i32 @ivtv_udma_alloc(%struct.ivtv* %82)
  %84 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %85 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %86 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %84
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %95 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %94
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %105 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %106 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %58, %53, %42, %34, %25, %9
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @IVTVFB_ERR(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local i32 @ivtvfb_init_io(%struct.ivtv*) #1

declare dso_local i32 @ivtvfb_release_buffers(%struct.ivtv*) #1

declare dso_local i32 @ivtvfb_init_vidmode(%struct.ivtv*) #1

declare dso_local i64 @register_framebuffer(i32*) #1

declare dso_local i32 @ivtvfb_set_par(i32*) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @ivtvfb_blank(i32, i32*) #1

declare dso_local i32 @ivtv_udma_alloc(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
