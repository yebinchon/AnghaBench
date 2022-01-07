; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_venc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_venc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { %struct.vpbe_layer** }
%struct.vpbe_layer = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@venc_isr.last_event = internal global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@VENC_SECOND_FIELD = common dso_local global i32 0, align 4
@VENC_FIRST_FIELD = common dso_local global i32 0, align 4
@VENC_END_OF_FRAME = common dso_local global i32 0, align 4
@VPBE_DISPLAY_MAX_DEVICES = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @venc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpbe_display*, align 8
  %7 = alloca %struct.vpbe_layer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.vpbe_display*
  store %struct.vpbe_display* %12, %struct.vpbe_display** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %17 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %16, i32 0, i32 0
  %18 = load %struct.vpbe_layer**, %struct.vpbe_layer*** %17, align 8
  %19 = getelementptr inbounds %struct.vpbe_layer*, %struct.vpbe_layer** %18, i64 0
  %20 = load %struct.vpbe_layer*, %struct.vpbe_layer** %19, align 8
  %21 = icmp ne %struct.vpbe_layer* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %141

24:                                               ; preds = %15
  %25 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %26 = call i64 @venc_is_second_field(%struct.vpbe_display* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @VENC_SECOND_FIELD, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @VENC_FIRST_FIELD, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @venc_isr.last_event, align 4
  %39 = load i32, i32* @VENC_END_OF_FRAME, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @VENC_END_OF_FRAME, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %56

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @VENC_SECOND_FIELD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @VENC_END_OF_FRAME, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* @venc_isr.last_event, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %136, %56
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @VPBE_DISPLAY_MAX_DEVICES, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %139

62:                                               ; preds = %58
  %63 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %64 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %63, i32 0, i32 0
  %65 = load %struct.vpbe_layer**, %struct.vpbe_layer*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.vpbe_layer*, %struct.vpbe_layer** %65, i64 %67
  %69 = load %struct.vpbe_layer*, %struct.vpbe_layer** %68, align 8
  store %struct.vpbe_layer* %69, %struct.vpbe_layer** %7, align 8
  %70 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %71 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %70, i32 0, i32 3
  %72 = call i32 @vb2_start_streaming_called(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %136

75:                                               ; preds = %62
  %76 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %77 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %82 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  br label %136

83:                                               ; preds = %75
  %84 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %85 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %86 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @VENC_END_OF_FRAME, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %97 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %98 = call i32 @vpbe_isr_even_field(%struct.vpbe_display* %96, %struct.vpbe_layer* %97)
  %99 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %100 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %101 = call i32 @vpbe_isr_odd_field(%struct.vpbe_display* %99, %struct.vpbe_layer* %100)
  br label %135

102:                                              ; preds = %90, %83
  %103 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %104 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = xor i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @VENC_FIRST_FIELD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %113

112:                                              ; preds = %102
  store i32 1, i32* %9, align 4
  br label %113

113:                                              ; preds = %112, %111
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %116 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %122 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %136

123:                                              ; preds = %113
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 0, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %128 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %129 = call i32 @vpbe_isr_even_field(%struct.vpbe_display* %127, %struct.vpbe_layer* %128)
  br label %134

130:                                              ; preds = %123
  %131 = load %struct.vpbe_display*, %struct.vpbe_display** %6, align 8
  %132 = load %struct.vpbe_layer*, %struct.vpbe_layer** %7, align 8
  %133 = call i32 @vpbe_isr_odd_field(%struct.vpbe_display* %131, %struct.vpbe_layer* %132)
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %95
  br label %136

136:                                              ; preds = %135, %119, %80, %74
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %58

139:                                              ; preds = %58
  %140 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %22
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @venc_is_second_field(%struct.vpbe_display*) #1

declare dso_local i32 @vb2_start_streaming_called(i32*) #1

declare dso_local i32 @vpbe_isr_even_field(%struct.vpbe_display*, %struct.vpbe_layer*) #1

declare dso_local i32 @vpbe_isr_odd_field(%struct.vpbe_display*, %struct.vpbe_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
