; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clk = type { %struct.v4l2_clk*, i32, i32, i32, i8*, %struct.v4l2_clk_ops* }
%struct.v4l2_clk_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@clk_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_clk* @v4l2_clk_register(%struct.v4l2_clk_ops* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_clk*, align 8
  %5 = alloca %struct.v4l2_clk_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.v4l2_clk*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_clk_ops* %0, %struct.v4l2_clk_ops** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.v4l2_clk_ops*, %struct.v4l2_clk_ops** %5, align 8
  %11 = icmp ne %struct.v4l2_clk_ops* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.v4l2_clk* @ERR_PTR(i32 %17)
  store %struct.v4l2_clk* %18, %struct.v4l2_clk** %4, align 8
  br label %79

19:                                               ; preds = %12
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.v4l2_clk* @kzalloc(i32 40, i32 %20)
  store %struct.v4l2_clk* %21, %struct.v4l2_clk** %8, align 8
  %22 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %23 = icmp ne %struct.v4l2_clk* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.v4l2_clk* @ERR_PTR(i32 %26)
  store %struct.v4l2_clk* %27, %struct.v4l2_clk** %4, align 8
  br label %79

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.v4l2_clk* @kstrdup(i8* %29, i32 %30)
  %32 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %32, i32 0, i32 0
  store %struct.v4l2_clk* %31, %struct.v4l2_clk** %33, align 8
  %34 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %35 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %34, i32 0, i32 0
  %36 = load %struct.v4l2_clk*, %struct.v4l2_clk** %35, align 8
  %37 = icmp ne %struct.v4l2_clk* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %70

41:                                               ; preds = %28
  %42 = load %struct.v4l2_clk_ops*, %struct.v4l2_clk_ops** %5, align 8
  %43 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %43, i32 0, i32 5
  store %struct.v4l2_clk_ops* %42, %struct.v4l2_clk_ops** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %49 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %48, i32 0, i32 3
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %51, i32 0, i32 2
  %53 = call i32 @mutex_init(i32* %52)
  %54 = call i32 @mutex_lock(i32* @clk_lock)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @v4l2_clk_find(i8* %55)
  %57 = call i32 @IS_ERR(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %41
  %60 = call i32 @mutex_unlock(i32* @clk_lock)
  %61 = load i32, i32* @EEXIST, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %69

63:                                               ; preds = %41
  %64 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %64, i32 0, i32 1
  %66 = call i32 @list_add_tail(i32* %65, i32* @clk_list)
  %67 = call i32 @mutex_unlock(i32* @clk_lock)
  %68 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  store %struct.v4l2_clk* %68, %struct.v4l2_clk** %4, align 8
  br label %79

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %72 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %71, i32 0, i32 0
  %73 = load %struct.v4l2_clk*, %struct.v4l2_clk** %72, align 8
  %74 = call i32 @kfree(%struct.v4l2_clk* %73)
  %75 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %76 = call i32 @kfree(%struct.v4l2_clk* %75)
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.v4l2_clk* @ERR_PTR(i32 %77)
  store %struct.v4l2_clk* %78, %struct.v4l2_clk** %4, align 8
  br label %79

79:                                               ; preds = %70, %63, %24, %15
  %80 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  ret %struct.v4l2_clk* %80
}

declare dso_local %struct.v4l2_clk* @ERR_PTR(i32) #1

declare dso_local %struct.v4l2_clk* @kzalloc(i32, i32) #1

declare dso_local %struct.v4l2_clk* @kstrdup(i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_clk_find(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.v4l2_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
