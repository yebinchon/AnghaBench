; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { %struct.ov965x_ctrls }
%struct.ov965x_ctrls = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@REG_COM8 = common dso_local global i32 0, align 4
@COM8_AGC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_GAIN = common dso_local global i32 0, align 4
@REG_VREF = common dso_local global i32 0, align 4
@VREF_GAIN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, i32)* @ov965x_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_gain(%struct.ov965x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov965x_ctrls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %13 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %12, i32 0, i32 0
  store %struct.ov965x_ctrls* %13, %struct.ov965x_ctrls** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %15 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %2
  %21 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %22 = load i32, i32* @REG_COM8, align 4
  %23 = call i32 @ov965x_read(%struct.ov965x* %21, i32 %22, i32* %8)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %154

28:                                               ; preds = %20
  %29 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %30 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @COM8_AGC, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load i32, i32* @COM8_AGC, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %46 = load i32, i32* @REG_COM8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ov965x_write(%struct.ov965x* %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %154

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %56 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %152

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %152, label %64

64:                                               ; preds = %61
  %65 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %66 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  store i32 6, i32* %11, align 4
  br label %70

70:                                               ; preds = %81, %64
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = shl i32 1, %75
  %77 = mul nsw i32 %76, 16
  %78 = icmp uge i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %84

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %11, align 4
  br label %70

84:                                               ; preds = %79, %70
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %154

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %11, align 4
  %93 = shl i32 1, %92
  %94 = mul nsw i32 %93, 16
  %95 = sub i32 %91, %94
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 1, %96
  %98 = udiv i32 %95, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = shl i32 1, %99
  %101 = sub nsw i32 %100, 1
  %102 = shl i32 %101, 4
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %106 = load i32, i32* @REG_GAIN, align 4
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, 255
  %109 = call i32 @ov965x_write(%struct.ov965x* %105, i32 %106, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %90
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %154

114:                                              ; preds = %90
  %115 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %116 = load i32, i32* @REG_VREF, align 4
  %117 = call i32 @ov965x_read(%struct.ov965x* %115, i32 %116, i32* %8)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %154

122:                                              ; preds = %114
  %123 = load i32, i32* @VREF_GAIN_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %10, align 4
  %128 = lshr i32 %127, 8
  %129 = and i32 %128, 3
  %130 = shl i32 %129, 6
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %134 = load i32, i32* @REG_VREF, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @ov965x_write(%struct.ov965x* %133, i32 %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %154

141:                                              ; preds = %122
  %142 = load i32, i32* %11, align 4
  %143 = shl i32 1, %142
  %144 = load i32, i32* %10, align 4
  %145 = and i32 %144, 15
  %146 = add i32 16, %145
  %147 = mul i32 %143, %146
  %148 = load %struct.ov965x_ctrls*, %struct.ov965x_ctrls** %6, align 8
  %149 = getelementptr inbounds %struct.ov965x_ctrls, %struct.ov965x_ctrls* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 8
  br label %152

152:                                              ; preds = %141, %61, %54
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %139, %120, %112, %87, %51, %26
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i32*) #1

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
