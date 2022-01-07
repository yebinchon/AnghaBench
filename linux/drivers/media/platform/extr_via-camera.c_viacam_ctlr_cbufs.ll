; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_ctlr_cbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_ctlr_cbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { i32, i32, i32*, %struct.TYPE_4__, i64, i64*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VCR_CAPINTC = common dso_local global i32 0, align 4
@VCR_CI_3BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Insufficient frame buffer memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VCR_VBUF1 = common dso_local global i64 0, align 8
@VCR_VBUF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_camera*)* @viacam_ctlr_cbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viacam_ctlr_cbufs(%struct.via_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.via_camera* %0, %struct.via_camera** %3, align 8
  %7 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %8 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %7, i32 0, i32 6
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %13 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %11, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %21 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %20, i32 0, i32 0
  store i32 3, i32* %21, align 8
  %22 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %23 = load i32, i32* @VCR_CAPINTC, align 4
  %24 = load i32, i32* @VCR_CI_3BUFS, align 4
  %25 = load i32, i32* @VCR_CI_3BUFS, align 4
  %26 = call i32 @viacam_write_reg_mask(%struct.via_camera* %22, i32 %23, i32 %24, i32 %25)
  br label %43

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %32 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %31, i32 0, i32 0
  store i32 2, i32* %32, align 8
  %33 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %34 = load i32, i32* @VCR_CAPINTC, align 4
  %35 = load i32, i32* @VCR_CI_3BUFS, align 4
  %36 = call i32 @viacam_write_reg_mask(%struct.via_camera* %33, i32 %34, i32 0, i32 %35)
  br label %42

37:                                               ; preds = %27
  %38 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %39 = call i32 @cam_warn(%struct.via_camera* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %93

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %45 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %89, %43
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %50 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %56 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %62 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %68 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %67, i32 0, i32 5
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %66, i64* %72, align 8
  %73 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %74 = load i64, i64* @VCR_VBUF1, align 8
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @VCR_VBUF_MASK, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @viacam_write_reg(%struct.via_camera* %73, i64 %78, i32 %81)
  %83 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %84 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %53
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %47

92:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %37
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @viacam_write_reg_mask(%struct.via_camera*, i32, i32, i32) #1

declare dso_local i32 @cam_warn(%struct.via_camera*, i8*) #1

declare dso_local i32 @viacam_write_reg(%struct.via_camera*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
