; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_std_menu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_std_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_ops = type { i32 }

@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER_MENU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_ops* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.v4l2_ctrl_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %8, align 8
  store %struct.v4l2_ctrl_ops* %1, %struct.v4l2_ctrl_ops** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8** null, i8*** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @v4l2_ctrl_fill(i32 %26, i8** %17, i32* %18, i32* %19, i32* %20, i32* %22, i32* %21, i32* %23)
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = call i8** @v4l2_ctrl_get_menu(i32 %32)
  store i8** %33, i8*** %14, align 8
  br label %42

34:                                               ; preds = %6
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = call i32* @v4l2_ctrl_get_int_menu(i32 %39, i32* %16)
  store i32* %40, i32** %15, align 8
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8**, i8*** %14, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %15, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %45
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %56, i32 %58)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %7, align 8
  br label %73

60:                                               ; preds = %51, %48
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %62 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %17, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i8**, i8*** %14, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %61, %struct.v4l2_ctrl_ops* %62, i32* null, i32 %63, i8* %64, i32 %65, i32 0, i32 %66, i32 %67, i32 %68, i32* null, i32 0, i32 %69, i8** %70, i32* %71, i32* null)
  store %struct.v4l2_ctrl* %72, %struct.v4l2_ctrl** %7, align 8
  br label %73

73:                                               ; preds = %60, %55
  %74 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  ret %struct.v4l2_ctrl* %74
}

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8** @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32* @v4l2_ctrl_get_int_menu(i32, i32*) #1

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
