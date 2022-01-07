; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, %struct.pvr2_hdw*, %struct.pvr2_hdw*, i32, i32*, %struct.pvr2_hdw*, i32, i32, i32, i32, i32 }

@PVR2_TRACE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pvr2_hdw_destroy: hdw=%p\00", align 1
@pvr2_unit_mtx = common dso_local global i32 0, align 4
@PVR_NUM = common dso_local global i64 0, align 8
@unit_pointers = common dso_local global %struct.pvr2_hdw** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_hdw_destroy(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %3 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %4 = icmp ne %struct.pvr2_hdw* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %96

6:                                                ; preds = %1
  %7 = load i32, i32* @PVR2_TRACE_INIT, align 4
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %9 = call i32 @pvr2_trace(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.pvr2_hdw* %8)
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 10
  %12 = call i32 @flush_work(i32* %11)
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 9
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 8
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 7
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %23 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %22, i32 0, i32 6
  %24 = call i32 @del_timer_sync(i32* %23)
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 5
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %26, align 8
  %28 = icmp ne %struct.pvr2_hdw* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %6
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %31 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %30, i32 0, i32 5
  %32 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %31, align 8
  %33 = call i32 @kfree(%struct.pvr2_hdw* %32)
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 5
  store %struct.pvr2_hdw* null, %struct.pvr2_hdw** %35, align 8
  br label %36

36:                                               ; preds = %29, %6
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %38 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @pvr2_stream_destroy(i32* %44)
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %50 = call i32 @pvr2_i2c_core_done(%struct.pvr2_hdw* %49)
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %52 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %51, i32 0, i32 3
  %53 = call i32 @v4l2_device_unregister(i32* %52)
  %54 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %55 = call i32 @pvr2_hdw_remove_usb_stuff(%struct.pvr2_hdw* %54)
  %56 = call i32 @mutex_lock(i32* @pvr2_unit_mtx)
  br label %57

57:                                               ; preds = %48
  %58 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %59 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %64 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PVR_NUM, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.pvr2_hdw**, %struct.pvr2_hdw*** @unit_pointers, align 8
  %70 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %71 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.pvr2_hdw*, %struct.pvr2_hdw** %69, i64 %72
  %74 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %73, align 8
  %75 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %76 = icmp eq %struct.pvr2_hdw* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.pvr2_hdw**, %struct.pvr2_hdw*** @unit_pointers, align 8
  %79 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %80 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.pvr2_hdw*, %struct.pvr2_hdw** %78, i64 %81
  store %struct.pvr2_hdw* null, %struct.pvr2_hdw** %82, align 8
  br label %83

83:                                               ; preds = %77, %68, %62, %57
  br label %84

84:                                               ; preds = %83
  %85 = call i32 @mutex_unlock(i32* @pvr2_unit_mtx)
  %86 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %87 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %86, i32 0, i32 2
  %88 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %87, align 8
  %89 = call i32 @kfree(%struct.pvr2_hdw* %88)
  %90 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %91 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %90, i32 0, i32 1
  %92 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %91, align 8
  %93 = call i32 @kfree(%struct.pvr2_hdw* %92)
  %94 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %95 = call i32 @kfree(%struct.pvr2_hdw* %94)
  br label %96

96:                                               ; preds = %84, %5
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_hdw*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_stream_destroy(i32*) #1

declare dso_local i32 @pvr2_i2c_core_done(%struct.pvr2_hdw*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @pvr2_hdw_remove_usb_stuff(%struct.pvr2_hdw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
