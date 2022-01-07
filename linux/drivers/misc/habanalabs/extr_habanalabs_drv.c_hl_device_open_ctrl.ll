; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_hl_device_open_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_habanalabs_drv.c_hl_device_open_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.hl_fpriv* }
%struct.hl_fpriv = type { i32, i32, %struct.file*, %struct.hl_device*, i32 }
%struct.hl_device = type { i32, i32, i32 }

@hl_devs_idr_lock = common dso_local global i32 0, align 4
@hl_devs_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't find device %d:%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Can't open %s because it is disabled or in reset\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_open_ctrl(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_fpriv*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = call i32 @mutex_lock(i32* @hl_devs_idr_lock)
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = call %struct.hl_device* @idr_find(i32* @hl_devs_idr, i32 %11)
  store %struct.hl_device* %12, %struct.hl_device** %6, align 8
  %13 = call i32 @mutex_unlock(i32* @hl_devs_idr_lock)
  %14 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %15 = icmp ne %struct.hl_device* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @imajor(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @iminor(%struct.inode* %19)
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hl_fpriv* @kzalloc(i32 32, i32 %25)
  store %struct.hl_fpriv* %26, %struct.hl_fpriv** %7, align 8
  %27 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %28 = icmp ne %struct.hl_fpriv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %86

32:                                               ; preds = %24
  %33 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %37 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_name(i32 %45)
  %47 = call i32 @dev_err_ratelimited(i32 %42, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %79

50:                                               ; preds = %32
  %51 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %52 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %51, i32 0, i32 4
  %53 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 1
  %55 = call i32 @list_add(i32* %52, i32* %54)
  %56 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %60 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %61 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %60, i32 0, i32 3
  store %struct.hl_device* %59, %struct.hl_device** %61, align 8
  %62 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %63 = load %struct.file*, %struct.file** %5, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store %struct.hl_fpriv* %62, %struct.hl_fpriv** %64, align 8
  %65 = load %struct.file*, %struct.file** %5, align 8
  %66 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %67 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %66, i32 0, i32 2
  store %struct.file* %65, %struct.file** %67, align 8
  %68 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %69 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = call i32 @nonseekable_open(%struct.inode* %70, %struct.file* %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @find_get_pid(i32 %75)
  %77 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %78 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %86

79:                                               ; preds = %39
  %80 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %81 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.hl_fpriv*, %struct.hl_fpriv** %7, align 8
  %84 = call i32 @kfree(%struct.hl_fpriv* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %50, %29, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hl_device* @idr_find(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local %struct.hl_fpriv* @kzalloc(i32, i32) #1

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @find_get_pid(i32) #1

declare dso_local i32 @kfree(%struct.hl_fpriv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
