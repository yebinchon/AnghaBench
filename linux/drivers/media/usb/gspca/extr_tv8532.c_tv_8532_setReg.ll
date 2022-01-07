; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_tv8532.c_tv_8532_setReg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_tv8532.c_tv_8532_setReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@R3B_Test3 = common dso_local global i32 0, align 4
@R0E_AD_HEIGHTL = common dso_local global i32 0, align 4
@R0F_AD_HEIGHTH = common dso_local global i32 0, align 4
@R1C_AD_EXPOSE_TIMEL = common dso_local global i32 0, align 4
@R10_AD_COL_BEGINL = common dso_local global i32 0, align 4
@R11_AD_COL_BEGINH = common dso_local global i32 0, align 4
@R14_AD_ROW_BEGINL = common dso_local global i32 0, align 4
@R94_AD_BITCONTROL = common dso_local global i32 0, align 4
@R91_AD_SLOPEREG = common dso_local global i32 0, align 4
@R00_PART_CONTROL = common dso_local global i32 0, align 4
@LATENT_CHANGE = common dso_local global i32 0, align 4
@EXPO_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @tv_8532_setReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv_8532_setReg(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = load i32, i32* @R3B_Test3, align 4
  %5 = call i32 @reg_w1(%struct.gspca_dev* %3, i32 %4, i32 10)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load i32, i32* @R0E_AD_HEIGHTL, align 4
  %8 = call i32 @reg_w1(%struct.gspca_dev* %6, i32 %7, i32 144)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32, i32* @R0F_AD_HEIGHTH, align 4
  %11 = call i32 @reg_w1(%struct.gspca_dev* %9, i32 %10, i32 1)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @R1C_AD_EXPOSE_TIMEL, align 4
  %14 = call i32 @reg_w2(%struct.gspca_dev* %12, i32 %13, i32 399)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = load i32, i32* @R10_AD_COL_BEGINL, align 4
  %17 = call i32 @reg_w1(%struct.gspca_dev* %15, i32 %16, i32 68)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = load i32, i32* @R11_AD_COL_BEGINH, align 4
  %20 = call i32 @reg_w1(%struct.gspca_dev* %18, i32 %19, i32 0)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = load i32, i32* @R14_AD_ROW_BEGINL, align 4
  %23 = call i32 @reg_w1(%struct.gspca_dev* %21, i32 %22, i32 10)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = load i32, i32* @R94_AD_BITCONTROL, align 4
  %26 = call i32 @reg_w1(%struct.gspca_dev* %24, i32 %25, i32 2)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = load i32, i32* @R91_AD_SLOPEREG, align 4
  %29 = call i32 @reg_w1(%struct.gspca_dev* %27, i32 %28, i32 0)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = load i32, i32* @R00_PART_CONTROL, align 4
  %32 = load i32, i32* @LATENT_CHANGE, align 4
  %33 = load i32, i32* @EXPO_CHANGE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @reg_w1(%struct.gspca_dev* %30, i32 %31, i32 %34)
  ret void
}

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
