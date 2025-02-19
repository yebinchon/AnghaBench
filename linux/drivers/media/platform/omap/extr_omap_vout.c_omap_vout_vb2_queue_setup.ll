; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omap_vout_vb2_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omap_vout_vb2_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.device = type { i32 }
%struct.omap_vout_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VRFB_NUM_BUFS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @omap_vout_vb2_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_vout_vb2_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.omap_vout_device*, align 8
  %13 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = call %struct.omap_vout_device* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.omap_vout_device* %15, %struct.omap_vout_device** %12, align 8
  %16 = load %struct.omap_vout_device*, %struct.omap_vout_device** %12, align 8
  %17 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.omap_vout_device*, %struct.omap_vout_device** %12, align 8
  %21 = call i64 @is_rotation_enabled(%struct.omap_vout_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %5
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* @VRFB_NUM_BUFS, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load i64, i64* @VRFB_NUM_BUFS, align 8
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %69

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %23, %5
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ 0, %61 ]
  store i32 %63, i32* %6, align 4
  br label %69

64:                                               ; preds = %48
  %65 = load i32*, i32** %9, align 8
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %62, %44
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.omap_vout_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @is_rotation_enabled(%struct.omap_vout_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
