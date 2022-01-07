; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_event_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-ir-raw.c_ir_raw_event_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.task_struct* }
%struct.task_struct = type { i32 }

@ir_raw_event_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rc%u\00", align 1
@ir_raw_handler_lock = common dso_local global i32 0, align 4
@ir_raw_client_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_raw_event_register(%struct.rc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  %5 = load i32, i32* @ir_raw_event_thread, align 4
  %6 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.task_struct* @kthread_run(i32 %5, %struct.TYPE_2__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.task_struct* %12, %struct.task_struct** %4, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call i64 @IS_ERR(%struct.task_struct* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call i32 @PTR_ERR(%struct.task_struct* %17)
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.task_struct* %20, %struct.task_struct** %24, align 8
  %25 = call i32 @mutex_lock(i32* @ir_raw_handler_lock)
  %26 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %29, i32* @ir_raw_client_list)
  %31 = call i32 @mutex_unlock(i32* @ir_raw_handler_lock)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
