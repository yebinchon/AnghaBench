; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_check_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_check_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_controls = type { i64, i64, i64, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32, i64* }

@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_controls*, i32)* @check_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ext_ctrls(%struct.v4l2_ext_controls* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ext_controls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.v4l2_ext_controls* %0, %struct.v4l2_ext_controls** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %7, i32 0, i32 4
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 0, i64* %10, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %11

29:                                               ; preds = %11
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %74

39:                                               ; preds = %32, %29
  %40 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %74

45:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @V4L2_CTRL_ID2WHICH(i32 %59)
  %61 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %3, align 4
  br label %74

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %46

73:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %65, %44, %38
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @V4L2_CTRL_ID2WHICH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
