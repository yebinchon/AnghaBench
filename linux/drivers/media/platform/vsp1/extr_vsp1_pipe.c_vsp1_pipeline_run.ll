; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.vsp1_device* }
%struct.vsp1_device = type { i32 }

@VSP1_PIPELINE_STOPPED = common dso_local global i64 0, align 8
@VI6_CMD_STRCMD = common dso_local global i32 0, align 4
@VSP1_PIPELINE_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_pipeline_run(%struct.vsp1_pipeline* %0) #0 {
  %2 = alloca %struct.vsp1_pipeline*, align 8
  %3 = alloca %struct.vsp1_device*, align 8
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %2, align 8
  %4 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %5 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.vsp1_device*, %struct.vsp1_device** %8, align 8
  store %struct.vsp1_device* %9, %struct.vsp1_device** %3, align 8
  %10 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %11 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VSP1_PIPELINE_STOPPED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %17 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %18 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @VI6_CMD(i32 %22)
  %24 = load i32, i32* @VI6_CMD_STRCMD, align 4
  %25 = call i32 @vsp1_write(%struct.vsp1_device* %16, i32 %23, i32 %24)
  %26 = load i64, i64* @VSP1_PIPELINE_RUNNING, align 8
  %27 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %28 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %15, %1
  %30 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %31 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local i32 @vsp1_write(%struct.vsp1_device*, i32, i32) #1

declare dso_local i32 @VI6_CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
