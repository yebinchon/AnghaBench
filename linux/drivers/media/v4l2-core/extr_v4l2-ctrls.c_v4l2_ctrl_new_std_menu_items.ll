; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_std_menu_items.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_std_menu_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu_items(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_ops* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca %struct.v4l2_ctrl*, align 8
  %9 = alloca %struct.v4l2_ctrl_handler*, align 8
  %10 = alloca %struct.v4l2_ctrl_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %9, align 8
  store %struct.v4l2_ctrl_ops* %1, %struct.v4l2_ctrl_ops** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @v4l2_ctrl_get_menu(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %7
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %29, i32 %31)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %8, align 8
  br label %59

33:                                               ; preds = %7
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @v4l2_ctrl_fill(i32 %34, i8** %17, i32* %16, i32* %20, i32* %21, i32* %19, i32* %22, i32* %18)
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i8**, i8*** %15, align 8
  %41 = icmp eq i8** %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39, %33
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %43, i32 %45)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %8, align 8
  br label %59

47:                                               ; preds = %39
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %49 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i8**, i8*** %15, align 8
  %58 = call %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %48, %struct.v4l2_ctrl_ops* %49, i32* null, i32 %50, i8* %51, i32 %52, i32 0, i32 %53, i32 %54, i32 %55, i32* null, i32 0, i32 %56, i8** %57, i32* null, i32* null)
  store %struct.v4l2_ctrl* %58, %struct.v4l2_ctrl** %8, align 8
  br label %59

59:                                               ; preds = %47, %42, %28
  %60 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  ret %struct.v4l2_ctrl* %60
}

declare dso_local i64 @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
