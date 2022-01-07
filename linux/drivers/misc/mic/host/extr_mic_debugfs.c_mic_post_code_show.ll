; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_debugfs.c_mic_post_code_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_debugfs.c_mic_post_code_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mic_device* }
%struct.mic_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mic_device*)* }

@.str = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mic_post_code_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_post_code_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mic_device*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.mic_device*, %struct.mic_device** %8, align 8
  store %struct.mic_device* %9, %struct.mic_device** %5, align 8
  %10 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %11 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mic_device*)*, i32 (%struct.mic_device*)** %13, align 8
  %15 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %16 = call i32 %14(%struct.mic_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
