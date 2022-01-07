; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mt9t112_priv = type { i32, %struct.TYPE_2__*, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }

@mt9t112_cfmts = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9t112_priv*, %struct.v4l2_rect*, i64)* @mt9t112_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_set_params(%struct.mt9t112_priv* %0, %struct.v4l2_rect* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt9t112_priv*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mt9t112_priv* %0, %struct.mt9t112_priv** %5, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t112_cfmts, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %9

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %29
  %39 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %39, i32 0, i32 2
  %41 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %42 = bitcast %struct.v4l2_rect* %40 to i8*
  %43 = bitcast %struct.v4l2_rect* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %5, align 8
  %45 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 1
  %47 = load i32, i32* @MAX_WIDTH, align 4
  %48 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %5, align 8
  %49 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %49, i32 0, i32 0
  %51 = load i32, i32* @MAX_HEIGHT, align 4
  %52 = call i32 @v4l_bound_align_image(i32* %46, i32 0, i32 %47, i32 0, i32* %50, i32 0, i32 %51, i32 0, i32 0)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t112_cfmts, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %5, align 8
  %58 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %57, i32 0, i32 1
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %38, %35
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
