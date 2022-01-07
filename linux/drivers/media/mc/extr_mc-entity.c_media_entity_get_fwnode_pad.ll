; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_entity_get_fwnode_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_entity_get_fwnode_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.fwnode_endpoint*)* }
%struct.fwnode_endpoint = type { i32 }
%struct.fwnode_handle = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @media_entity_get_fwnode_pad(%struct.media_entity* %0, %struct.fwnode_handle* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fwnode_endpoint, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %12 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %17 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.fwnode_endpoint*)*, i32 (%struct.fwnode_endpoint*)** %19, align 8
  %21 = icmp ne i32 (%struct.fwnode_endpoint*)* %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %15, %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %26 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %31 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %94

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %94

50:                                               ; preds = %15
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %52 = call i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle* %51, %struct.fwnode_endpoint* %8)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %94

57:                                               ; preds = %50
  %58 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %59 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.fwnode_endpoint*)*, i32 (%struct.fwnode_endpoint*)** %61, align 8
  %63 = call i32 %62(%struct.fwnode_endpoint* %8)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %94

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %71 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp uge i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %94

77:                                               ; preds = %68
  %78 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %79 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %77
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %89, %74, %66, %55, %47, %41
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @fwnode_graph_parse_endpoint(%struct.fwnode_handle*, %struct.fwnode_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
