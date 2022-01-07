; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_adjust_fourcc_to_subsampling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_adjust_fourcc_to_subsampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@subs420_fourcc_dwngrd_schema = common dso_local global i32* null, align 8
@subs422_fourcc_dwngrd_schema = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, %struct.s5p_jpeg_ctx*)* @s5p_jpeg_adjust_fourcc_to_subsampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_adjust_fourcc_to_subsampling(i32 %0, i32 %1, i32* %2, %struct.s5p_jpeg_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.s5p_jpeg_ctx*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.s5p_jpeg_ctx* %3, %struct.s5p_jpeg_ctx** %9, align 8
  %11 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %9, align 8
  %12 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 128
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @s5p_jpeg_get_dwngrd_sch_id_by_fourcc(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %67

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %4
  %25 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %9, align 8
  %26 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %63 [
    i32 128, label %28
    i32 130, label %31
    i32 129, label %47
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  br label %66

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** @subs420_fourcc_dwngrd_schema, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = sub nsw i32 %34, 1
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %67

40:                                               ; preds = %31
  %41 = load i32*, i32** @subs420_fourcc_dwngrd_schema, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  br label %66

47:                                               ; preds = %24
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** @subs422_fourcc_dwngrd_schema, align 8
  %50 = call i32 @ARRAY_SIZE(i32* %49)
  %51 = sub nsw i32 %50, 1
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %67

56:                                               ; preds = %47
  %57 = load i32*, i32** @subs422_fourcc_dwngrd_schema, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %24
  %64 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %56, %40, %28
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %53, %37, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @s5p_jpeg_get_dwngrd_sch_id_by_fourcc(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
