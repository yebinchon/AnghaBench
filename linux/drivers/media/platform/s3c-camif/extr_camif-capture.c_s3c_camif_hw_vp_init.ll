; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_hw_vp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_hw_vp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.camif_vp = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@S3C244X_CAMIF_IP_REV = common dso_local global i32 0, align 4
@ST_VP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_dev*, %struct.camif_vp*)* @s3c_camif_hw_vp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_hw_vp_init(%struct.camif_dev* %0, %struct.camif_vp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca %struct.camif_vp*, align 8
  %6 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %4, align 8
  store %struct.camif_vp* %1, %struct.camif_vp** %5, align 8
  %7 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %8 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %21 = call i32 @camif_prepare_dma_offset(%struct.camif_vp* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @S3C244X_CAMIF_IP_REV, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %27 = call i32 @camif_hw_clear_fifo_overflow(%struct.camif_vp* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %30 = call i32 @camif_cfg_video_path(%struct.camif_vp* %29)
  %31 = load i32, i32* @ST_VP_CONFIG, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %34 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @camif_prepare_dma_offset(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_clear_fifo_overflow(%struct.camif_vp*) #1

declare dso_local i32 @camif_cfg_video_path(%struct.camif_vp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
