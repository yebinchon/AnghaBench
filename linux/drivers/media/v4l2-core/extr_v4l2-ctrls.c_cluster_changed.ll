; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_cluster_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_cluster_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.v4l2_ctrl** }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_ctrl*, i32, i32, i32)* }

@V4L2_CTRL_FLAG_EXECUTE_ON_WRITE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cluster_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_changed(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %85, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %88

14:                                               ; preds = %8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 7
  %17 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %17, i64 %19
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %20, align 8
  store %struct.v4l2_ctrl* %21, %struct.v4l2_ctrl** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %23 = icmp eq %struct.v4l2_ctrl* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %85

25:                                               ; preds = %14
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_CTRL_FLAG_EXECUTE_ON_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  br label %85

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %48, %51
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %55, label %76

55:                                               ; preds = %53
  %56 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.v4l2_ctrl*, i32, i32, i32)*, i32 (%struct.v4l2_ctrl*, i32, i32, i32)** %59, align 8
  %61 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %60(%struct.v4l2_ctrl* %61, i32 %62, i32 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %44

76:                                               ; preds = %53
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %76, %40, %24
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %8

88:                                               ; preds = %8
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
