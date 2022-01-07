; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_try_or_set_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_try_or_set_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_ctrl = type { i32, i32, i32, %struct.v4l2_ctrl**, i64, i32 }

@V4L2_CTRL_FLAG_GRABBED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@try_ctrl = common dso_local global i32 0, align 4
@s_ctrl = common dso_local global i32 0, align 4
@V4L2_EVENT_CTRL_CH_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fh*, %struct.v4l2_ctrl*, i32, i32)* @try_or_set_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_or_set_cluster(%struct.v4l2_fh* %0, %struct.v4l2_ctrl* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_fh*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %6, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %53, %4
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 3
  %23 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %23, i64 %25
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  store %struct.v4l2_ctrl* %27, %struct.v4l2_ctrl** %13, align 8
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  %29 = icmp eq %struct.v4l2_ctrl* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %53

31:                                               ; preds = %20
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  %38 = call i32 @cur_to_new(%struct.v4l2_ctrl* %37)
  br label %53

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %151

52:                                               ; preds = %42, %39
  br label %53

53:                                               ; preds = %52, %36, %30
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %58 = load i32, i32* @try_ctrl, align 4
  %59 = call i32 @call_op(%struct.v4l2_ctrl* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %67 = call i32 @cluster_changed(%struct.v4l2_ctrl* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65, %62, %56
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %151

71:                                               ; preds = %65
  %72 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %73 = load i32, i32* @s_ctrl, align 4
  %74 = call i32 @call_op(%struct.v4l2_ctrl* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %151

79:                                               ; preds = %71
  %80 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %81 = call i64 @is_cur_manual(%struct.v4l2_ctrl* %80)
  %82 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %83 = call i64 @is_new_manual(%struct.v4l2_ctrl* %82)
  %84 = icmp ne i64 %81, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %147, %79
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %150

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %95
  %99 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %100 = call i64 @is_new_manual(%struct.v4l2_ctrl* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %108, i32 0, i32 3
  %110 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %110, i64 %112
  %114 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %113, align 8
  %115 = icmp ne %struct.v4l2_ctrl* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %117, i32 0, i32 3
  %119 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %119, i64 %121
  %123 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %122, align 8
  %124 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %116, %107, %102, %98, %95, %92
  %126 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %127 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %128 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %127, i32 0, i32 3
  %129 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %129, i64 %131
  %133 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %125
  %138 = load i32, i32* %12, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* @V4L2_EVENT_CTRL_CH_FLAGS, align 4
  br label %143

142:                                              ; preds = %137, %125
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = or i32 %134, %144
  %146 = call i32 @new_to_cur(%struct.v4l2_fh* %126, %struct.v4l2_ctrl* %133, i32 %145)
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %86

150:                                              ; preds = %86
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %77, %69, %49
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @cur_to_new(%struct.v4l2_ctrl*) #1

declare dso_local i32 @call_op(%struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @cluster_changed(%struct.v4l2_ctrl*) #1

declare dso_local i64 @is_cur_manual(%struct.v4l2_ctrl*) #1

declare dso_local i64 @is_new_manual(%struct.v4l2_ctrl*) #1

declare dso_local i32 @new_to_cur(%struct.v4l2_fh*, %struct.v4l2_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
