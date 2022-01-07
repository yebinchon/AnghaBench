; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_motion_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_motion_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i32, i32, %struct.solo_dev* }
%struct.solo_dev = type { i32 }

@SOLO_VI_MOT_CLEAR = common dso_local global i32 0, align 4
@SOLO_VI_MOT_ADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_enc_dev*, i32)* @solo_motion_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_motion_toggle(%struct.solo_enc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.solo_enc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %8, i32 0, i32 2
  %10 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  store %struct.solo_dev* %10, %struct.solo_dev** %5, align 8
  %11 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %24 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %36 = load i32, i32* @SOLO_VI_MOT_CLEAR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @solo_reg_write(%struct.solo_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %40 = load i32, i32* @SOLO_VI_MOT_ADR, align 4
  %41 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %42 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SOLO_VI_MOTION_EN(i32 %43)
  %45 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %46 = call i32 @SOLO_MOTION_EXT_ADDR(%struct.solo_dev* %45)
  %47 = ashr i32 %46, 16
  %48 = or i32 %44, %47
  %49 = call i32 @solo_reg_write(%struct.solo_dev* %39, i32 %40, i32 %48)
  %50 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %3, align 8
  %51 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VI_MOTION_EN(i32) #1

declare dso_local i32 @SOLO_MOTION_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
