; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sysfs.c_ixgbe_add_hwmon_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sysfs.c_ixgbe_add_hwmon_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__**, %struct.hwmon_attr* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.hwmon_attr = type { %struct.TYPE_10__, i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ixgbe_hwmon_show_location = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"temp%u_label\00", align 1
@ixgbe_hwmon_show_temp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"temp%u_input\00", align 1
@ixgbe_hwmon_show_cautionthresh = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"temp%u_max\00", align 1
@ixgbe_hwmon_show_maxopthresh = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"temp%u_crit\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32, i32)* @ixgbe_add_hwmon_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_add_hwmon_attr(%struct.ixgbe_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwmon_attr*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.hwmon_attr*, %struct.hwmon_attr** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %20, i64 %22
  store %struct.hwmon_attr* %23, %struct.hwmon_attr** %10, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %69 [
    i32 130, label %25
    i32 128, label %36
    i32 131, label %47
    i32 129, label %58
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @ixgbe_hwmon_show_location, align 4
  %27 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %28 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %31 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  %35 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %73

36:                                               ; preds = %3
  %37 = load i32, i32* @ixgbe_hwmon_show_temp, align 4
  %38 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %39 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %42 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  %46 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %73

47:                                               ; preds = %3
  %48 = load i32, i32* @ixgbe_hwmon_show_cautionthresh, align 4
  %49 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %50 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %53 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  %57 = call i32 @snprintf(i32 %54, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %73

58:                                               ; preds = %3
  %59 = load i32, i32* @ixgbe_hwmon_show_maxopthresh, align 4
  %60 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %61 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %64 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  %68 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %73

69:                                               ; preds = %3
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %124

73:                                               ; preds = %58, %47, %36, %25
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %84 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 1
  %87 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %88 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %87, i32 0, i32 2
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %88, align 8
  %89 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %90 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  %92 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %93 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 292, i32* %95, align 8
  %96 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %97 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %100 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %104 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = call i32 @sysfs_attr_init(%struct.TYPE_12__* %105)
  %107 = load %struct.hwmon_attr*, %struct.hwmon_attr** %10, align 8
  %108 = getelementptr inbounds %struct.hwmon_attr, %struct.hwmon_attr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %111 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %114, i64 %116
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %117, align 8
  %118 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %119 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add i32 %122, 1
  store i32 %123, i32* %121, align 8
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %73, %69
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
