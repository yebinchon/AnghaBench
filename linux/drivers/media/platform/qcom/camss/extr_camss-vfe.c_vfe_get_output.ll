; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_get_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_get_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32, %struct.vfe_output, %struct.TYPE_5__ }
%struct.vfe_output = type { i64, i32, i32*, i64, i64 }
%struct.TYPE_5__ = type { %struct.v4l2_format }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vfe_device = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@VFE_OUTPUT_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Output is running\0A\00", align 1
@VFE_OUTPUT_RESERVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Can not reserve wm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_line*)* @vfe_get_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_get_output(%struct.vfe_line* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_line*, align 8
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca %struct.vfe_output*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vfe_line* %0, %struct.vfe_line** %3, align 8
  %10 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %11 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %10)
  store %struct.vfe_device* %11, %struct.vfe_device** %4, align 8
  %12 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %13 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_format* %14, %struct.v4l2_format** %6, align 8
  %15 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %16 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %20 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %19, i32 0, i32 1
  store %struct.vfe_output* %20, %struct.vfe_output** %5, align 8
  %21 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %22 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VFE_OUTPUT_OFF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %28 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %113

33:                                               ; preds = %1
  %34 = load i64, i64* @VFE_OUTPUT_RESERVED, align 8
  %35 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %36 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %38 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %47 [
    i32 131, label %44
    i32 129, label %44
    i32 130, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %33, %33, %33, %33
  %45 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %46 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %45, i32 0, i32 1
  store i32 2, i32* %46, align 8
  br label %50

47:                                               ; preds = %33
  %48 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %49 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %80, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %54 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51
  %58 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %59 = load %struct.vfe_line*, %struct.vfe_line** %3, align 8
  %60 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @vfe_reserve_wm(%struct.vfe_device* %58, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %67 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %90

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %75 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %51

83:                                               ; preds = %51
  %84 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %85 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %87 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %86, i32 0, i32 0
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  store i32 0, i32* %2, align 4
  br label %120

90:                                               ; preds = %65
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %106, %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %98 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %99 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @vfe_release_wm(%struct.vfe_device* %97, i32 %104)
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %8, align 4
  br label %93

109:                                              ; preds = %93
  %110 = load i64, i64* @VFE_OUTPUT_OFF, align 8
  %111 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %112 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %26
  %114 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %115 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %114, i32 0, i32 0
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %113, %83
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vfe_reserve_wm(%struct.vfe_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vfe_release_wm(%struct.vfe_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
