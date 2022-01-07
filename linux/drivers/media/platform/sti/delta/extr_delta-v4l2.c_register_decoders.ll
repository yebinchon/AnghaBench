; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_register_decoders.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_register_decoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.delta_dev = type { i64, i32, %struct.TYPE_3__** }

@delta_decoders = common dso_local global %struct.TYPE_3__** null, align 8
@DELTA_MAX_DECODERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"%s failed to register %s decoder (%d maximum reached)\0A\00", align 1
@DELTA_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s %s decoder registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_dev*)* @register_decoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_decoders(%struct.delta_dev* %0) #0 {
  %2 = alloca %struct.delta_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.delta_dev* %0, %struct.delta_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %55, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @delta_decoders, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_3__** %6)
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %58

9:                                                ; preds = %4
  %10 = load %struct.delta_dev*, %struct.delta_dev** %2, align 8
  %11 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DELTA_MAX_DECODERS, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.delta_dev*, %struct.delta_dev** %2, align 8
  %17 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DELTA_PREFIX, align 4
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @delta_decoders, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @DELTA_MAX_DECODERS, align 8
  %28 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %26, i64 %27)
  br label %58

29:                                               ; preds = %9
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @delta_decoders, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.delta_dev*, %struct.delta_dev** %2, align 8
  %36 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = load %struct.delta_dev*, %struct.delta_dev** %2, align 8
  %39 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 %40
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %42, align 8
  %43 = load %struct.delta_dev*, %struct.delta_dev** %2, align 8
  %44 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DELTA_PREFIX, align 4
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @delta_decoders, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_info(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %53)
  br label %55

55:                                               ; preds = %29
  %56 = load i32, i32* %3, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %4

58:                                               ; preds = %15, %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__**) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
