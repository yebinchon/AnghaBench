; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c___find_outer_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c___find_outer_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dcmi = type { i32, %struct.dcmi_framesize* }
%struct.v4l2_pix_format = type { i32, i32 }
%struct.dcmi_framesize = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dcmi*, %struct.v4l2_pix_format*, %struct.dcmi_framesize*)* @__find_outer_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__find_outer_frame_size(%struct.stm32_dcmi* %0, %struct.v4l2_pix_format* %1, %struct.dcmi_framesize* %2) #0 {
  %4 = alloca %struct.stm32_dcmi*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.dcmi_framesize*, align 8
  %7 = alloca %struct.dcmi_framesize*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dcmi_framesize*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  store %struct.dcmi_framesize* %2, %struct.dcmi_framesize** %6, align 8
  store %struct.dcmi_framesize* null, %struct.dcmi_framesize** %7, align 8
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %58, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  %22 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %22, i32 0, i32 1
  %24 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %24, i64 %26
  store %struct.dcmi_framesize* %27, %struct.dcmi_framesize** %10, align 8
  %28 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %10, align 8
  %29 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %10, align 8
  %36 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %21
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %10, align 8
  store %struct.dcmi_framesize* %56, %struct.dcmi_framesize** %7, align 8
  br label %57

57:                                               ; preds = %54, %50, %47, %21
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %15

61:                                               ; preds = %15
  %62 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %7, align 8
  %63 = icmp ne %struct.dcmi_framesize* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %4, align 8
  %66 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %65, i32 0, i32 1
  %67 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %66, align 8
  %68 = getelementptr inbounds %struct.dcmi_framesize, %struct.dcmi_framesize* %67, i64 0
  store %struct.dcmi_framesize* %68, %struct.dcmi_framesize** %7, align 8
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %6, align 8
  %71 = load %struct.dcmi_framesize*, %struct.dcmi_framesize** %7, align 8
  %72 = bitcast %struct.dcmi_framesize* %70 to i8*
  %73 = bitcast %struct.dcmi_framesize* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
