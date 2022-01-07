; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-main.c_cobalt_alsa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-main.c_cobalt_alsa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_stream = type { %struct.snd_cobalt_card*, %struct.cobalt* }
%struct.snd_cobalt_card = type { i32 }
%struct.cobalt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_card = type { i32 }

@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"snd_card_new() failed with err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"snd_cobalt_card_create() failed with err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"snd_cobalt_pcm_create() failed with err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"snd_card_register() failed with err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cobalt_alsa_init(%struct.cobalt_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cobalt_stream*, align 8
  %4 = alloca %struct.cobalt*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_cobalt_card*, align 8
  %7 = alloca i32, align 4
  store %struct.cobalt_stream* %0, %struct.cobalt_stream** %3, align 8
  %8 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %9 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %8, i32 0, i32 1
  %10 = load %struct.cobalt*, %struct.cobalt** %9, align 8
  store %struct.cobalt* %10, %struct.cobalt** %4, align 8
  store %struct.snd_card* null, %struct.snd_card** %5, align 8
  %11 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %12 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %16 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = call i32 @snd_card_new(i32* %14, i32 %15, i32 %16, i32 %17, i32 0, %struct.snd_card** %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cobalt_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %66

24:                                               ; preds = %1
  %25 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %26 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %27 = call i32 @snd_cobalt_card_create(%struct.cobalt_stream* %25, %struct.snd_card* %26, %struct.snd_cobalt_card** %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cobalt_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %57

33:                                               ; preds = %24
  %34 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %6, align 8
  %35 = call i32 @snd_cobalt_card_set_names(%struct.snd_cobalt_card* %34)
  %36 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %6, align 8
  %37 = call i32 @snd_cobalt_pcm_create(%struct.snd_cobalt_card* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @cobalt_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %57

43:                                               ; preds = %33
  %44 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %6, align 8
  %45 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %46 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %45, i32 0, i32 0
  store %struct.snd_cobalt_card* %44, %struct.snd_cobalt_card** %46, align 8
  %47 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %48 = call i32 @snd_card_register(%struct.snd_card* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %53 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %52, i32 0, i32 0
  store %struct.snd_cobalt_card* null, %struct.snd_cobalt_card** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @cobalt_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %57

56:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %68

57:                                               ; preds = %51, %40, %30
  %58 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %59 = icmp ne %struct.snd_card* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %62 = call i32 @snd_card_free(%struct.snd_card* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %6, align 8
  %65 = call i32 @kfree(%struct.snd_cobalt_card* %64)
  br label %66

66:                                               ; preds = %63, %21
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %56
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @snd_card_new(i32*, i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @cobalt_err(i8*, i32) #1

declare dso_local i32 @snd_cobalt_card_create(%struct.cobalt_stream*, %struct.snd_card*, %struct.snd_cobalt_card**) #1

declare dso_local i32 @snd_cobalt_card_set_names(%struct.snd_cobalt_card*) #1

declare dso_local i32 @snd_cobalt_pcm_create(%struct.snd_cobalt_card*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

declare dso_local i32 @kfree(%struct.snd_cobalt_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
