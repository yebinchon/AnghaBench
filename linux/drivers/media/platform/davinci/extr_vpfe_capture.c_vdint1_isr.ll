; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vdint1_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vdint1_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i64, i64, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0AInside vdint1_isr...\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vdint1_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdint1_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpfe_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.vpfe_device*
  store %struct.vpfe_device* %8, %struct.vpfe_device** %6, align 8
  %9 = load i32, i32* @debug, align 4
  %10 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %11 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %10, i32 0, i32 7
  %12 = call i32 @v4l2_dbg(i32 1, i32 %9, i32* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %14 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %2
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %19 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = icmp ne i32 (i32)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 %29(i32 %30)
  br label %32

32:                                               ; preds = %24, %17
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %82

34:                                               ; preds = %2
  %35 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %36 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %35, i32 0, i32 3
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %39 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %34
  %47 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %48 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %47, i32 0, i32 4
  %49 = call i32 @list_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %53 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %56 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %61 = call i32 @vpfe_schedule_next_buffer(%struct.vpfe_device* %60)
  br label %62

62:                                               ; preds = %59, %51, %46, %34
  %63 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %64 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %67 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = icmp ne i32 (i32)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %74 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 %77(i32 %78)
  br label %80

80:                                               ; preds = %72, %62
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %32
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

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
