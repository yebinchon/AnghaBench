; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l2_pipeline_link_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mc.c_v4l2_pipeline_link_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_link = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.media_entity* }
%struct.media_entity = type { i32 }
%struct.TYPE_7__ = type { %struct.media_entity* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.media_graph }
%struct.media_graph = type { i32 }

@MEDIA_DEV_NOTIFY_POST_LINK_CH = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@MEDIA_DEV_NOTIFY_PRE_LINK_CH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_pipeline_link_notify(%struct.media_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.media_graph*, align 8
  %9 = alloca %struct.media_entity*, align 8
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.media_link* %0, %struct.media_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.media_link*, %struct.media_link** %5, align 8
  %15 = getelementptr inbounds %struct.media_link, %struct.media_link* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.media_graph* %18, %struct.media_graph** %8, align 8
  %19 = load %struct.media_link*, %struct.media_link** %5, align 8
  %20 = getelementptr inbounds %struct.media_link, %struct.media_link* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.media_entity*, %struct.media_entity** %22, align 8
  store %struct.media_entity* %23, %struct.media_entity** %9, align 8
  %24 = load %struct.media_link*, %struct.media_link** %5, align 8
  %25 = getelementptr inbounds %struct.media_link, %struct.media_link* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.media_entity*, %struct.media_entity** %27, align 8
  store %struct.media_entity* %28, %struct.media_entity** %10, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %30 = load %struct.media_graph*, %struct.media_graph** %8, align 8
  %31 = call i32 @pipeline_pm_use_count(%struct.media_entity* %29, %struct.media_graph* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %33 = load %struct.media_graph*, %struct.media_graph** %8, align 8
  %34 = call i32 @pipeline_pm_use_count(%struct.media_entity* %32, %struct.media_graph* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MEDIA_DEV_NOTIFY_POST_LINK_CH, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %38
  %44 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.media_graph*, %struct.media_graph** %8, align 8
  %48 = call i32 @pipeline_pm_power(%struct.media_entity* %44, i32 %46, %struct.media_graph* %47)
  %49 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 0, %50
  %52 = load %struct.media_graph*, %struct.media_graph** %8, align 8
  %53 = call i32 @pipeline_pm_power(%struct.media_entity* %49, i32 %51, %struct.media_graph* %52)
  store i32 0, i32* %4, align 4
  br label %88

54:                                               ; preds = %38, %3
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MEDIA_DEV_NOTIFY_PRE_LINK_CH, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.media_graph*, %struct.media_graph** %8, align 8
  %67 = call i32 @pipeline_pm_power(%struct.media_entity* %64, i32 %65, %struct.media_graph* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %88

72:                                               ; preds = %63
  %73 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.media_graph*, %struct.media_graph** %8, align 8
  %76 = call i32 @pipeline_pm_power(%struct.media_entity* %73, i32 %74, %struct.media_graph* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.media_entity*, %struct.media_entity** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 0, %81
  %83 = load %struct.media_graph*, %struct.media_graph** %8, align 8
  %84 = call i32 @pipeline_pm_power(%struct.media_entity* %80, i32 %82, %struct.media_graph* %83)
  br label %85

85:                                               ; preds = %79, %72
  br label %86

86:                                               ; preds = %85, %58, %54
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %70, %43
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @pipeline_pm_use_count(%struct.media_entity*, %struct.media_graph*) #1

declare dso_local i32 @pipeline_pm_power(%struct.media_entity*, i32, %struct.media_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
