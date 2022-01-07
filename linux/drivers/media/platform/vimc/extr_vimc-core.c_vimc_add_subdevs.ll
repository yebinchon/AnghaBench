; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-core.c_vimc_add_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-core.c_vimc_add_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component_match = type { i32 }
%struct.vimc_device = type { %struct.TYPE_11__**, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.vimc_platform_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"new pdev for %s\0A\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@vimc_comp_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.component_match* (%struct.vimc_device*)* @vimc_add_subdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.component_match* @vimc_add_subdevs(%struct.vimc_device* %0) #0 {
  %2 = alloca %struct.component_match*, align 8
  %3 = alloca %struct.vimc_device*, align 8
  %4 = alloca %struct.component_match*, align 8
  %5 = alloca %struct.vimc_platform_data, align 4
  %6 = alloca i32, align 4
  store %struct.vimc_device* %0, %struct.vimc_device** %3, align 8
  store %struct.component_match* null, %struct.component_match** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %111, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %10 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %114

15:                                               ; preds = %7
  %16 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %17 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %20 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.vimc_platform_data, %struct.vimc_platform_data* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %33 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strscpy(i32 %31, i32 %41, i32 4)
  %43 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %44 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %47 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %57 = call %struct.TYPE_11__* @platform_device_register_data(i32* %45, i32 %55, i32 %56, %struct.vimc_platform_data* %5, i32 4)
  %58 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %59 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 %62
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %63, align 8
  %64 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %65 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %66, i64 %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = call i64 @IS_ERR(%struct.TYPE_11__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %15
  %74 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %75 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %76, i64 %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = call %struct.component_match* @ERR_CAST(%struct.TYPE_11__* %80)
  store %struct.component_match* %81, %struct.component_match** %4, align 8
  br label %82

82:                                               ; preds = %86, %73
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %88 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %89, i64 %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = call i32 @platform_device_unregister(%struct.TYPE_11__* %93)
  br label %82

95:                                               ; preds = %82
  %96 = load %struct.component_match*, %struct.component_match** %4, align 8
  store %struct.component_match* %96, %struct.component_match** %2, align 8
  br label %116

97:                                               ; preds = %15
  %98 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %99 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* @vimc_comp_compare, align 4
  %102 = load %struct.vimc_device*, %struct.vimc_device** %3, align 8
  %103 = getelementptr inbounds %struct.vimc_device, %struct.vimc_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %104, i64 %106
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = call i32 @component_match_add(i32* %100, %struct.component_match** %4, i32 %101, i32* %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %7

114:                                              ; preds = %7
  %115 = load %struct.component_match*, %struct.component_match** %4, align 8
  store %struct.component_match* %115, %struct.component_match** %2, align 8
  br label %116

116:                                              ; preds = %114, %95
  %117 = load %struct.component_match*, %struct.component_match** %2, align 8
  ret %struct.component_match* %117
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @platform_device_register_data(i32*, i32, i32, %struct.vimc_platform_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local %struct.component_match* @ERR_CAST(%struct.TYPE_11__*) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_11__*) #1

declare dso_local i32 @component_match_add(i32*, %struct.component_match**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
