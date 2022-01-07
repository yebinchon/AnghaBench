; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c___v4l2_clk_register_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c___v4l2_clk_register_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clk = type { i32 }
%struct.module = type { i32 }
%struct.v4l2_clk_fixed = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.module*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fixed_get_rate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_clk* @__v4l2_clk_register_fixed(i8* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca %struct.v4l2_clk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.v4l2_clk*, align 8
  %9 = alloca %struct.v4l2_clk_fixed*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.v4l2_clk_fixed* @kzalloc(i32 24, i32 %10)
  store %struct.v4l2_clk_fixed* %11, %struct.v4l2_clk_fixed** %9, align 8
  %12 = load %struct.v4l2_clk_fixed*, %struct.v4l2_clk_fixed** %9, align 8
  %13 = icmp ne %struct.v4l2_clk_fixed* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.v4l2_clk* @ERR_PTR(i32 %16)
  store %struct.v4l2_clk* %17, %struct.v4l2_clk** %4, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.v4l2_clk_fixed*, %struct.v4l2_clk_fixed** %9, align 8
  %21 = getelementptr inbounds %struct.v4l2_clk_fixed, %struct.v4l2_clk_fixed* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @fixed_get_rate, align 4
  %23 = load %struct.v4l2_clk_fixed*, %struct.v4l2_clk_fixed** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_clk_fixed, %struct.v4l2_clk_fixed* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.module*, %struct.module** %7, align 8
  %27 = load %struct.v4l2_clk_fixed*, %struct.v4l2_clk_fixed** %9, align 8
  %28 = getelementptr inbounds %struct.v4l2_clk_fixed, %struct.v4l2_clk_fixed* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.module* %26, %struct.module** %29, align 8
  %30 = load %struct.v4l2_clk_fixed*, %struct.v4l2_clk_fixed** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_clk_fixed, %struct.v4l2_clk_fixed* %30, i32 0, i32 1
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.v4l2_clk_fixed*, %struct.v4l2_clk_fixed** %9, align 8
  %34 = call %struct.v4l2_clk* @v4l2_clk_register(%struct.TYPE_2__* %31, i8* %32, %struct.v4l2_clk_fixed* %33)
  store %struct.v4l2_clk* %34, %struct.v4l2_clk** %8, align 8
  %35 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  %36 = call i64 @IS_ERR(%struct.v4l2_clk* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = load %struct.v4l2_clk_fixed*, %struct.v4l2_clk_fixed** %9, align 8
  %40 = call i32 @kfree(%struct.v4l2_clk_fixed* %39)
  br label %41

41:                                               ; preds = %38, %18
  %42 = load %struct.v4l2_clk*, %struct.v4l2_clk** %8, align 8
  store %struct.v4l2_clk* %42, %struct.v4l2_clk** %4, align 8
  br label %43

43:                                               ; preds = %41, %14
  %44 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  ret %struct.v4l2_clk* %44
}

declare dso_local %struct.v4l2_clk_fixed* @kzalloc(i32, i32) #1

declare dso_local %struct.v4l2_clk* @ERR_PTR(i32) #1

declare dso_local %struct.v4l2_clk* @v4l2_clk_register(%struct.TYPE_2__*, i8*, %struct.v4l2_clk_fixed*) #1

declare dso_local i64 @IS_ERR(%struct.v4l2_clk*) #1

declare dso_local i32 @kfree(%struct.v4l2_clk_fixed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
