; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_planar422p_to_yuv_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_planar422p_to_yuv_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32)* @planar422p_to_yuv_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @planar422p_to_yuv_packed(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %14, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  store i8* %38, i8** %12, align 8
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %129, %5
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %14, align 8
  %43 = mul i64 %42, 2
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %132

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  br label %59

54:                                               ; preds = %45
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i32 [ %53, %49 ], [ %58, %54 ]
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 %61, i8* %65, align 1
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %13, align 8
  %72 = load i8, i8* %70, align 1
  %73 = zext i8 %72 to i32
  br label %79

74:                                               ; preds = %59
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  %77 = load i8, i8* %75, align 1
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i32 [ %73, %69 ], [ %78, %74 ]
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8 %81, i8* %86, align 1
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %11, align 8
  %93 = load i8, i8* %91, align 1
  %94 = zext i8 %93 to i32
  br label %100

95:                                               ; preds = %79
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %12, align 8
  %98 = load i8, i8* %96, align 1
  %99 = zext i8 %98 to i32
  br label %100

100:                                              ; preds = %95, %90
  %101 = phi i32 [ %94, %90 ], [ %99, %95 ]
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %104, 2
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %12, align 8
  %114 = load i8, i8* %112, align 1
  %115 = zext i8 %114 to i32
  br label %121

116:                                              ; preds = %100
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %11, align 8
  %119 = load i8, i8* %117, align 1
  %120 = zext i8 %119 to i32
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i32 [ %115, %111 ], [ %120, %116 ]
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add i32 %125, 3
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %15, align 4
  %131 = add i32 %130, 4
  store i32 %131, i32* %15, align 4
  br label %39

132:                                              ; preds = %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
