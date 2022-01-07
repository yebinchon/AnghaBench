; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vbi_cap_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vbi_cap_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64, i32 }
%struct.device = type { i32 }
%struct.vivid_dev = type { i32*, i64 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vbi_cap_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbi_cap_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.vivid_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.vivid_dev* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.vivid_dev* %16, %struct.vivid_dev** %12, align 8
  %17 = load %struct.vivid_dev*, %struct.vivid_dev** %12, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %12, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @V4L2_STD_525_60, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_CAPTURE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %40

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 12, i32 18
  %38 = mul nsw i32 2880, %37
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %33, %32
  %41 = phi i64 [ 144, %32 ], [ %39, %33 ]
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %12, align 8
  %44 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %68

49:                                               ; preds = %40
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %54 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %55, %57
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %62 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sub i32 2, %63
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %49
  %67 = load i32*, i32** %9, align 8
  store i32 1, i32* %67, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %46
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.vivid_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
