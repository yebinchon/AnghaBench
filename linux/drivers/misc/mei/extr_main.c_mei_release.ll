; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.mei_cl* }
%struct.mei_cl = type { %struct.mei_device* }
%struct.mei_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"removing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mei_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mei_cl*, align 8
  %7 = alloca %struct.mei_device*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.mei_cl*, %struct.mei_cl** %10, align 8
  store %struct.mei_cl* %11, %struct.mei_cl** %6, align 8
  %12 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %13 = icmp ne %struct.mei_cl* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %16 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %15, i32 0, i32 0
  %17 = load %struct.mei_device*, %struct.mei_device** %16, align 8
  %18 = icmp ne %struct.mei_device* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %30 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %29, i32 0, i32 0
  %31 = load %struct.mei_device*, %struct.mei_device** %30, align 8
  store %struct.mei_device* %31, %struct.mei_device** %7, align 8
  %32 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %36 = call i32 @mei_cl_disconnect(%struct.mei_cl* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = call i32 @mei_cl_flush_queues(%struct.mei_cl* %37, %struct.file* %38)
  %40 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %41 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %42 = call i32 @cl_dbg(%struct.mei_device* %40, %struct.mei_cl* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %44 = call i32 @mei_cl_unlink(%struct.mei_cl* %43)
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  store %struct.mei_cl* null, %struct.mei_cl** %46, align 8
  %47 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %48 = call i32 @kfree(%struct.mei_cl* %47)
  %49 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %28, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_cl_disconnect(%struct.mei_cl*) #1

declare dso_local i32 @mei_cl_flush_queues(%struct.mei_cl*, %struct.file*) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @mei_cl_unlink(%struct.mei_cl*) #1

declare dso_local i32 @kfree(%struct.mei_cl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
