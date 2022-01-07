; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-vbi.c_bttv_s_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-vbi.c_bttv_s_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_tvnorm = type { i32* }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.bttv_fh = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.bttv* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.bttv_tvnorm*, %struct.TYPE_8__ }
%struct.bttv = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@RESOURCE_VBI = common dso_local global i32 0, align 4
@bttv_tvnorms = common dso_local global %struct.bttv_tvnorm* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_s_fmt_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.bttv_fh*, align 8
  %8 = alloca %struct.bttv*, align 8
  %9 = alloca %struct.bttv_tvnorm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.bttv_fh*
  store %struct.bttv_fh* %14, %struct.bttv_fh** %7, align 8
  %15 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %16 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %15, i32 0, i32 3
  %17 = load %struct.bttv*, %struct.bttv** %16, align 8
  store %struct.bttv* %17, %struct.bttv** %8, align 8
  %18 = load %struct.bttv*, %struct.bttv** %8, align 8
  %19 = getelementptr inbounds %struct.bttv, %struct.bttv* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %24 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RESOURCE_VBI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %102

30:                                               ; preds = %3
  %31 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** @bttv_tvnorms, align 8
  %32 = load %struct.bttv*, %struct.bttv** %8, align 8
  %33 = getelementptr inbounds %struct.bttv, %struct.bttv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %31, i64 %34
  store %struct.bttv_tvnorm* %35, %struct.bttv_tvnorm** %9, align 8
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %9, align 8
  %40 = load %struct.bttv*, %struct.bttv** %8, align 8
  %41 = getelementptr inbounds %struct.bttv, %struct.bttv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @try_fmt(%struct.TYPE_8__* %38, %struct.bttv_tvnorm* %39, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 0, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %102

47:                                               ; preds = %30
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %9, align 8
  %56 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %54, %59
  %61 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %9, align 8
  %62 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  store i32 %66, i32* %10, align 4
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @max(i32 %73, i32 %74)
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %11, align 4
  %78 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %79 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %83 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = bitcast %struct.TYPE_8__* %84 to i8*
  %89 = bitcast %struct.TYPE_8__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 8, i1 false)
  %90 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %9, align 8
  %91 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %92 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store %struct.bttv_tvnorm* %90, %struct.bttv_tvnorm** %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %96 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.bttv_fh*, %struct.bttv_fh** %7, align 8
  %99 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %47, %46, %29
  %103 = load %struct.bttv*, %struct.bttv** %8, align 8
  %104 = getelementptr inbounds %struct.bttv, %struct.bttv* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %12, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @try_fmt(%struct.TYPE_8__*, %struct.bttv_tvnorm*, i32) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
