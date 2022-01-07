; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_restore_blc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_restore_blc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9p031 = type { %struct.TYPE_6__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.i2c_client = type { i32 }

@MT9P031_READ_MODE_2_ROW_BLC = common dso_local global i32 0, align 4
@MT9P031_ROW_BLACK_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9p031*)* @mt9p031_restore_blc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9p031_restore_blc(%struct.mt9p031* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9p031*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.mt9p031* %0, %struct.mt9p031** %3, align 8
  %6 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %7 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %6, i32 0, i32 2
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %10 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %18 = load i32, i32* @MT9P031_READ_MODE_2_ROW_BLC, align 4
  %19 = call i32 @mt9p031_set_mode2(%struct.mt9p031* %17, i32 0, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %27 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @MT9P031_ROW_BLACK_TARGET, align 4
  %36 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %37 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @mt9p031_write(%struct.i2c_client* %34, i32 %35, i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %25
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %45, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9p031_set_mode2(%struct.mt9p031*, i32, i32) #1

declare dso_local i32 @mt9p031_write(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
