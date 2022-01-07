; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_3a_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_3a_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.v4l2_ctrl = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@V4L2_LOCK_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_LOCK_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_LOCK_FOCUS = common dso_local global i32 0, align 4
@COMM_AE_CON = common dso_local global i32 0, align 4
@COMM_AE_STOP = common dso_local global i32 0, align 4
@COMM_AE_START = common dso_local global i32 0, align 4
@COMM_AWB_CON = common dso_local global i32 0, align 4
@COMM_AWB_STOP = common dso_local global i32 0, align 4
@COMM_AWB_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, %struct.v4l2_ctrl*)* @s5c73m3_3a_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_3a_lock(%struct.s5c73m3* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V4L2_LOCK_WHITE_BALANCE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_LOCK_EXPOSURE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V4L2_LOCK_FOCUS, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %27, %31
  %33 = load i32, i32* @V4L2_LOCK_EXPOSURE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %2
  %37 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %38 = load i32, i32* @COMM_AE_CON, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @COMM_AE_STOP, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @COMM_AE_START, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %37, i32 %38, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %111

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %56, %60
  %62 = load i32, i32* @V4L2_LOCK_WHITE_BALANCE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %53
  %66 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %67 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %65
  %74 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %75 = load i32, i32* @COMM_AWB_CON, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @COMM_AWB_STOP, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @COMM_AWB_START, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %74, i32 %75, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %111

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %65, %53
  %91 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %93, %97
  %99 = load i32, i32* @V4L2_LOCK_FOCUS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %90
  %103 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @s5c73m3_af_run(%struct.s5c73m3* %103, i32 %107)
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %102, %90
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %87, %50
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @s5c73m3_af_run(%struct.s5c73m3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
