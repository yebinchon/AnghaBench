; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_ext_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_ext_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_controls = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"which=0x%x, count=%d, error_idx=%d, request_fd=%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c", id/val=0x%x/0x%x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c", id/size=0x%x/%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_ext_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_ext_controls(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ext_controls*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.v4l2_ext_controls*
  store %struct.v4l2_ext_controls* %8, %struct.v4l2_ext_controls** %5, align 8
  %9 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %75, %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %28
  %39 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %54)
  br label %74

56:                                               ; preds = %28
  %57 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %72)
  br label %74

74:                                               ; preds = %56, %38
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %22

78:                                               ; preds = %22
  %79 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
