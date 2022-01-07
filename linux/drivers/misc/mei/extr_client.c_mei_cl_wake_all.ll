; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_wake_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_wake_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, i32, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Waking up reading client!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Waking up writing client!\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Waking up waiting for event clients!\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Waking up ctrl write clients!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl*)* @mei_cl_wake_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_cl_wake_all(%struct.mei_cl* %0) #0 {
  %2 = alloca %struct.mei_cl*, align 8
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %2, align 8
  %4 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %5 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %4, i32 0, i32 4
  %6 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  store %struct.mei_device* %6, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %8 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %7, i32 0, i32 3
  %9 = call i64 @waitqueue_active(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %13 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %14 = call i32 @cl_dbg(%struct.mei_device* %12, %struct.mei_cl* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %16 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %15, i32 0, i32 3
  %17 = call i32 @wake_up_interruptible(i32* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %20 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %19, i32 0, i32 2
  %21 = call i64 @waitqueue_active(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %25 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %26 = call i32 @cl_dbg(%struct.mei_device* %24, %struct.mei_cl* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %28 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %27, i32 0, i32 2
  %29 = call i32 @wake_up_interruptible(i32* %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %32 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %31, i32 0, i32 1
  %33 = call i64 @waitqueue_active(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %37 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %38 = call i32 @cl_dbg(%struct.mei_device* %36, %struct.mei_cl* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %40 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %39, i32 0, i32 1
  %41 = call i32 @wake_up_interruptible(i32* %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %44 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %43, i32 0, i32 0
  %45 = call i64 @waitqueue_active(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %49 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %50 = call i32 @cl_dbg(%struct.mei_device* %48, %struct.mei_cl* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %52 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %51, i32 0, i32 0
  %53 = call i32 @wake_up(i32* %52)
  br label %54

54:                                               ; preds = %47, %42
  ret void
}

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
