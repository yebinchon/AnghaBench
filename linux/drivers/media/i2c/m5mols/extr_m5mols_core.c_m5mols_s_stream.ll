; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.m5mols_info = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@M5MOLS_RESTYPE_MONITOR = common dso_local global i32 0, align 4
@M5MOLS_RESTYPE_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @m5mols_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m5mols_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %8)
  store %struct.m5mols_info* %9, %struct.m5mols_info** %5, align 8
  %10 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %11 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %14 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %17 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @M5MOLS_RESTYPE_MONITOR, align 4
  %27 = call i64 @is_code(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %31 = call i32 @m5mols_start_monitor(%struct.m5mols_info* %30)
  store i32 %31, i32* %7, align 4
  br label %44

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @M5MOLS_RESTYPE_CAPTURE, align 4
  %35 = call i64 @is_code(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %39 = call i32 @m5mols_start_capture(%struct.m5mols_info* %38)
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %29
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %47 = load i32, i32* @REG_PARAMETER, align 4
  %48 = call i32 @m5mols_set_mode(%struct.m5mols_info* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load %struct.m5mols_info*, %struct.m5mols_info** %5, align 8
  %51 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_code(i32, i32) #1

declare dso_local i32 @m5mols_start_monitor(%struct.m5mols_info*) #1

declare dso_local i32 @m5mols_start_capture(%struct.m5mols_info*) #1

declare dso_local i32 @m5mols_set_mode(%struct.m5mols_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
