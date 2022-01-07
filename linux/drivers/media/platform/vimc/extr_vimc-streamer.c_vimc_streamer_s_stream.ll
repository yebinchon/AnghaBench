; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_streamer_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-streamer.c_vimc_streamer_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_stream = type { i32* }
%struct.vimc_ent_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@vimc_streamer_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vimc-streamer thread\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vimc_streamer_s_stream(%struct.vimc_stream* %0, %struct.vimc_ent_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vimc_stream*, align 8
  %6 = alloca %struct.vimc_ent_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vimc_stream* %0, %struct.vimc_stream** %5, align 8
  store %struct.vimc_ent_device* %1, %struct.vimc_ent_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %10 = icmp ne %struct.vimc_stream* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %6, align 8
  %13 = icmp ne %struct.vimc_ent_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %72

17:                                               ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %22 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %72

26:                                               ; preds = %20
  %27 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %28 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %6, align 8
  %29 = call i32 @vimc_streamer_pipeline_init(%struct.vimc_stream* %27, %struct.vimc_ent_device* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %26
  %35 = load i32, i32* @vimc_streamer_thread, align 4
  %36 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %37 = call i32* @kthread_run(i32 %35, %struct.vimc_stream* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %39 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %41 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %47 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  store i32 %49, i32* %4, align 4
  br label %72

50:                                               ; preds = %34
  br label %71

51:                                               ; preds = %17
  %52 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %53 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %72

57:                                               ; preds = %51
  %58 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %59 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kthread_stop(i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %72

66:                                               ; preds = %57
  %67 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %68 = getelementptr inbounds %struct.vimc_stream, %struct.vimc_stream* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.vimc_stream*, %struct.vimc_stream** %5, align 8
  %70 = call i32 @vimc_streamer_pipeline_terminate(%struct.vimc_stream* %69)
  br label %71

71:                                               ; preds = %66, %50
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %64, %56, %45, %32, %25, %14
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @vimc_streamer_pipeline_init(%struct.vimc_stream*, %struct.vimc_ent_device*) #1

declare dso_local i32* @kthread_run(i32, %struct.vimc_stream*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @vimc_streamer_pipeline_terminate(%struct.vimc_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
