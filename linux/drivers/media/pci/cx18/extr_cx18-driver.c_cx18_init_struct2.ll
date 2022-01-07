; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_struct2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_struct2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@CX18_CARD_MAX_VIDEO_INPUTS = common dso_local global i32 0, align 4
@CX18_CARD_MAX_AUDIO_INPUTS = common dso_local global i32 0, align 4
@CX18_CARD_INPUT_VID_TUNER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_init_struct2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_init_struct2(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CX18_CARD_MAX_VIDEO_INPUTS, align 4
  %7 = sub nsw i32 %6, 1
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = load %struct.cx18*, %struct.cx18** %2, align 8
  %11 = getelementptr inbounds %struct.cx18, %struct.cx18* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  br label %26

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %21, %4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.cx18*, %struct.cx18** %2, align 8
  %29 = getelementptr inbounds %struct.cx18, %struct.cx18* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %49, %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CX18_CARD_MAX_AUDIO_INPUTS, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.cx18*, %struct.cx18** %2, align 8
  %37 = getelementptr inbounds %struct.cx18, %struct.cx18* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %30

52:                                               ; preds = %47, %30
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.cx18*, %struct.cx18** %2, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %77, %52
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.cx18*, %struct.cx18** %2, align 8
  %59 = getelementptr inbounds %struct.cx18, %struct.cx18* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load %struct.cx18*, %struct.cx18** %2, align 8
  %64 = getelementptr inbounds %struct.cx18, %struct.cx18* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CX18_CARD_INPUT_VID_TUNER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %80

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %56

80:                                               ; preds = %75, %56
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.cx18*, %struct.cx18** %2, align 8
  %83 = getelementptr inbounds %struct.cx18, %struct.cx18* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %80
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.cx18*, %struct.cx18** %2, align 8
  %90 = getelementptr inbounds %struct.cx18, %struct.cx18* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cx18*, %struct.cx18** %2, align 8
  %92 = getelementptr inbounds %struct.cx18, %struct.cx18* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.cx18*, %struct.cx18** %2, align 8
  %102 = getelementptr inbounds %struct.cx18, %struct.cx18* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
