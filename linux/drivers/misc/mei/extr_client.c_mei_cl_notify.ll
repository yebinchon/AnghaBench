; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i64, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"notify event\00", align 1
@SIGIO = common dso_local global i32 0, align 4
@POLL_PRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_cl_notify(%struct.mei_cl* %0) #0 {
  %2 = alloca %struct.mei_cl*, align 8
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %2, align 8
  %4 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %5 = icmp ne %struct.mei_cl* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %8 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %7, i32 0, i32 4
  %9 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %10 = icmp ne %struct.mei_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %45

12:                                               ; preds = %6
  %13 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %14 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %13, i32 0, i32 4
  %15 = load %struct.mei_device*, %struct.mei_device** %14, align 8
  store %struct.mei_device* %15, %struct.mei_device** %3, align 8
  %16 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %17 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %45

21:                                               ; preds = %12
  %22 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %23 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %24 = call i32 @cl_dbg(%struct.mei_device* %22, %struct.mei_cl* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %26 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %28 = call i32 @mei_cl_bus_notify_event(%struct.mei_cl* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %32 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %31, i32 0, i32 2
  %33 = call i32 @wake_up_interruptible(i32* %32)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %36 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %41 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %40, i32 0, i32 1
  %42 = load i32, i32* @SIGIO, align 4
  %43 = load i32, i32* @POLL_PRI, align 4
  %44 = call i32 @kill_fasync(i64* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %11, %20, %39, %34
  ret void
}

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_cl_bus_notify_event(%struct.mei_cl*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
