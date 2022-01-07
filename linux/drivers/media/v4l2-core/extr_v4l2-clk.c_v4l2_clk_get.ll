; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clk = type { i32, %struct.v4l2_clk* }
%struct.device = type { i64 }
%struct.clk = type { i32, %struct.clk* }

@V4L2_CLK_NAME_SIZE = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_clk* @v4l2_clk_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.v4l2_clk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.v4l2_clk* @clk_get(%struct.device* %11, i8* %12)
  %14 = bitcast %struct.v4l2_clk* %13 to %struct.clk*
  store %struct.clk* %14, %struct.clk** %7, align 8
  %15 = load i32, i32* @V4L2_CLK_NAME_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.clk*, %struct.clk** %7, align 8
  %20 = bitcast %struct.clk* %19 to %struct.v4l2_clk*
  %21 = call i32 @PTR_ERR(%struct.v4l2_clk* %20)
  %22 = load i32, i32* @EPROBE_DEFER, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.v4l2_clk* @ERR_PTR(i32 %27)
  store %struct.v4l2_clk* %28, %struct.v4l2_clk** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.clk*, %struct.clk** %7, align 8
  %31 = bitcast %struct.clk* %30 to %struct.v4l2_clk*
  %32 = call i32 @IS_ERR_OR_NULL(%struct.v4l2_clk* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.v4l2_clk* @kzalloc(i32 16, i32 %35)
  store %struct.v4l2_clk* %36, %struct.v4l2_clk** %6, align 8
  %37 = load %struct.v4l2_clk*, %struct.v4l2_clk** %6, align 8
  %38 = icmp ne %struct.v4l2_clk* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.clk*, %struct.clk** %7, align 8
  %41 = bitcast %struct.clk* %40 to %struct.v4l2_clk*
  %42 = call i32 @clk_put(%struct.v4l2_clk* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.v4l2_clk* @ERR_PTR(i32 %44)
  store %struct.v4l2_clk* %45, %struct.v4l2_clk** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

46:                                               ; preds = %34
  %47 = load %struct.clk*, %struct.clk** %7, align 8
  %48 = bitcast %struct.clk* %47 to %struct.v4l2_clk*
  %49 = load %struct.v4l2_clk*, %struct.v4l2_clk** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %49, i32 0, i32 1
  store %struct.v4l2_clk* %48, %struct.v4l2_clk** %50, align 8
  %51 = load %struct.v4l2_clk*, %struct.v4l2_clk** %6, align 8
  store %struct.v4l2_clk* %51, %struct.v4l2_clk** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

52:                                               ; preds = %29
  %53 = call i32 @mutex_lock(i32* @clk_lock)
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i8* @dev_name(%struct.device* %54)
  %56 = call %struct.v4l2_clk* @v4l2_clk_find(i8* %55)
  store %struct.v4l2_clk* %56, %struct.v4l2_clk** %6, align 8
  %57 = load %struct.v4l2_clk*, %struct.v4l2_clk** %6, align 8
  %58 = call i32 @PTR_ERR(%struct.v4l2_clk* %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = trunc i64 %16 to i32
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @v4l2_clk_name_of(i8* %18, i32 %68, i64 %71)
  %73 = call %struct.v4l2_clk* @v4l2_clk_find(i8* %18)
  store %struct.v4l2_clk* %73, %struct.v4l2_clk** %6, align 8
  br label %74

74:                                               ; preds = %67, %62, %52
  %75 = load %struct.v4l2_clk*, %struct.v4l2_clk** %6, align 8
  %76 = call i32 @IS_ERR(%struct.v4l2_clk* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.v4l2_clk*, %struct.v4l2_clk** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %79, i32 0, i32 0
  %81 = call i32 @atomic_inc(i32* %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = call i32 @mutex_unlock(i32* @clk_lock)
  %84 = load %struct.v4l2_clk*, %struct.v4l2_clk** %6, align 8
  store %struct.v4l2_clk* %84, %struct.v4l2_clk** %3, align 8
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %46, %39, %25
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  ret %struct.v4l2_clk* %87
}

declare dso_local %struct.v4l2_clk* @clk_get(%struct.device*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PTR_ERR(%struct.v4l2_clk*) #1

declare dso_local %struct.v4l2_clk* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.v4l2_clk*) #1

declare dso_local %struct.v4l2_clk* @kzalloc(i32, i32) #1

declare dso_local i32 @clk_put(%struct.v4l2_clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_clk* @v4l2_clk_find(i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @v4l2_clk_name_of(i8*, i32, i64) #1

declare dso_local i32 @IS_ERR(%struct.v4l2_clk*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
