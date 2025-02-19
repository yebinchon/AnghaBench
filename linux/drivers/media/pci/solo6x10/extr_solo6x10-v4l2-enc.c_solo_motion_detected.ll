; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_motion_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_motion_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i32, i32, %struct.solo_dev* }
%struct.solo_dev = type { i32 }

@SOLO_VI_MOT_STATUS = common dso_local global i32 0, align 4
@SOLO_VI_MOT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_enc_dev*)* @solo_motion_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_motion_detected(%struct.solo_enc_dev* %0) #0 {
  %2 = alloca %struct.solo_enc_dev*, align 8
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %2, align 8
  %7 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %7, i32 0, i32 2
  %9 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  store %struct.solo_dev* %9, %struct.solo_dev** %3, align 8
  %10 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %11 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %15 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %19 = load i32, i32* @SOLO_VI_MOT_STATUS, align 4
  %20 = call i32 @solo_reg_read(%struct.solo_dev* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %26 = load i32, i32* @SOLO_VI_MOT_CLEAR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @solo_reg_write(%struct.solo_dev* %25, i32 %26, i32 %27)
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %31 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @solo_reg_read(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
