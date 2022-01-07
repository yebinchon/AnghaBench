; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_propagate_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_propagate_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vsp1_dl_body = type { i32 }

@VSP1_ENTITY_BRU = common dso_local global i64 0, align 8
@VSP1_ENTITY_BRS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_pipeline_propagate_alpha(%struct.vsp1_pipeline* %0, %struct.vsp1_dl_body* %1, i32 %2) #0 {
  %4 = alloca %struct.vsp1_pipeline*, align 8
  %5 = alloca %struct.vsp1_dl_body*, align 8
  %6 = alloca i32, align 4
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %4, align 8
  store %struct.vsp1_dl_body* %1, %struct.vsp1_dl_body** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %8 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %36

12:                                               ; preds = %3
  %13 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %14 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VSP1_ENTITY_BRU, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %12
  %21 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %22 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VSP1_ENTITY_BRS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %12
  store i32 255, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %4, align 8
  %31 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vsp1_uds_set_alpha(i32 %32, %struct.vsp1_dl_body* %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %11
  ret void
}

declare dso_local i32 @vsp1_uds_set_alpha(i32, %struct.vsp1_dl_body*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
