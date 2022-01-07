; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-hdr.c_delta_mjpeg_read_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-hdr.c_delta_mjpeg_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.mjpeg_header = type { i32 }

@MJPEG_MARKER = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [49 x i8] c"%s   wrong sequence, got SOF while SOI not seen\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s   found header @ offset %d:\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s   no header found within %d bytes input stream\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_mjpeg_read_header(%struct.delta_ctx* %0, i8* %1, i32 %2, %struct.mjpeg_header* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.delta_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mjpeg_header*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.delta_dev*, align 8
  %13 = alloca [200 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.delta_ctx* %0, %struct.delta_ctx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mjpeg_header* %3, %struct.mjpeg_header** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %17, i32 0, i32 1
  %19 = load %struct.delta_dev*, %struct.delta_dev** %18, align 8
  store %struct.delta_dev* %19, %struct.delta_dev** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %99

23:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %23, %85
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %15, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @MJPEG_MARKER, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %24
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %15, align 4
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  switch i32 %41, label %75 [
    i32 128, label %42
    i32 130, label %45
    i32 129, label %45
  ]

42:                                               ; preds = %34
  store i32 1, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  br label %76

45:                                               ; preds = %34, %34
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load %struct.delta_dev*, %struct.delta_dev** %12, align 8
  %50 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %112

58:                                               ; preds = %45
  %59 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %61, 2
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %15, align 4
  %67 = add i32 %66, 2
  %68 = sub i32 %65, %67
  %69 = load %struct.mjpeg_header*, %struct.mjpeg_header** %10, align 8
  %70 = call i32 @delta_mjpeg_read_sof(%struct.delta_ctx* %59, i8* %64, i32 %68, %struct.mjpeg_header* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  br label %110

74:                                               ; preds = %58
  br label %86

75:                                               ; preds = %34
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %24
  %78 = load i32, i32* %15, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add i32 %80, 2
  %82 = load i32, i32* %9, align 4
  %83 = icmp uge i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %99

85:                                               ; preds = %77
  br label %24

86:                                               ; preds = %74
  %87 = load %struct.delta_dev*, %struct.delta_dev** %12, align 8
  %88 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %91 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mjpeg_header*, %struct.mjpeg_header** %10, align 8
  %96 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %97 = call i32 @header_str(%struct.mjpeg_header* %95, i8* %96, i32 200)
  %98 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %94, i32 %97)
  store i32 0, i32* %6, align 4
  br label %112

99:                                               ; preds = %84, %22
  %100 = load %struct.delta_dev*, %struct.delta_dev** %12, align 8
  %101 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %104 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* @ENODATA, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %112

110:                                              ; preds = %73
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %99, %86, %48
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @delta_mjpeg_read_sof(%struct.delta_ctx*, i8*, i32, %struct.mjpeg_header*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @header_str(%struct.mjpeg_header*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
