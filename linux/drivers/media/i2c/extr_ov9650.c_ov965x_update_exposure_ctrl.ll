; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_update_exposure_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_update_exposure_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32 }

@DEF_CLKRC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"clkrc: %#x, fi: %lu, tr: %lu, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Exposure ctrl range update failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov965x*)* @ov965x_update_exposure_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov965x_update_exposure_ctrl(%struct.ov965x* %0) #0 {
  %2 = alloca %struct.ov965x*, align 8
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %2, align 8
  %10 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %11 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  store %struct.v4l2_ctrl* %13, %struct.v4l2_ctrl** %3, align 8
  %14 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %15 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = icmp ne %struct.v4l2_ctrl* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %21 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %1
  %26 = phi i1 [ true, %1 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %32 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %31, i32 0, i32 3
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %102

34:                                               ; preds = %25
  %35 = load i32, i32* @DEF_CLKRC, align 4
  %36 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %37 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %36, i32 0, i32 5
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %35, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %43 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 7
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %44, %47
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 63
  %51 = add nsw i32 %50, 1
  %52 = mul nsw i32 2, %51
  %53 = sdiv i32 %48, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = udiv i64 3040000000, %55
  store i64 %56, i64* %5, align 8
  %57 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %58 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = mul i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %67 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %69 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %68, i32 0, i32 3
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* @debug, align 4
  %72 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %73 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %72, i32 0, i32 2
  %74 = load i32, i32* %9, align 4
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @v4l2_dbg(i32 1, i32 %71, i32* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %74, i64 %75, i64 %76, i32 %77)
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 100
  %81 = udiv i64 %80, 100
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 100
  %85 = sdiv i32 %84, 100
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sdiv i32 %89, 2
  %91 = add nsw i32 %86, %90
  store i32 %91, i32* %8, align 4
  %92 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @v4l2_ctrl_modify_range(%struct.v4l2_ctrl* %92, i32 %93, i32 %94, i32 1, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %34
  %99 = load %struct.ov965x*, %struct.ov965x** %2, align 8
  %100 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %99, i32 0, i32 2
  %101 = call i32 @v4l2_err(i32* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %30, %98, %34
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i64, i64, i32) #1

declare dso_local i64 @v4l2_ctrl_modify_range(%struct.v4l2_ctrl*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
