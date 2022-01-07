; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_get_source_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_get_source_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_entity = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.media_pad = type { %struct.media_entity* }

@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.media_entity* (%struct.media_entity*)* @vimc_get_source_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.media_entity* @vimc_get_source_entity(%struct.media_entity* %0) #0 {
  %2 = alloca %struct.media_entity*, align 8
  %3 = alloca %struct.media_entity*, align 8
  %4 = alloca %struct.media_pad*, align 8
  %5 = alloca i32, align 4
  store %struct.media_entity* %0, %struct.media_entity** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %9 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %6
  %13 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %14 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %42

25:                                               ; preds = %12
  %26 = load %struct.media_entity*, %struct.media_entity** %3, align 8
  %27 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = call %struct.media_pad* @media_entity_remote_pad(%struct.TYPE_2__* %31)
  store %struct.media_pad* %32, %struct.media_pad** %4, align 8
  %33 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %34 = icmp ne %struct.media_pad* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.media_pad*, %struct.media_pad** %4, align 8
  %37 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %36, i32 0, i32 0
  %38 = load %struct.media_entity*, %struct.media_entity** %37, align 8
  br label %40

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi %struct.media_entity* [ %38, %35 ], [ null, %39 ]
  store %struct.media_entity* %41, %struct.media_entity** %2, align 8
  br label %46

42:                                               ; preds = %24
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %6

45:                                               ; preds = %6
  store %struct.media_entity* null, %struct.media_entity** %2, align 8
  br label %46

46:                                               ; preds = %45, %40
  %47 = load %struct.media_entity*, %struct.media_entity** %2, align 8
  ret %struct.media_entity* %47
}

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
