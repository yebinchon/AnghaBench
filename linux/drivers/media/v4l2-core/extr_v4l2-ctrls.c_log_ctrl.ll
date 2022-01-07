; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_log_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_log_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_ctrl*)* }

@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_CTRL_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s%s%s: \00", align 1
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_GRABBED = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" inactive\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" grabbed\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_ctrl*, i8*, i8*)* @log_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_ctrl(%struct.v4l2_ctrl* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %11 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %77

16:                                               ; preds = %3
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_CTRL_TYPE_CTRL_CLASS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %77

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25, i32 %28)
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.v4l2_ctrl*)*, i32 (%struct.v4l2_ctrl*)** %33, align 8
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %36 = call i32 %34(%struct.v4l2_ctrl* %35)
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %41 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %23
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %47
  %57 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56
  %66 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %67 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @pr_cont(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %65
  br label %75

75:                                               ; preds = %74, %23
  %76 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %22, %15
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*, i8*, i32) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
