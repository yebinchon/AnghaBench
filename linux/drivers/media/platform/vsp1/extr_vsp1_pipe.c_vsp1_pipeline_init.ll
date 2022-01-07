; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_pipeline_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32, i32, i32, i32, i32, i32 }

@VSP1_PIPELINE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_pipeline_init(%struct.vsp1_pipeline* %0) #0 {
  %2 = alloca %struct.vsp1_pipeline*, align 8
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %2, align 8
  %3 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %4 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %3, i32 0, i32 5
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %7 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %6, i32 0, i32 4
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %10 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %9, i32 0, i32 3
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %13 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %12, i32 0, i32 2
  %14 = call i32 @kref_init(i32* %13)
  %15 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %16 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load i32, i32* @VSP1_PIPELINE_STOPPED, align 4
  %19 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %2, align 8
  %20 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
