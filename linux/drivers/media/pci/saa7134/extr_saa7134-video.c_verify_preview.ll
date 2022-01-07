; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_verify_preview.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_verify_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.v4l2_window = type { i32, i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.v4l2_window*, i32)* @verify_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_preview(%struct.saa7134_dev* %0, %struct.v4l2_window* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.v4l2_window*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.v4l2_window* %1, %struct.v4l2_window** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %15 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %21 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %122

27:                                               ; preds = %19, %3
  %28 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 48
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 48, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 32, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 8
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %53, i32 0, i32 0
  store i32 8, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %64 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %68 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %55
  %75 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sdiv i32 %79, 2
  %81 = icmp sgt i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  br label %85

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 128, %84 ]
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %55
  %88 = load i32, i32* %8, align 4
  switch i32 %88, label %92 [
    i32 128, label %89
    i32 129, label %89
  ]

89:                                               ; preds = %87, %87
  %90 = load i32, i32* %10, align 4
  %91 = sdiv i32 %90, 2
  store i32 %91, i32* %10, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %107 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %94
  %110 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.v4l2_window*, %struct.v4l2_window** %6, align 8
  %119 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %109
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %24
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
