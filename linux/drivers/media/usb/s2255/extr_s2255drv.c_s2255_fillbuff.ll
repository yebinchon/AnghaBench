; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_fillbuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_fillbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_vc = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.s2255_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.s2255_dev = type { i32 }
%struct.s2255_buffer = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"s2255: unknown format?\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"s2255: =======no frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"s2255fill at : Buffer %p size= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2255_vc*, %struct.s2255_buffer*, i32)* @s2255_fillbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2255_fillbuff(%struct.s2255_vc* %0, %struct.s2255_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.s2255_vc*, align 8
  %5 = alloca %struct.s2255_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.s2255_dev*, align 8
  store %struct.s2255_vc* %0, %struct.s2255_vc** %4, align 8
  store %struct.s2255_buffer* %1, %struct.s2255_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.s2255_buffer*, %struct.s2255_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.s2255_buffer, %struct.s2255_buffer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = call i8* @vb2_plane_vaddr(i32* %14, i32 0)
  store i8* %15, i8** %9, align 8
  %16 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %17 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %16, i32 0, i32 5
  %18 = load %struct.s2255_dev*, %struct.s2255_dev** %17, align 8
  store %struct.s2255_dev* %18, %struct.s2255_dev** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %24 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, -1
  br i1 %27, label %28, label %96

28:                                               ; preds = %22
  %29 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %30 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  %38 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %39 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %91 [
    i32 128, label %43
    i32 130, label %43
    i32 133, label %58
    i32 132, label %69
    i32 131, label %69
    i32 129, label %79
  ]

43:                                               ; preds = %28, %28
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %47 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %50 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %53 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @planar422p_to_yuv_packed(i8* %44, i8* %45, i32 %48, i32 %51, i32 %56)
  br label %93

58:                                               ; preds = %28
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %62 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %65 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = call i32 @memcpy(i8* %59, i8* %60, i32 %67)
  br label %93

69:                                               ; preds = %28, %28
  %70 = load %struct.s2255_buffer*, %struct.s2255_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.s2255_buffer, %struct.s2255_buffer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @vb2_set_plane_payload(i32* %72, i32 0, i32 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  br label %93

79:                                               ; preds = %28
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %83 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %86 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = mul nsw i32 %88, 2
  %90 = call i32 @memcpy(i8* %80, i8* %81, i32 %89)
  br label %93

91:                                               ; preds = %28
  %92 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %79, %69, %58, %43
  %94 = load %struct.s2255_vc*, %struct.s2255_vc** %4, align 8
  %95 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %94, i32 0, i32 0
  store i64 -1, i64* %95, align 8
  br label %98

96:                                               ; preds = %22
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %103

98:                                               ; preds = %93
  %99 = load %struct.s2255_dev*, %struct.s2255_dev** %11, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @dprintk(%struct.s2255_dev* %99, i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %96, %21
  ret void
}

declare dso_local i8* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @planar422p_to_yuv_packed(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dprintk(%struct.s2255_dev*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
