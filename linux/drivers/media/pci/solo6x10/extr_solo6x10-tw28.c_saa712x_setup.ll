; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_saa712x_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_saa712x_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64 }

@saa712x_setup.saa7128_regs_ntsc = internal constant [90 x i32] [i32 13, i32 0, i32 89, i32 29, i32 117, i32 63, i32 6, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 26, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 104, i32 16, i32 151, i32 76, i32 24, i32 155, i32 147, i32 159, i32 255, i32 124, i32 52, i32 63, i32 63, i32 63, i32 131, i32 131, i32 128, i32 13, i32 15, i32 195, i32 6, i32 2, i32 128, i32 113, i32 119, i32 167, i32 103, i32 102, i32 46, i32 123, i32 17, i32 79, i32 31, i32 124, i32 240, i32 33, i32 119, i32 65, i32 136, i32 65, i32 82, i32 237, i32 16, i32 16, i32 0, i32 65, i32 195, i32 0, i32 62, i32 184, i32 2, i32 0, i32 0, i32 0, i32 0, i32 130, i32 129, i32 128, i32 0, i32 255, i32 255], align 16
@saa712x_setup.saa7128_regs_pal = internal constant [90 x i32] [i32 13, i32 0, i32 225, i32 29, i32 117, i32 63, i32 6, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 26, i32 26, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 104, i32 16, i32 151, i32 76, i32 24, i32 155, i32 147, i32 159, i32 255, i32 124, i32 52, i32 63, i32 63, i32 63, i32 131, i32 131, i32 128, i32 13, i32 15, i32 195, i32 6, i32 2, i32 128, i32 15, i32 119, i32 167, i32 103, i32 102, i32 46, i32 123, i32 2, i32 53, i32 203, i32 138, i32 9, i32 42, i32 119, i32 65, i32 136, i32 65, i32 82, i32 241, i32 16, i32 32, i32 0, i32 65, i32 195, i32 0, i32 62, i32 184, i32 2, i32 0, i32 0, i32 0, i32 0, i32 18, i32 48, i32 192, i32 0, i32 255, i32 255], align 16
@SOLO_VO_FMT_TYPE_PAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @saa712x_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa712x_setup(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  store i32 38, i32* %3, align 4
  %4 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %5 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SOLO_VO_FMT_TYPE_PAL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %11 = call i32 @saa712x_write_regs(%struct.solo_dev* %10, i32* getelementptr inbounds ([90 x i32], [90 x i32]* @saa712x_setup.saa7128_regs_pal, i64 0, i64 0), i32 38, i32 360)
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %14 = call i32 @saa712x_write_regs(%struct.solo_dev* %13, i32* getelementptr inbounds ([90 x i32], [90 x i32]* @saa712x_setup.saa7128_regs_ntsc, i64 0, i64 0), i32 38, i32 360)
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

declare dso_local i32 @saa712x_write_regs(%struct.solo_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
