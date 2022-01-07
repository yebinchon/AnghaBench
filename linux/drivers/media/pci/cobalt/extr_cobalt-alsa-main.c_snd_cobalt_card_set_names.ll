; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-main.c_snd_cobalt_card_set_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-main.c_snd_cobalt_card_set_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cobalt_card = type { %struct.snd_card*, %struct.cobalt_stream* }
%struct.snd_card = type { i32, i32, i32 }
%struct.cobalt_stream = type { i32, %struct.cobalt* }
%struct.cobalt = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"cobalt\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"cobalt-%d-%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Cobalt %d HDMI %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cobalt_card*)* @snd_cobalt_card_set_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cobalt_card_set_names(%struct.snd_cobalt_card* %0) #0 {
  %2 = alloca %struct.snd_cobalt_card*, align 8
  %3 = alloca %struct.cobalt_stream*, align 8
  %4 = alloca %struct.cobalt*, align 8
  %5 = alloca %struct.snd_card*, align 8
  store %struct.snd_cobalt_card* %0, %struct.snd_cobalt_card** %2, align 8
  %6 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %2, align 8
  %7 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %6, i32 0, i32 1
  %8 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  store %struct.cobalt_stream* %8, %struct.cobalt_stream** %3, align 8
  %9 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %10 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %9, i32 0, i32 1
  %11 = load %struct.cobalt*, %struct.cobalt** %10, align 8
  store %struct.cobalt* %11, %struct.cobalt** %4, align 8
  %12 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %2, align 8
  %13 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %12, i32 0, i32 0
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  store %struct.snd_card* %14, %struct.snd_card** %5, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strscpy(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %19 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %20 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %23 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %26 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snprintf(i32 %21, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cobalt*, %struct.cobalt** %4, align 8
  %33 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cobalt_stream*, %struct.cobalt_stream** %3, align 8
  %36 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37)
  ret i32 0
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
