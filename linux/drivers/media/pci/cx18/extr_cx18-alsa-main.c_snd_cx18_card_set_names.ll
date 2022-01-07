; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa-main.c_snd_cx18_card_set_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa-main.c_snd_cx18_card_set_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cx18_card = type { %struct.snd_card*, i32 }
%struct.snd_card = type { i32, i32, i32 }
%struct.cx18 = type { i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"CX23418\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CX18-%d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"CX23418 #%d %s TV/FM Radio/Line-In Capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cx18_card*)* @snd_cx18_card_set_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx18_card_set_names(%struct.snd_cx18_card* %0) #0 {
  %2 = alloca %struct.snd_cx18_card*, align 8
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.snd_card*, align 8
  store %struct.snd_cx18_card* %0, %struct.snd_cx18_card** %2, align 8
  %5 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %2, align 8
  %6 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.cx18* @to_cx18(i32 %7)
  store %struct.cx18* %8, %struct.cx18** %3, align 8
  %9 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %2, align 8
  %10 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %4, align 8
  %12 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %13 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strscpy(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cx18*, %struct.cx18** %3, align 8
  %20 = getelementptr inbounds %struct.cx18, %struct.cx18* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cx18*, %struct.cx18** %3, align 8
  %27 = getelementptr inbounds %struct.cx18, %struct.cx18* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cx18*, %struct.cx18** %3, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %31)
  ret i32 0
}

declare dso_local %struct.cx18* @to_cx18(i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
