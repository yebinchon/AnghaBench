; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 (%struct.vsp1_entity*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_entity_destroy(%struct.vsp1_entity* %0) #0 {
  %2 = alloca %struct.vsp1_entity*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %2, align 8
  %3 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %4 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %9 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.vsp1_entity*)*, i32 (%struct.vsp1_entity*)** %11, align 8
  %13 = icmp ne i32 (%struct.vsp1_entity*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %16 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.vsp1_entity*)*, i32 (%struct.vsp1_entity*)** %18, align 8
  %20 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %21 = call i32 %19(%struct.vsp1_entity* %20)
  br label %22

22:                                               ; preds = %14, %7, %1
  %23 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %24 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %30 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @v4l2_ctrl_handler_free(i64 %32)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %36 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @v4l2_subdev_free_pad_config(i32 %37)
  %39 = load %struct.vsp1_entity*, %struct.vsp1_entity** %2, align 8
  %40 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @media_entity_cleanup(i32* %41)
  ret void
}

declare dso_local i32 @v4l2_ctrl_handler_free(i64) #1

declare dso_local i32 @v4l2_subdev_free_pad_config(i32) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
