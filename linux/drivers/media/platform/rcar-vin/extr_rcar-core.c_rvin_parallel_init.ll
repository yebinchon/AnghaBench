; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_parallel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_parallel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_13__, i32, %struct.TYPE_12__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@rvin_parallel_parse_v4l2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Found parallel subdevice %pOF\0A\00", align 1
@rvin_parallel_notify_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Notifier registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*)* @rvin_parallel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_parallel_init(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  %5 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %6 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %5, i32 0, i32 0
  %7 = call i32 @v4l2_async_notifier_init(%struct.TYPE_13__* %6)
  %8 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %11, i32 0, i32 0
  %13 = load i32, i32* @rvin_parallel_parse_v4l2, align 4
  %14 = call i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(i32 %10, %struct.TYPE_13__* %12, i32 4, i32 0, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %66

19:                                               ; preds = %1
  %20 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %19
  %38 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %39 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %40 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @to_of_node(i32 %45)
  %47 = call i32 @vin_dbg(%struct.rvin_dev* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %49 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i32* @rvin_parallel_notify_ops, i32** %50, align 8
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 1
  %53 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %54 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %53, i32 0, i32 0
  %55 = call i32 @v4l2_async_notifier_register(i32* %52, %struct.TYPE_13__* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %37
  %59 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %60 = call i32 @vin_err(%struct.rvin_dev* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %61, i32 0, i32 0
  %63 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_13__* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %58, %35, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_13__*) #1

declare dso_local i32 @v4l2_async_notifier_parse_fwnode_endpoints_by_port(i32, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32) #1

declare dso_local i32 @to_of_node(i32) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
