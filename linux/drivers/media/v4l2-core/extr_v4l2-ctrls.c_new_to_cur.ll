; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_new_to_cur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_new_to_cur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_ctrl = type { i32, i32, %struct.TYPE_3__*, i64, i32, %struct.TYPE_4__**, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.v4l2_ctrl*, i32)* }
%struct.TYPE_4__ = type { i64 }

@V4L2_EVENT_CTRL_CH_FLAGS = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_INACTIVE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_EVENT_CTRL_CH_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_fh*, %struct.v4l2_ctrl*, i32)* @new_to_cur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_to_cur(%struct.v4l2_fh* %0, %struct.v4l2_ctrl* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %9 = icmp eq %struct.v4l2_ctrl* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %122

11:                                               ; preds = %3
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ptr_to_ptr(%struct.v4l2_ctrl* %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %17, %11
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @V4L2_EVENT_CTRL_CH_FLAGS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  %32 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %33 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @is_cur_manual(%struct.TYPE_4__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* @V4L2_CTRL_FLAG_INACTIVE, align 4
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %63 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %47
  br label %68

68:                                               ; preds = %67, %31
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %4, align 8
  br label %69

69:                                               ; preds = %68, %26
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %122

75:                                               ; preds = %72, %69
  %76 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %4, align 8
  br label %81

81:                                               ; preds = %80, %75
  %82 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %83 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @V4L2_EVENT_CTRL_CH_VALUE, align 4
  br label %89

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @send_event(%struct.v4l2_fh* %82, %struct.v4l2_ctrl* %83, i32 %92)
  %94 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %98
  %102 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32 (%struct.v4l2_ctrl*, i32)*, i32 (%struct.v4l2_ctrl*, i32)** %105, align 8
  %107 = icmp ne i32 (%struct.v4l2_ctrl*, i32)* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32 (%struct.v4l2_ctrl*, i32)*, i32 (%struct.v4l2_ctrl*, i32)** %112, align 8
  %114 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %115 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %115, i32 0, i32 2
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 %113(%struct.v4l2_ctrl* %114, i32 %119)
  br label %121

121:                                              ; preds = %108, %101, %98, %89
  br label %122

122:                                              ; preds = %10, %121, %72
  ret void
}

declare dso_local i32 @ptr_to_ptr(%struct.v4l2_ctrl*, i32, i32) #1

declare dso_local i32 @is_cur_manual(%struct.TYPE_4__*) #1

declare dso_local i32 @send_event(%struct.v4l2_fh*, %struct.v4l2_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
