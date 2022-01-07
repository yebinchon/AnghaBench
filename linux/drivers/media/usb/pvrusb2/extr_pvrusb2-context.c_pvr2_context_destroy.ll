; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.pvr2_context = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }

@PVR2_TRACE_CTXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pvr2_context %p (destroy)\00", align 1
@pvr2_context_mutex = common dso_local global i32 0, align 4
@pvr2_context_exist_last = common dso_local global %struct.TYPE_3__* null, align 8
@pvr2_context_exist_first = common dso_local global %struct.TYPE_4__* null, align 8
@pvr2_context_sync_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_context*)* @pvr2_context_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_context_destroy(%struct.pvr2_context* %0) #0 {
  %2 = alloca %struct.pvr2_context*, align 8
  store %struct.pvr2_context* %0, %struct.pvr2_context** %2, align 8
  %3 = load i32, i32* @PVR2_TRACE_CTXT, align 4
  %4 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %5 = call i32 @pvr2_trace(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.pvr2_context* %4)
  %6 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %7 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pvr2_hdw_destroy(i32 %8)
  %10 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %11 = call i32 @pvr2_context_set_notify(%struct.pvr2_context* %10, i32 0)
  %12 = call i32 @mutex_lock(i32* @pvr2_context_mutex)
  %13 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %19 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %22 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %24, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %27 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** @pvr2_context_exist_last, align 8
  br label %29

29:                                               ; preds = %25, %17
  %30 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %31 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %36 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %39 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %41, align 8
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %44 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** @pvr2_context_exist_first, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pvr2_context_exist_first, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 @wake_up(i32* @pvr2_context_sync_data)
  br label %51

51:                                               ; preds = %49, %46
  %52 = call i32 @mutex_unlock(i32* @pvr2_context_mutex)
  %53 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %54 = call i32 @kfree(%struct.pvr2_context* %53)
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_context*) #1

declare dso_local i32 @pvr2_hdw_destroy(i32) #1

declare dso_local i32 @pvr2_context_set_notify(%struct.pvr2_context*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pvr2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
