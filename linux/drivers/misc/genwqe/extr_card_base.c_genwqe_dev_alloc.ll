; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GENWQE_CARD_NO_MAX = common dso_local global i32 0, align 4
@genwqe_devices = common dso_local global %struct.genwqe_dev** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@class_genwqe = common dso_local global i32 0, align 4
@debugfs_genwqe = common dso_local global i32 0, align 4
@CONFIG_GENWQE_PLATFORM_ERROR_RECOVERY = common dso_local global i32 0, align 4
@GENWQE_CARD_UNUSED = common dso_local global i32 0, align 4
@GENWQE_DDCB_SOFTWARE_TIMEOUT = common dso_local global i32 0, align 4
@GENWQE_KILL_TIMEOUT = common dso_local global i32 0, align 4
@GENWQE_MAX_VFS = common dso_local global i32 0, align 4
@GENWQE_VF_JOBTIMEOUT_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.genwqe_dev* ()* @genwqe_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.genwqe_dev* @genwqe_dev_alloc() #0 {
  %1 = alloca %struct.genwqe_dev*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.genwqe_dev*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %18, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GENWQE_CARD_NO_MAX, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load %struct.genwqe_dev**, %struct.genwqe_dev*** @genwqe_devices, align 8
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.genwqe_dev*, %struct.genwqe_dev** %10, i64 %12
  %14 = load %struct.genwqe_dev*, %struct.genwqe_dev** %13, align 8
  %15 = icmp eq %struct.genwqe_dev* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %2, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %5

21:                                               ; preds = %16, %5
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @GENWQE_CARD_NO_MAX, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.genwqe_dev* @ERR_PTR(i32 %27)
  store %struct.genwqe_dev* %28, %struct.genwqe_dev** %1, align 8
  br label %94

29:                                               ; preds = %21
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.genwqe_dev* @kzalloc(i32 56, i32 %30)
  store %struct.genwqe_dev* %31, %struct.genwqe_dev** %4, align 8
  %32 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %33 = icmp ne %struct.genwqe_dev* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.genwqe_dev* @ERR_PTR(i32 %36)
  store %struct.genwqe_dev* %37, %struct.genwqe_dev** %1, align 8
  br label %94

38:                                               ; preds = %29
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %41 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @class_genwqe, align 4
  %43 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %44 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @debugfs_genwqe, align 4
  %46 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %47 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @CONFIG_GENWQE_PLATFORM_ERROR_RECOVERY, align 4
  %49 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %50 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %52 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %51, i32 0, i32 8
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %55 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %54, i32 0, i32 7
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %58 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %57, i32 0, i32 6
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load i32, i32* @GENWQE_CARD_UNUSED, align 4
  %61 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %62 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %64 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %63, i32 0, i32 4
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load i32, i32* @GENWQE_DDCB_SOFTWARE_TIMEOUT, align 4
  %67 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %68 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @GENWQE_KILL_TIMEOUT, align 4
  %70 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %71 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %84, %38
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @GENWQE_MAX_VFS, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i32, i32* @GENWQE_VF_JOBTIMEOUT_MSEC, align 4
  %78 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %79 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %3, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %72

87:                                               ; preds = %72
  %88 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %89 = load %struct.genwqe_dev**, %struct.genwqe_dev*** @genwqe_devices, align 8
  %90 = load i32, i32* %2, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.genwqe_dev*, %struct.genwqe_dev** %89, i64 %91
  store %struct.genwqe_dev* %88, %struct.genwqe_dev** %92, align 8
  %93 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  store %struct.genwqe_dev* %93, %struct.genwqe_dev** %1, align 8
  br label %94

94:                                               ; preds = %87, %34, %25
  %95 = load %struct.genwqe_dev*, %struct.genwqe_dev** %1, align 8
  ret %struct.genwqe_dev* %95
}

declare dso_local %struct.genwqe_dev* @ERR_PTR(i32) #1

declare dso_local %struct.genwqe_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
