; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_init_struct2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_init_struct2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@IVTV_CARD_MAX_VIDEO_INPUTS = common dso_local global i32 0, align 4
@IVTV_CARD_MAX_AUDIO_INPUTS = common dso_local global i32 0, align 4
@IVTV_HW_CX25840 = common dso_local global i32 0, align 4
@IVTV_CARD_INPUT_VID_TUNER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_init_struct2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_init_struct2(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IVTV_CARD_MAX_VIDEO_INPUTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %25

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %4

25:                                               ; preds = %20, %4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %47, %25
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IVTV_CARD_MAX_AUDIO_INPUTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %50

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %29

50:                                               ; preds = %45, %29
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IVTV_HW_CX25840, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %64 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 288, i32* %65, align 4
  br label %70

66:                                               ; preds = %50
  %67 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %68 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 64, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IVTV_CARD_INPUT_VID_TUNER, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %95

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %71

95:                                               ; preds = %90, %71
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %98 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %95
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %105 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %107 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %106, i32 0, i32 3
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %117 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
