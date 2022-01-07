; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_3a_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_3a_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.v4l2_ctrl = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@V4L2_LOCK_FOCUS = common dso_local global i32 0, align 4
@V4L2_LOCK_EXPOSURE = common dso_local global i32 0, align 4
@AE_LOCK = common dso_local global i32 0, align 4
@REG_AE_LOCK = common dso_local global i32 0, align 4
@REG_AE_UNLOCK = common dso_local global i32 0, align 4
@V4L2_LOCK_WHITE_BALANCE = common dso_local global i32 0, align 4
@AWB_LOCK = common dso_local global i32 0, align 4
@REG_AWB_LOCK = common dso_local global i32 0, align 4
@REG_AWB_UNLOCK = common dso_local global i32 0, align 4
@AF_EXECUTE = common dso_local global i32 0, align 4
@REG_AF_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m5mols_info*, %struct.v4l2_ctrl*)* @m5mols_3a_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_3a_lock(%struct.m5mols_info* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m5mols_info*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V4L2_LOCK_FOCUS, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %17, %21
  %23 = load i32, i32* @V4L2_LOCK_EXPOSURE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_LOCK_EXPOSURE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %33 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %32, i32 0, i32 0
  %34 = load i32, i32* @AE_LOCK, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @REG_AE_LOCK, align 4
  br label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @REG_AE_UNLOCK, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @m5mols_write(i32* %33, i32 %34, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %122

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %52, %56
  %58 = load i32, i32* @V4L2_LOCK_WHITE_BALANCE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %49
  %62 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %63 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V4L2_LOCK_WHITE_BALANCE, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %75 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %74, i32 0, i32 0
  %76 = load i32, i32* @AWB_LOCK, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @REG_AWB_LOCK, align 4
  br label %83

81:                                               ; preds = %68
  %82 = load i32, i32* @REG_AWB_UNLOCK, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = call i32 @m5mols_write(i32* %75, i32 %76, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %122

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %61, %49
  %92 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %93 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97, %91
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %122

102:                                              ; preds = %97
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %107 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %105, %109
  %111 = load i32, i32* @V4L2_LOCK_FOCUS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %102
  %115 = load %struct.m5mols_info*, %struct.m5mols_info** %4, align 8
  %116 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %115, i32 0, i32 0
  %117 = load i32, i32* @AF_EXECUTE, align 4
  %118 = load i32, i32* @REG_AF_STOP, align 4
  %119 = call i32 @m5mols_write(i32* %116, i32 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %114, %102
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %100, %88, %46
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @m5mols_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
