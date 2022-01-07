; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32, %struct.ov965x_ctrls }
%struct.ov965x_ctrls = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@REG_COM8 = common dso_local global i32 0, align 4
@COM8_AEC = common dso_local global i32 0, align 4
@COM8_AGC = common dso_local global i32 0, align 4
@REG_COM1 = common dso_local global i32 0, align 4
@REG_AECH = common dso_local global i32 0, align 4
@REG_AECHM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, i32)* @ov965x_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_exposure(%struct.ov965x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov965x_ctrls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %12 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %11, i32 0, i32 1
  store %struct.ov965x_ctrls* %12, %struct.ov965x_ctrls** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %18 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %2
  %24 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %25 = load i32, i32* @REG_COM8, align 4
  %26 = call i32 @ov965x_read(%struct.ov965x* %24, i32 %25, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %129

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @COM8_AEC, align 4
  %36 = load i32, i32* @COM8_AGC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %47

40:                                               ; preds = %31
  %41 = load i32, i32* @COM8_AEC, align 4
  %42 = load i32, i32* @COM8_AGC, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %49 = load i32, i32* @REG_COM8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ov965x_write(%struct.ov965x* %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %129

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %119, label %60

60:                                               ; preds = %57
  %61 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %62 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %119

67:                                               ; preds = %60
  %68 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %69 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 100
  %74 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %75 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %73, %76
  store i32 %77, i32* %10, align 4
  %78 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %79 = load i32, i32* @REG_COM1, align 4
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 3
  %82 = call i32 @ov965x_write(%struct.ov965x* %78, i32 %79, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %67
  %86 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %87 = load i32, i32* @REG_AECH, align 4
  %88 = load i32, i32* %10, align 4
  %89 = lshr i32 %88, 2
  %90 = and i32 %89, 255
  %91 = call i32 @ov965x_write(%struct.ov965x* %86, i32 %87, i32 %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %85, %67
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %97 = load i32, i32* @REG_AECHM, align 4
  %98 = load i32, i32* %10, align 4
  %99 = lshr i32 %98, 10
  %100 = and i32 %99, 63
  %101 = call i32 @ov965x_write(%struct.ov965x* %96, i32 %97, i32 %100)
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %95, %92
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %105 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul i32 %103, %106
  %108 = add i32 %107, 50
  %109 = udiv i32 %108, 100
  %110 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %111 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %129

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %60, %57
  %120 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %121 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @v4l2_ctrl_activate(i32 %123, i32 %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %119, %116, %54, %29
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i32*) #1

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_activate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
