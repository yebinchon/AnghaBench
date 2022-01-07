; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_entity_pads_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-entity.c_media_entity_pads_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32, %struct.media_pad*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.media_device* }
%struct.media_device = type { i32 }
%struct.media_pad = type { i32, i32, %struct.media_entity* }

@MEDIA_ENTITY_MAX_PADS = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@MEDIA_GRAPH_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @media_entity_pads_init(%struct.media_entity* %0, i32 %1, %struct.media_pad* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.media_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.media_pad*, align 8
  %8 = alloca %struct.media_device*, align 8
  %9 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.media_pad* %2, %struct.media_pad** %7, align 8
  %10 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %11 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.media_device*, %struct.media_device** %12, align 8
  store %struct.media_device* %13, %struct.media_device** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MEDIA_ENTITY_MAX_PADS, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @E2BIG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %23 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %25 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %26 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %25, i32 0, i32 1
  store %struct.media_pad* %24, %struct.media_pad** %26, align 8
  %27 = load %struct.media_device*, %struct.media_device** %8, align 8
  %28 = icmp ne %struct.media_device* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.media_device*, %struct.media_device** %8, align 8
  %31 = getelementptr inbounds %struct.media_device, %struct.media_device* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  br label %33

33:                                               ; preds = %29, %20
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %40 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %40, i64 %42
  %44 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %43, i32 0, i32 2
  store %struct.media_entity* %39, %struct.media_entity** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.media_pad*, %struct.media_pad** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %46, i64 %48
  %50 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 8
  %51 = load %struct.media_device*, %struct.media_device** %8, align 8
  %52 = icmp ne %struct.media_device* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %38
  %54 = load %struct.media_device*, %struct.media_device** %8, align 8
  %55 = load i32, i32* @MEDIA_GRAPH_PAD, align 4
  %56 = load %struct.media_entity*, %struct.media_entity** %5, align 8
  %57 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %56, i32 0, i32 1
  %58 = load %struct.media_pad*, %struct.media_pad** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %58, i64 %60
  %62 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %61, i32 0, i32 1
  %63 = call i32 @media_gobj_create(%struct.media_device* %54, i32 %55, i32* %62)
  br label %64

64:                                               ; preds = %53, %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %34

68:                                               ; preds = %34
  %69 = load %struct.media_device*, %struct.media_device** %8, align 8
  %70 = icmp ne %struct.media_device* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.media_device*, %struct.media_device** %8, align 8
  %73 = getelementptr inbounds %struct.media_device, %struct.media_device* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %68
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @media_gobj_create(%struct.media_device*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
