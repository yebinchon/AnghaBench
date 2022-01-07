; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_set_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_set_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_context = type { i32, %struct.pvr2_context*, %struct.pvr2_context* }

@pvr2_context_mutex = common dso_local global i32 0, align 4
@pvr2_context_notify_first = common dso_local global %struct.pvr2_context* null, align 8
@pvr2_context_notify_last = common dso_local global %struct.pvr2_context* null, align 8
@pvr2_context_sync_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_context*, i32)* @pvr2_context_set_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_context_set_notify(%struct.pvr2_context* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pvr2_context* %0, %struct.pvr2_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @pvr2_context_mutex)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = load %struct.pvr2_context*, %struct.pvr2_context** @pvr2_context_notify_first, align 8
  %16 = icmp eq %struct.pvr2_context* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.pvr2_context*, %struct.pvr2_context** @pvr2_context_notify_last, align 8
  %19 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %19, i32 0, i32 2
  store %struct.pvr2_context* %18, %struct.pvr2_context** %20, align 8
  %21 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %21, i32 0, i32 1
  store %struct.pvr2_context* null, %struct.pvr2_context** %22, align 8
  %23 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  store %struct.pvr2_context* %23, %struct.pvr2_context** @pvr2_context_notify_last, align 8
  %24 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %24, i32 0, i32 2
  %26 = load %struct.pvr2_context*, %struct.pvr2_context** %25, align 8
  %27 = icmp ne %struct.pvr2_context* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %30 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %31 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %30, i32 0, i32 2
  %32 = load %struct.pvr2_context*, %struct.pvr2_context** %31, align 8
  %33 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %32, i32 0, i32 1
  store %struct.pvr2_context* %29, %struct.pvr2_context** %33, align 8
  br label %36

34:                                               ; preds = %14
  %35 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  store %struct.pvr2_context* %35, %struct.pvr2_context** @pvr2_context_notify_first, align 8
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %38 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %9
  br label %83

40:                                               ; preds = %2
  %41 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %42 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %40
  %46 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %49 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %48, i32 0, i32 1
  %50 = load %struct.pvr2_context*, %struct.pvr2_context** %49, align 8
  %51 = icmp ne %struct.pvr2_context* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %54 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %53, i32 0, i32 2
  %55 = load %struct.pvr2_context*, %struct.pvr2_context** %54, align 8
  %56 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %57 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %56, i32 0, i32 1
  %58 = load %struct.pvr2_context*, %struct.pvr2_context** %57, align 8
  %59 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %58, i32 0, i32 2
  store %struct.pvr2_context* %55, %struct.pvr2_context** %59, align 8
  br label %64

60:                                               ; preds = %45
  %61 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %62 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %61, i32 0, i32 2
  %63 = load %struct.pvr2_context*, %struct.pvr2_context** %62, align 8
  store %struct.pvr2_context* %63, %struct.pvr2_context** @pvr2_context_notify_last, align 8
  br label %64

64:                                               ; preds = %60, %52
  %65 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %66 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %65, i32 0, i32 2
  %67 = load %struct.pvr2_context*, %struct.pvr2_context** %66, align 8
  %68 = icmp ne %struct.pvr2_context* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %71 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %70, i32 0, i32 1
  %72 = load %struct.pvr2_context*, %struct.pvr2_context** %71, align 8
  %73 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %74 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %73, i32 0, i32 2
  %75 = load %struct.pvr2_context*, %struct.pvr2_context** %74, align 8
  %76 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %75, i32 0, i32 1
  store %struct.pvr2_context* %72, %struct.pvr2_context** %76, align 8
  br label %81

77:                                               ; preds = %64
  %78 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %79 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %78, i32 0, i32 1
  %80 = load %struct.pvr2_context*, %struct.pvr2_context** %79, align 8
  store %struct.pvr2_context* %80, %struct.pvr2_context** @pvr2_context_notify_first, align 8
  br label %81

81:                                               ; preds = %77, %69
  br label %82

82:                                               ; preds = %81, %40
  br label %83

83:                                               ; preds = %82, %39
  %84 = call i32 @mutex_unlock(i32* @pvr2_context_mutex)
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @wake_up(i32* @pvr2_context_sync_data)
  br label %89

89:                                               ; preds = %87, %83
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
