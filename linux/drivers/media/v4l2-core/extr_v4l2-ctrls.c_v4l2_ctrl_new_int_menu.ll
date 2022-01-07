; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_int_menu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_int_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_ops = type { i32 }

@V4L2_CTRL_TYPE_INTEGER_MENU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_int_menu(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_ops* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.v4l2_ctrl_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %8, align 8
  store %struct.v4l2_ctrl_ops* %1, %struct.v4l2_ctrl_ops** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @v4l2_ctrl_fill(i32 %23, i8** %14, i32* %15, i32* %16, i32* %18, i32* %17, i32* %19, i32* %20)
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %29, i32 %31)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %7, align 8
  br label %44

33:                                               ; preds = %6
  %34 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %35 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %34, %struct.v4l2_ctrl_ops* %35, i32* null, i32 %36, i8* %37, i32 %38, i32 0, i32 %39, i32 0, i32 %40, i32* null, i32 0, i32 %41, i32* null, i32* %42, i32* null)
  store %struct.v4l2_ctrl* %43, %struct.v4l2_ctrl** %7, align 8
  br label %44

44:                                               ; preds = %33, %28
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  ret %struct.v4l2_ctrl* %45
}

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
