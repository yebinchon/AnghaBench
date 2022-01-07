; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, i32, i32, %struct.v4l2_ctrl**, i32 }
%struct.v4l2_ext_control = type { i32 }

@V4L2_CTRL_TYPE_INTEGER64 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@g_volatile_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*, %struct.v4l2_ext_control*)* @get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ctrl(%struct.v4l2_ctrl* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 3
  %11 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %11, i64 0
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  store %struct.v4l2_ctrl* %13, %struct.v4l2_ctrl** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_CTRL_TYPE_INTEGER64, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %80

27:                                               ; preds = %18, %2
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EACCES, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %80

37:                                               ; preds = %27
  %38 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %39 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %38)
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 3
  %56 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %56, i64 %58
  %60 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %59, align 8
  %61 = call i32 @cur_to_new(%struct.v4l2_ctrl* %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %47

65:                                               ; preds = %47
  %66 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %67 = load i32, i32* @g_volatile_ctrl, align 4
  %68 = call i32 @call_op(%struct.v4l2_ctrl* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %70 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %71 = call i32 @new_to_user(%struct.v4l2_ext_control* %69, %struct.v4l2_ctrl* %70)
  br label %76

72:                                               ; preds = %37
  %73 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %74 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %75 = call i32 @cur_to_user(%struct.v4l2_ext_control* %73, %struct.v4l2_ctrl* %74)
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %78 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %34, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @cur_to_new(%struct.v4l2_ctrl*) #1

declare dso_local i32 @call_op(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @new_to_user(%struct.v4l2_ext_control*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @cur_to_user(%struct.v4l2_ext_control*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
