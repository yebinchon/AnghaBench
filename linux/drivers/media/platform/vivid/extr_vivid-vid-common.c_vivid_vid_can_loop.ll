; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_vid_can_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-common.c_vivid_vid_can_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i64, i64, i32*, i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_BT = common dso_local global i64 0, align 8
@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_can_loop(%struct.vivid_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vivid_dev*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  %4 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %5 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %4, i32 0, i32 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %7, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %102

24:                                               ; preds = %13
  %25 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %26 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %25, i32 0, i32 6
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %30, i32 0, i32 5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %102

37:                                               ; preds = %24
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %102

46:                                               ; preds = %37
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %54 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_FIELD_SEQ_BT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46
  store i32 0, i32* %2, align 4
  br label %102

59:                                               ; preds = %52
  %60 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %61 = call i64 @vivid_is_svid_cap(%struct.vivid_dev* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %65 = call i64 @vivid_is_svid_out(%struct.vivid_dev* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %69 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %72 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @V4L2_STD_525_60, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %82 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @V4L2_STD_525_60, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = icmp ne i32 %80, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %102

91:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %102

92:                                               ; preds = %63, %59
  %93 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %94 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %98 = call i64 @vivid_is_hdmi_out(%struct.vivid_dev* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %102

101:                                              ; preds = %96, %92
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %100, %91, %90, %58, %45, %36, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @vivid_is_svid_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_svid_out(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

declare dso_local i64 @vivid_is_hdmi_out(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
