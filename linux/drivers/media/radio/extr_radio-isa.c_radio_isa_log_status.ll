; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.radio_isa_card = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"I/O Port = 0x%03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @radio_isa_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_isa_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.radio_isa_card*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.radio_isa_card* @video_drvdata(%struct.file* %6)
  store %struct.radio_isa_card* %7, %struct.radio_isa_card** %5, align 8
  %8 = load %struct.radio_isa_card*, %struct.radio_isa_card** %5, align 8
  %9 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %8, i32 0, i32 0
  %10 = load %struct.radio_isa_card*, %struct.radio_isa_card** %5, align 8
  %11 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @v4l2_info(%struct.TYPE_2__* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.radio_isa_card*, %struct.radio_isa_card** %5, align 8
  %15 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %14, i32 0, i32 1
  %16 = load %struct.radio_isa_card*, %struct.radio_isa_card** %5, align 8
  %17 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @v4l2_ctrl_handler_log_status(i32* %15, i32 %19)
  ret i32 0
}

declare dso_local %struct.radio_isa_card* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_info(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
