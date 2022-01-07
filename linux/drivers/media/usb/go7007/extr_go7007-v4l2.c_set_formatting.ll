; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_set_formatting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_set_formatting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i64 }

@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@GO7007_RATIO_1_1 = common dso_local global i8* null, align 8
@GO7007_RATIO_4_3 = common dso_local global i8* null, align 8
@GO7007_RATIO_16_9 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.go7007*)* @set_formatting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_formatting(%struct.go7007* %0) #0 {
  %2 = alloca %struct.go7007*, align 8
  store %struct.go7007* %0, %struct.go7007** %2, align 8
  %3 = load %struct.go7007*, %struct.go7007** %2, align 8
  %4 = getelementptr inbounds %struct.go7007, %struct.go7007* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.go7007*, %struct.go7007** %2, align 8
  %10 = getelementptr inbounds %struct.go7007, %struct.go7007* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** @GO7007_RATIO_1_1, align 8
  %12 = load %struct.go7007*, %struct.go7007** %2, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 9
  store i8* %11, i8** %13, align 8
  %14 = load %struct.go7007*, %struct.go7007** %2, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load %struct.go7007*, %struct.go7007** %2, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.go7007*, %struct.go7007** %2, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = load %struct.go7007*, %struct.go7007** %2, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 5
  store i32 0, i32* %21, align 4
  %22 = load %struct.go7007*, %struct.go7007** %2, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 16
  store i64 0, i64* %23, align 8
  %24 = load %struct.go7007*, %struct.go7007** %2, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 6
  store i32 0, i32* %25, align 8
  %26 = load %struct.go7007*, %struct.go7007** %2, align 8
  %27 = getelementptr inbounds %struct.go7007, %struct.go7007* %26, i32 0, i32 7
  store i32 0, i32* %27, align 4
  br label %131

28:                                               ; preds = %1
  %29 = load %struct.go7007*, %struct.go7007** %2, align 8
  %30 = getelementptr inbounds %struct.go7007, %struct.go7007* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %35 [
    i32 130, label %32
    i32 129, label %36
    i32 128, label %39
  ]

32:                                               ; preds = %28
  %33 = load %struct.go7007*, %struct.go7007** %2, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %42

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %28, %35
  %37 = load %struct.go7007*, %struct.go7007** %2, align 8
  %38 = getelementptr inbounds %struct.go7007, %struct.go7007* %37, i32 0, i32 1
  store i32 72, i32* %38, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.go7007*, %struct.go7007** %2, align 8
  %41 = getelementptr inbounds %struct.go7007, %struct.go7007* %40, i32 0, i32 1
  store i32 245, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36, %32
  %43 = load %struct.go7007*, %struct.go7007** %2, align 8
  %44 = getelementptr inbounds %struct.go7007, %struct.go7007* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @v4l2_ctrl_g_ctrl(i32 %45)
  %47 = load %struct.go7007*, %struct.go7007** %2, align 8
  %48 = getelementptr inbounds %struct.go7007, %struct.go7007* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.go7007*, %struct.go7007** %2, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @v4l2_ctrl_g_ctrl(i32 %51)
  %53 = load %struct.go7007*, %struct.go7007** %2, align 8
  %54 = getelementptr inbounds %struct.go7007, %struct.go7007* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.go7007*, %struct.go7007** %2, align 8
  %56 = getelementptr inbounds %struct.go7007, %struct.go7007* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @v4l2_ctrl_g_ctrl(i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load %struct.go7007*, %struct.go7007** %2, align 8
  %62 = getelementptr inbounds %struct.go7007, %struct.go7007* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.go7007*, %struct.go7007** %2, align 8
  %64 = getelementptr inbounds %struct.go7007, %struct.go7007* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @v4l2_ctrl_g_ctrl(i32 %65)
  %67 = load %struct.go7007*, %struct.go7007** %2, align 8
  %68 = getelementptr inbounds %struct.go7007, %struct.go7007* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load %struct.go7007*, %struct.go7007** %2, align 8
  %70 = getelementptr inbounds %struct.go7007, %struct.go7007* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @v4l2_ctrl_g_ctrl(i32 %71)
  %73 = load %struct.go7007*, %struct.go7007** %2, align 8
  %74 = getelementptr inbounds %struct.go7007, %struct.go7007* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.go7007*, %struct.go7007** %2, align 8
  %76 = getelementptr inbounds %struct.go7007, %struct.go7007* %75, i32 0, i32 6
  store i32 1, i32* %76, align 8
  %77 = load %struct.go7007*, %struct.go7007** %2, align 8
  %78 = getelementptr inbounds %struct.go7007, %struct.go7007* %77, i32 0, i32 7
  store i32 0, i32* %78, align 4
  %79 = load %struct.go7007*, %struct.go7007** %2, align 8
  %80 = getelementptr inbounds %struct.go7007, %struct.go7007* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 129
  br i1 %82, label %83, label %113

83:                                               ; preds = %42
  %84 = load %struct.go7007*, %struct.go7007** %2, align 8
  %85 = getelementptr inbounds %struct.go7007, %struct.go7007* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 9800000
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load %struct.go7007*, %struct.go7007** %2, align 8
  %90 = getelementptr inbounds %struct.go7007, %struct.go7007* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 15
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.go7007*, %struct.go7007** %2, align 8
  %95 = getelementptr inbounds %struct.go7007, %struct.go7007* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.go7007*, %struct.go7007** %2, align 8
  %100 = getelementptr inbounds %struct.go7007, %struct.go7007* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.go7007*, %struct.go7007** %2, align 8
  %105 = getelementptr inbounds %struct.go7007, %struct.go7007* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %103, %98, %93, %88, %83
  %109 = phi i1 [ false, %98 ], [ false, %93 ], [ false, %88 ], [ false, %83 ], [ %107, %103 ]
  %110 = zext i1 %109 to i32
  %111 = load %struct.go7007*, %struct.go7007** %2, align 8
  %112 = getelementptr inbounds %struct.go7007, %struct.go7007* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %42
  %114 = load %struct.go7007*, %struct.go7007** %2, align 8
  %115 = getelementptr inbounds %struct.go7007, %struct.go7007* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @v4l2_ctrl_g_ctrl(i32 %116)
  switch i32 %117, label %118 [
    i32 132, label %119
    i32 131, label %123
    i32 133, label %127
  ]

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %113, %118
  %120 = load i8*, i8** @GO7007_RATIO_1_1, align 8
  %121 = load %struct.go7007*, %struct.go7007** %2, align 8
  %122 = getelementptr inbounds %struct.go7007, %struct.go7007* %121, i32 0, i32 9
  store i8* %120, i8** %122, align 8
  br label %131

123:                                              ; preds = %113
  %124 = load i8*, i8** @GO7007_RATIO_4_3, align 8
  %125 = load %struct.go7007*, %struct.go7007** %2, align 8
  %126 = getelementptr inbounds %struct.go7007, %struct.go7007* %125, i32 0, i32 9
  store i8* %124, i8** %126, align 8
  br label %131

127:                                              ; preds = %113
  %128 = load i8*, i8** @GO7007_RATIO_16_9, align 8
  %129 = load %struct.go7007*, %struct.go7007** %2, align 8
  %130 = getelementptr inbounds %struct.go7007, %struct.go7007* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %8, %127, %123, %119
  ret void
}

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
