; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_enc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_enc_init(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %4 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %5 = call i32 @solo_capture_config(%struct.solo_dev* %4)
  %6 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %7 = call i32 @solo_mp4e_config(%struct.solo_dev* %6)
  %8 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %9 = call i32 @solo_jpeg_config(%struct.solo_dev* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %13 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SOLO_CAP_CH_SCALE(i32 %18)
  %20 = call i32 @solo_reg_write(%struct.solo_dev* %17, i32 %19, i32 0)
  %21 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SOLO_CAP_CH_COMP_ENA_E(i32 %22)
  %24 = call i32 @solo_reg_write(%struct.solo_dev* %21, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %10

28:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @solo_capture_config(%struct.solo_dev*) #1

declare dso_local i32 @solo_mp4e_config(%struct.solo_dev*) #1

declare dso_local i32 @solo_jpeg_config(%struct.solo_dev*) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_CAP_CH_SCALE(i32) #1

declare dso_local i32 @SOLO_CAP_CH_COMP_ENA_E(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
