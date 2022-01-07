; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_vrfb_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout_vrfb.c_omap_vout_vrfb_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_vout_device = type { i64, i32, %struct.TYPE_2__, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VRFB_NUM_BUFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_YUV2 = common dso_local global i64 0, align 8
@OMAP_DSS_COLOR_UYVY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_vout_vrfb_buffer_setup(%struct.omap_vout_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_vout_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_vout_device* %0, %struct.omap_vout_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %11 = call i32 @is_rotation_enabled(%struct.omap_vout_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VRFB_NUM_BUFS, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @VRFB_NUM_BUFS, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %28 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %24
  %32 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @omap_vout_allocate_vrfb_buffers(%struct.omap_vout_device* %32, i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %92

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %43 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OMAP_DSS_COLOR_YUV2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %49 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OMAP_DSS_COLOR_UYVY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41
  store i32 1, i32* %9, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %53
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %88, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %63 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %69 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %76 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %80 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.omap_vout_device*, %struct.omap_vout_device** %5, align 8
  %84 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @omap_vrfb_setup(i32* %67, i32 %74, i32 %78, i32 %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %56

91:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %37, %13
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @is_rotation_enabled(%struct.omap_vout_device*) #1

declare dso_local i64 @omap_vout_allocate_vrfb_buffers(%struct.omap_vout_device*, i32*, i32) #1

declare dso_local i32 @omap_vrfb_setup(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
