; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_auto_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_auto_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i64, i64, i32, i32, i32, i64 }

@g_volatile_ctrl = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_ctrl_auto_cluster(i32 %0, %struct.v4l2_ctrl** %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_ctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.v4l2_ctrl** %1, %struct.v4l2_ctrl*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, i64 0
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  store %struct.v4l2_ctrl* %14, %struct.v4l2_ctrl** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %6, align 8
  %17 = call i32 @v4l2_ctrl_cluster(i32 %15, %struct.v4l2_ctrl** %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ule i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br label %33

33:                                               ; preds = %27, %4
  %34 = phi i1 [ true, %4 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %41 = load i32, i32* @g_volatile_ctrl, align 4
  %42 = call i32 @has_op(%struct.v4l2_ctrl* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ false, %33 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 5
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %63 = call i32 @is_cur_manual(%struct.v4l2_ctrl* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %45
  %66 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  br label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %66, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %45
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %98, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %81, i64 %83
  %85 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %84, align 8
  %86 = icmp ne %struct.v4l2_ctrl* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %89, i64 %91
  %93 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %92, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %88
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %87, %80
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %76

101:                                              ; preds = %76
  ret void
}

declare dso_local i32 @v4l2_ctrl_cluster(i32, %struct.v4l2_ctrl**) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @has_op(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @is_cur_manual(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
