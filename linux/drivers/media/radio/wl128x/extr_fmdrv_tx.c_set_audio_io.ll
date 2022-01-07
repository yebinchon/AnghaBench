; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_set_audio_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_set_audio_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.fmtx_data }
%struct.fmtx_data = type { i32 }

@AUDIO_IO_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*)* @set_audio_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_audio_io(%struct.fmdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fmdev*, align 8
  %4 = alloca %struct.fmtx_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %3, align 8
  %7 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %8 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %7, i32 0, i32 0
  store %struct.fmtx_data* %8, %struct.fmtx_data** %4, align 8
  %9 = load %struct.fmtx_data*, %struct.fmtx_data** %4, align 8
  %10 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %13 = load i32, i32* @AUDIO_IO_SET, align 4
  %14 = load i32, i32* @REG_WR, align 4
  %15 = call i32 @fmc_send_cmd(%struct.fmdev* %12, i32 %13, i32 %14, i32* %5, i32 4, i32* null, i32* null)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
