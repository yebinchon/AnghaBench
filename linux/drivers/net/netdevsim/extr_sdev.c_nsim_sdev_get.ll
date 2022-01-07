; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_sdev.c_nsim_sdev_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_sdev.c_nsim_sdev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim_shared_dev = type { i32, i32, i32 }
%struct.netdevsim = type { %struct.netdevsim_shared_dev* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nsim_sdev_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@nsim_sdev_ddir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netdevsim_shared_dev* @nsim_sdev_get(%struct.netdevsim* %0) #0 {
  %2 = alloca %struct.netdevsim_shared_dev*, align 8
  %3 = alloca %struct.netdevsim*, align 8
  %4 = alloca %struct.netdevsim_shared_dev*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.netdevsim* %0, %struct.netdevsim** %3, align 8
  %7 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %8 = icmp ne %struct.netdevsim* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %11 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %10, i32 0, i32 0
  %12 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %11, align 8
  %13 = icmp ne %struct.netdevsim_shared_dev* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.netdevsim_shared_dev* @ERR_PTR(i32 %20)
  store %struct.netdevsim_shared_dev* %21, %struct.netdevsim_shared_dev** %2, align 8
  br label %85

22:                                               ; preds = %9
  %23 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %24 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %23, i32 0, i32 0
  %25 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %24, align 8
  store %struct.netdevsim_shared_dev* %25, %struct.netdevsim_shared_dev** %4, align 8
  %26 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %27 = getelementptr inbounds %struct.netdevsim_shared_dev, %struct.netdevsim_shared_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  store %struct.netdevsim_shared_dev* %30, %struct.netdevsim_shared_dev** %2, align 8
  br label %85

31:                                               ; preds = %1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.netdevsim_shared_dev* @kzalloc(i32 12, i32 %32)
  store %struct.netdevsim_shared_dev* %33, %struct.netdevsim_shared_dev** %4, align 8
  %34 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %35 = icmp ne %struct.netdevsim_shared_dev* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.netdevsim_shared_dev* @ERR_PTR(i32 %38)
  store %struct.netdevsim_shared_dev* %39, %struct.netdevsim_shared_dev** %2, align 8
  br label %85

40:                                               ; preds = %31
  %41 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %42 = getelementptr inbounds %struct.netdevsim_shared_dev, %struct.netdevsim_shared_dev* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @nsim_sdev_id, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @nsim_sdev_id, align 4
  %45 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %46 = getelementptr inbounds %struct.netdevsim_shared_dev, %struct.netdevsim_shared_dev* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %48 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %49 = getelementptr inbounds %struct.netdevsim_shared_dev, %struct.netdevsim_shared_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %53 = load i32, i32* @nsim_sdev_ddir, align 4
  %54 = call i32 @debugfs_create_dir(i8* %52, i32 %53)
  %55 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %56 = getelementptr inbounds %struct.netdevsim_shared_dev, %struct.netdevsim_shared_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %58 = getelementptr inbounds %struct.netdevsim_shared_dev, %struct.netdevsim_shared_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IS_ERR_OR_NULL(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %40
  %63 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %64 = getelementptr inbounds %struct.netdevsim_shared_dev, %struct.netdevsim_shared_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @PTR_ERR_OR_ZERO(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  %72 = sext i32 %71 to i64
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi i64 [ %66, %68 ], [ %72, %69 ]
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %40
  %77 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  store %struct.netdevsim_shared_dev* %77, %struct.netdevsim_shared_dev** %2, align 8
  br label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @nsim_sdev_id, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* @nsim_sdev_id, align 4
  %81 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %4, align 8
  %82 = call i32 @kfree(%struct.netdevsim_shared_dev* %81)
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.netdevsim_shared_dev* @ERR_PTR(i32 %83)
  store %struct.netdevsim_shared_dev* %84, %struct.netdevsim_shared_dev** %2, align 8
  br label %85

85:                                               ; preds = %78, %76, %36, %22, %18
  %86 = load %struct.netdevsim_shared_dev*, %struct.netdevsim_shared_dev** %2, align 8
  ret %struct.netdevsim_shared_dev* %86
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.netdevsim_shared_dev* @ERR_PTR(i32) #1

declare dso_local %struct.netdevsim_shared_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i64 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @kfree(%struct.netdevsim_shared_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
