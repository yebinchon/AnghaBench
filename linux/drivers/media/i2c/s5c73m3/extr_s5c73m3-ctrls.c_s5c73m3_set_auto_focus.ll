; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_set_auto_focus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_set_auto_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.s5c73m3_ctrls }
%struct.s5c73m3_ctrls = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }

@V4L2_AUTO_FOCUS_RANGE_MACRO = common dso_local global i64 0, align 8
@COMM_AF_MODE_MACRO = common dso_local global i32 0, align 4
@COMM_AF_MODE_NORMAL = common dso_local global i32 0, align 4
@COMM_AF_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, i32)* @s5c73m3_set_auto_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_set_auto_focus(%struct.s5c73m3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5c73m3_ctrls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %10 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %9, i32 0, i32 0
  store %struct.s5c73m3_ctrls* %10, %struct.s5c73m3_ctrls** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %12 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %19 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @V4L2_AUTO_FOCUS_RANGE_MACRO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @COMM_AF_MODE_MACRO, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @COMM_AF_MODE_NORMAL, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %8, align 4
  %31 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %32 = load i32, i32* @COMM_AF_MODE, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %95

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %45 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %52 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %59 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57, %50, %40
  %65 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %66 = call i32 @s5c73m3_af_run(%struct.s5c73m3* %65, i32 1)
  store i32 %66, i32* %7, align 4
  br label %93

67:                                               ; preds = %57
  %68 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %69 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %76 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74, %67
  %82 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %83 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81, %74
  %89 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %90 = call i32 @s5c73m3_af_run(%struct.s5c73m3* %89, i32 0)
  store i32 %90, i32* %7, align 4
  br label %92

91:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %64
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %37
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @s5c73m3_af_run(%struct.s5c73m3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
