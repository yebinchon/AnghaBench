; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_class_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_class_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs_class = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Creating and registering pvr2_sysfs_class id=%p\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pvrusb2\00", align 1
@pvr2_sysfs_class_release = common dso_local global i32 0, align 4
@pvr2_sysfs_release = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Registration failed for pvr2_sysfs_class id=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvr2_sysfs_class* @pvr2_sysfs_class_create() #0 {
  %1 = alloca %struct.pvr2_sysfs_class*, align 8
  %2 = alloca %struct.pvr2_sysfs_class*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.pvr2_sysfs_class* @kzalloc(i32 16, i32 %3)
  store %struct.pvr2_sysfs_class* %4, %struct.pvr2_sysfs_class** %2, align 8
  %5 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %6 = icmp ne %struct.pvr2_sysfs_class* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  store %struct.pvr2_sysfs_class* %8, %struct.pvr2_sysfs_class** %1, align 8
  br label %34

9:                                                ; preds = %0
  %10 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %11 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.pvr2_sysfs_class* %10)
  %12 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_sysfs_class, %struct.pvr2_sysfs_class* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @pvr2_sysfs_class_release, align 4
  %16 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_sysfs_class, %struct.pvr2_sysfs_class* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @pvr2_sysfs_release, align 4
  %20 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_sysfs_class, %struct.pvr2_sysfs_class* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_sysfs_class, %struct.pvr2_sysfs_class* %23, i32 0, i32 0
  %25 = call i64 @class_register(%struct.TYPE_2__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %9
  %28 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %29 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), %struct.pvr2_sysfs_class* %28)
  %30 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  %31 = call i32 @kfree(%struct.pvr2_sysfs_class* %30)
  store %struct.pvr2_sysfs_class* null, %struct.pvr2_sysfs_class** %2, align 8
  br label %32

32:                                               ; preds = %27, %9
  %33 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %2, align 8
  store %struct.pvr2_sysfs_class* %33, %struct.pvr2_sysfs_class** %1, align 8
  br label %34

34:                                               ; preds = %32, %7
  %35 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %1, align 8
  ret %struct.pvr2_sysfs_class* %35
}

declare dso_local %struct.pvr2_sysfs_class* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_sysfs_trace(i8*, %struct.pvr2_sysfs_class*) #1

declare dso_local i64 @class_register(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.pvr2_sysfs_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
