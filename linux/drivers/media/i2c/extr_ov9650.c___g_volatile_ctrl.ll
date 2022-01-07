; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_ctrl = type { i32, i32 }

@REG_GAIN = common dso_local global i32 0, align 4
@REG_VREF = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@REG_COM1 = common dso_local global i32 0, align 4
@REG_AECH = common dso_local global i32 0, align 4
@REG_AECHM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, %struct.v4l2_ctrl*)* @__g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__g_volatile_ctrl(%struct.ov965x* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %13 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %14 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

18:                                               ; preds = %2
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %117 [
    i32 129, label %22
    i32 128, label %64
  ]

22:                                               ; preds = %18
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %118

28:                                               ; preds = %22
  %29 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %30 = load i32, i32* @REG_GAIN, align 4
  %31 = call i32 @ov965x_read(%struct.ov965x* %29, i32 %30, i32* %9)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %3, align 4
  br label %118

36:                                               ; preds = %28
  %37 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %38 = load i32, i32* @REG_VREF, align 4
  %39 = call i32 @ov965x_read(%struct.ov965x* %37, i32 %38, i32* %10)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %118

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 6
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = lshr i32 %50, 4
  %52 = call i32 @fls(i32 %51)
  %53 = shl i32 1, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 15
  %57 = add i32 16, %56
  %58 = mul i32 %54, %57
  %59 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %60 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  br label %117

64:                                               ; preds = %18
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %118

71:                                               ; preds = %64
  %72 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %73 = load i32, i32* @REG_COM1, align 4
  %74 = call i32 @ov965x_read(%struct.ov965x* %72, i32 %73, i32* %9)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %3, align 4
  br label %118

79:                                               ; preds = %71
  %80 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %81 = load i32, i32* @REG_AECH, align 4
  %82 = call i32 @ov965x_read(%struct.ov965x* %80, i32 %81, i32* %10)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %3, align 4
  br label %118

87:                                               ; preds = %79
  %88 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %89 = load i32, i32* @REG_AECHM, align 4
  %90 = call i32 @ov965x_read(%struct.ov965x* %88, i32 %89, i32* %11)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %3, align 4
  br label %118

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 63
  %98 = shl i32 %97, 10
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 %99, 2
  %101 = or i32 %98, %100
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 3
  %104 = or i32 %101, %103
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %107 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul i32 %105, %108
  %110 = add i32 %109, 50
  %111 = udiv i32 %110, 100
  %112 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %113 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 4
  br label %117

117:                                              ; preds = %18, %95, %44
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %93, %85, %77, %70, %42, %34, %27, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i32*) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
