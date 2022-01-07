; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_unregister_entities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_unregister_entities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.fimc_lite**, %struct.fimc_dev** }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.fimc_lite = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.fimc_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }

@FIMC_MAX_DEVS = common dso_local global i32 0, align 4
@FIMC_LITE_MAX_DEVS = common dso_local global i32 0, align 4
@CSIS_MAX_ENTITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unregistered all entities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_md*)* @fimc_md_unregister_entities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_md_unregister_entities(%struct.fimc_md* %0) #0 {
  %2 = alloca %struct.fimc_md*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca %struct.fimc_lite*, align 8
  store %struct.fimc_md* %0, %struct.fimc_md** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @FIMC_MAX_DEVS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %12 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %11, i32 0, i32 4
  %13 = load %struct.fimc_dev**, %struct.fimc_dev*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.fimc_dev*, %struct.fimc_dev** %13, i64 %15
  %17 = load %struct.fimc_dev*, %struct.fimc_dev** %16, align 8
  store %struct.fimc_dev* %17, %struct.fimc_dev** %4, align 8
  %18 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %19 = icmp eq %struct.fimc_dev* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %36

21:                                               ; preds = %10
  %22 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %23 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = call i32 @v4l2_device_unregister_subdev(i32* %24)
  %26 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %31 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %30, i32 0, i32 4
  %32 = load %struct.fimc_dev**, %struct.fimc_dev*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.fimc_dev*, %struct.fimc_dev** %32, i64 %34
  store %struct.fimc_dev* null, %struct.fimc_dev** %35, align 8
  br label %36

36:                                               ; preds = %21, %20
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %6

39:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %68, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @FIMC_LITE_MAX_DEVS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %46 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %45, i32 0, i32 3
  %47 = load %struct.fimc_lite**, %struct.fimc_lite*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fimc_lite*, %struct.fimc_lite** %47, i64 %49
  %51 = load %struct.fimc_lite*, %struct.fimc_lite** %50, align 8
  store %struct.fimc_lite* %51, %struct.fimc_lite** %5, align 8
  %52 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %53 = icmp eq %struct.fimc_lite* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %68

55:                                               ; preds = %44
  %56 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %57 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %56, i32 0, i32 1
  %58 = call i32 @v4l2_device_unregister_subdev(i32* %57)
  %59 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %60 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %63 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %62, i32 0, i32 3
  %64 = load %struct.fimc_lite**, %struct.fimc_lite*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.fimc_lite*, %struct.fimc_lite** %64, i64 %66
  store %struct.fimc_lite* null, %struct.fimc_lite** %67, align 8
  br label %68

68:                                               ; preds = %55, %54
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %40

71:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %104, %71
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @CSIS_MAX_ENTITIES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  %77 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %78 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %104

87:                                               ; preds = %76
  %88 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %89 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @v4l2_device_unregister_subdev(i32* %95)
  %97 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %98 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %87, %86
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %72

107:                                              ; preds = %72
  %108 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %109 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %114 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %113, i32 0, i32 1
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = call i32 @v4l2_device_unregister_subdev(i32* %117)
  br label %119

119:                                              ; preds = %112, %107
  %120 = load %struct.fimc_md*, %struct.fimc_md** %2, align 8
  %121 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %120, i32 0, i32 0
  %122 = call i32 @v4l2_info(i32* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @v4l2_device_unregister_subdev(i32*) #1

declare dso_local i32 @v4l2_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
