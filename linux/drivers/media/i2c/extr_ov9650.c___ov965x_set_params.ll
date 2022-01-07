; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c___ov965x_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i64, %struct.TYPE_3__*, i64, %struct.ov965x_ctrls }
%struct.TYPE_3__ = type { i64 }
%struct.ov965x_ctrls = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DEF_CLKRC = common dso_local global i64 0, align 8
@REG_CLKRC = common dso_local global i32 0, align 4
@REG_TSLB = common dso_local global i32 0, align 4
@TSLB_YUYV_MASK = common dso_local global i64 0, align 8
@REG_COM11 = common dso_local global i32 0, align 4
@COM11_BANDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*)* @__ov965x_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ov965x_set_params(%struct.ov965x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov965x*, align 8
  %4 = alloca %struct.ov965x_ctrls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ov965x* %0, %struct.ov965x** %3, align 8
  %7 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %8 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %7, i32 0, i32 3
  store %struct.ov965x_ctrls* %8, %struct.ov965x_ctrls** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %10 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %1
  %14 = load i64, i64* @DEF_CLKRC, align 8
  %15 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %16 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %14, %19
  store i64 %20, i64* %6, align 8
  %21 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %22 = load i32, i32* @REG_CLKRC, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @ov965x_write(%struct.ov965x* %21, i32 %22, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %104

29:                                               ; preds = %13
  %30 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %31 = call i32 @ov965x_set_frame_size(%struct.ov965x* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %104

36:                                               ; preds = %29
  %37 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %38 = load i32, i32* @REG_TSLB, align 4
  %39 = call i32 @ov965x_read(%struct.ov965x* %37, i32 %38, i64* %6)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %104

44:                                               ; preds = %36
  %45 = load i64, i64* @TSLB_YUYV_MASK, align 8
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %50 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %55 = load i32, i32* @REG_TSLB, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @ov965x_write(%struct.ov965x* %54, i32 %55, i64 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %104

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %65 = call i32 @ov965x_set_default_gamma_curve(%struct.ov965x* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %104

70:                                               ; preds = %63
  %71 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %72 = call i32 @ov965x_set_color_matrix(%struct.ov965x* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %104

77:                                               ; preds = %70
  %78 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %79 = load i32, i32* @REG_COM11, align 4
  %80 = call i32 @ov965x_read(%struct.ov965x* %78, i32 %79, i64* %6)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load i64, i64* @COM11_BANDING, align 8
  %85 = load i64, i64* %6, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %89 = load i32, i32* @REG_COM11, align 4
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @ov965x_write(%struct.ov965x* %88, i32 %89, i64 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %104

96:                                               ; preds = %87
  %97 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %98 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %4, align 8
  %99 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ov965x_set_banding_filter(%struct.ov965x* %97, i32 %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %96, %94, %75, %68, %60, %42, %34, %27
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i64) #1

declare dso_local i32 @ov965x_set_frame_size(%struct.ov965x*) #1

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i64*) #1

declare dso_local i32 @ov965x_set_default_gamma_curve(%struct.ov965x*) #1

declare dso_local i32 @ov965x_set_color_matrix(%struct.ov965x*) #1

declare dso_local i32 @ov965x_set_banding_filter(%struct.ov965x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
