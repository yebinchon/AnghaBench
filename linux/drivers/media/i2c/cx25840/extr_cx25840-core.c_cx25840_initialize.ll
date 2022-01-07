; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i64, i32, i32, i32, i32 }
%struct.workqueue_struct = type { i32 }

@wait = common dso_local global i32 0, align 4
@cx25840_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cx25840_fw\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @cx25840_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25840_initialize(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca %struct.workqueue_struct*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call i32 @i2c_get_clientdata(%struct.i2c_client* %7)
  %9 = call %struct.cx25840_state* @to_state(i32 %8)
  store %struct.cx25840_state* %9, %struct.cx25840_state** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = call i32 @cx25840_and_or(%struct.i2c_client* %10, i32 2051, i32 -17, i32 0)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = call i32 @cx25840_write(%struct.i2c_client* %12, i32 0, i32 4)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = call i32 @init_dll1(%struct.i2c_client* %14)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @init_dll2(%struct.i2c_client* %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = call i32 @cx25840_write(%struct.i2c_client* %18, i32 310, i32 10)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = call i32 @cx25840_write(%struct.i2c_client* %20, i32 316, i32 1)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @cx25840_write(%struct.i2c_client* %22, i32 316, i32 0)
  %24 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %25 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %24, i32 0, i32 4
  %26 = load i32, i32* @cx25840_work_handler, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %29 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %28, i32 0, i32 3
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %31, %struct.workqueue_struct** %4, align 8
  %32 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %33 = icmp ne %struct.workqueue_struct* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %1
  %35 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %36 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %35, i32 0, i32 3
  %37 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %38 = call i32 @prepare_to_wait(i32* %36, i32* @wait, i32 %37)
  %39 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %40 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %41 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %40, i32 0, i32 4
  %42 = call i32 @queue_work(%struct.workqueue_struct* %39, i32* %41)
  %43 = call i32 (...) @schedule()
  %44 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %45 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %44, i32 0, i32 3
  %46 = call i32 @finish_wait(i32* %45, i32* @wait)
  %47 = load %struct.workqueue_struct*, %struct.workqueue_struct** %4, align 8
  %48 = call i32 @destroy_workqueue(%struct.workqueue_struct* %47)
  br label %49

49:                                               ; preds = %34, %1
  %50 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %51 = call i32 @cx25840_write(%struct.i2c_client* %50, i32 277, i32 140)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %53 = call i32 @cx25840_write(%struct.i2c_client* %52, i32 278, i32 7)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %55 = call i32 @cx25840_write(%struct.i2c_client* %54, i32 280, i32 2)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %57 = call i32 @cx25840_write(%struct.i2c_client* %56, i32 1189, i32 128)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %59 = call i32 @cx25840_write(%struct.i2c_client* %58, i32 1189, i32 0)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %61 = call i32 @cx25840_write(%struct.i2c_client* %60, i32 1026, i32 0)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = call i32 @cx25840_and_or(%struct.i2c_client* %62, i32 1025, i32 -25, i32 0)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = call i32 @cx25840_and_or(%struct.i2c_client* %64, i32 1186, i32 -17, i32 16)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %67 = call i32 @cx25840_write(%struct.i2c_client* %66, i32 2259, i32 31)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %69 = call i32 @cx25840_write(%struct.i2c_client* %68, i32 2275, i32 3)
  %70 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %71 = call i32 @cx25840_std_setup(%struct.i2c_client* %70)
  %72 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %73 = call i32 @cx25840_write(%struct.i2c_client* %72, i32 2324, i32 160)
  %74 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %75 = call i32 @cx25840_write(%struct.i2c_client* %74, i32 2328, i32 160)
  %76 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %77 = call i32 @cx25840_write(%struct.i2c_client* %76, i32 2329, i32 1)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %79 = call i32 @cx25840_write(%struct.i2c_client* %78, i32 2057, i32 4)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %81 = call i32 @cx25840_write(%struct.i2c_client* %80, i32 2255, i32 15)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %83 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %84 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %87 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @set_input(%struct.i2c_client* %82, i32 %85, i32 %88)
  %90 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %91 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %49
  %95 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %96 = call i32 @cx25840_vconfig_apply(%struct.i2c_client* %95)
  br label %97

97:                                               ; preds = %94, %49
  %98 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %99 = call i32 @cx25840_and_or(%struct.i2c_client* %98, i32 2051, i32 -17, i32 16)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @init_dll1(%struct.i2c_client*) #1

declare dso_local i32 @init_dll2(%struct.i2c_client*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.workqueue_struct* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @queue_work(%struct.workqueue_struct*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @cx25840_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @set_input(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_vconfig_apply(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
