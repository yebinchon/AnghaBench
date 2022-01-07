; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_enc_dev = type { i32, i64, %struct.solo_dev* }
%struct.solo_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_enc_dev*)* @solo_enc_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_enc_off(%struct.solo_enc_dev* %0) #0 {
  %2 = alloca %struct.solo_enc_dev*, align 8
  %3 = alloca %struct.solo_dev*, align 8
  store %struct.solo_enc_dev* %0, %struct.solo_enc_dev** %2, align 8
  %4 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %4, i32 0, i32 2
  %6 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  store %struct.solo_dev* %6, %struct.solo_dev** %3, align 8
  %7 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %11 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %17 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %18 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SOLO_CAP_CH_SCALE(i32 %19)
  %21 = call i32 @solo_reg_write(%struct.solo_dev* %16, i32 %20, i32 0)
  %22 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %23 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %2, align 8
  %24 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SOLO_CAP_CH_COMP_ENA_E(i32 %25)
  %27 = call i32 @solo_reg_write(%struct.solo_dev* %22, i32 %26, i32 0)
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_CAP_CH_SCALE(i32) #1

declare dso_local i32 @SOLO_CAP_CH_COMP_ENA_E(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
