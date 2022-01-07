; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_banding_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_banding_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@REG_COM8 = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_DISABLED = common dso_local global i32 0, align 4
@COM8_BFILT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_50HZ = common dso_local global i32 0, align 4
@REG_MBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, i32)* @ov965x_set_banding_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_banding_filter(%struct.ov965x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %11 = load i32, i32* @REG_COM8, align 4
  %12 = call i32 @ov965x_read(%struct.ov965x* %10, i32 %11, i64* %9)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_DISABLED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i64, i64* @COM8_BFILT, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %9, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %9, align 8
  br label %28

24:                                               ; preds = %15
  %25 = load i64, i64* @COM8_BFILT, align 8
  %26 = load i64, i64* %9, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %30 = load i32, i32* @REG_COM8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @ov965x_write(%struct.ov965x* %29, i32 %30, i64 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_DISABLED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %87

38:                                               ; preds = %33
  %39 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %40 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_50HZ, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i64 50, i64* %7, align 8
  br label %56

55:                                               ; preds = %50
  store i64 60, i64* %7, align 8
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %58 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 1000, %62
  %64 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %65 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %63, %68
  %70 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %71 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = udiv i64 %69, %75
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = mul i64 %78, 2
  %80 = udiv i64 %77, %79
  %81 = add i64 %80, 500
  %82 = udiv i64 %81, 1000
  store i64 %82, i64* %6, align 8
  %83 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %84 = load i32, i32* @REG_MBD, align 4
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @ov965x_write(%struct.ov965x* %83, i32 %84, i64 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %56, %47, %37
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i64*) #1

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
