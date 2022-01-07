; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (...)*, i32 (...)* }
%struct.vpfe_device = type { i64, i64, i32, %struct.TYPE_11__*, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 (i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0AStarting vpfe_isr...\0A\00", align 1
@ccdc_dev = common dso_local global %struct.TYPE_12__* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"frame format is progressive...\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"field id = %x:%x.\0A\00", align 1
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpfe_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vpfe_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vpfe_device*
  store %struct.vpfe_device* %9, %struct.vpfe_device** %5, align 8
  %10 = load i32, i32* @debug, align 4
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 6
  %13 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %10, i32* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %134

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ccdc_dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = icmp ne i32 (...)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ccdc_dev, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = call i32 (...) %35()
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32, i32* @debug, align 4
  %43 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %44 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %43, i32 0, i32 6
  %45 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %42, i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %47 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %50 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %55 = call i32 @vpfe_process_buffer_complete(%struct.vpfe_device* %54)
  br label %56

56:                                               ; preds = %53, %41
  br label %134

57:                                               ; preds = %37
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ccdc_dev, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32 (...)*, i32 (...)** %60, align 8
  %62 = call i32 (...) %61()
  store i32 %62, i32* %7, align 4
  %63 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %64 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = xor i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @debug, align 4
  %68 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %69 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %68, i32 0, i32 6
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %72 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %67, i32* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %77 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %125

80:                                               ; preds = %57
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %85 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %88 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %93 = call i32 @vpfe_process_buffer_complete(%struct.vpfe_device* %92)
  br label %94

94:                                               ; preds = %91, %83
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %100 = call i32 @vpfe_schedule_bottom_field(%struct.vpfe_device* %99)
  br label %101

101:                                              ; preds = %98, %94
  br label %134

102:                                              ; preds = %80
  %103 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %104 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %103, i32 0, i32 4
  %105 = call i32 @spin_lock(i32* %104)
  %106 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %107 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %106, i32 0, i32 5
  %108 = call i32 @list_empty(i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %102
  %111 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %112 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %115 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %120 = call i32 @vpfe_schedule_next_buffer(%struct.vpfe_device* %119)
  br label %121

121:                                              ; preds = %118, %110, %102
  %122 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %123 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %122, i32 0, i32 4
  %124 = call i32 @spin_unlock(i32* %123)
  br label %133

125:                                              ; preds = %57
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %131 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %125
  br label %133

133:                                              ; preds = %132, %121
  br label %134

134:                                              ; preds = %133, %101, %56, %24
  %135 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %136 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32 (i32)*, i32 (i32)** %138, align 8
  %140 = icmp ne i32 (i32)* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load %struct.vpfe_device*, %struct.vpfe_device** %5, align 8
  %143 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %142, i32 0, i32 3
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32 (i32)*, i32 (i32)** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = call i32 %146(i32 %147)
  br label %149

149:                                              ; preds = %141, %134
  %150 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %150
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @vpfe_process_buffer_complete(%struct.vpfe_device*) #1

declare dso_local i32 @vpfe_schedule_bottom_field(%struct.vpfe_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @vpfe_schedule_next_buffer(%struct.vpfe_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
