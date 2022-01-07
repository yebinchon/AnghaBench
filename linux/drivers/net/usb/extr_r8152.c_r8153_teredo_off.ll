; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_teredo_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_teredo_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_TEREDO_CFG = common dso_local global i32 0, align 4
@TEREDO_SEL = common dso_local global i32 0, align 4
@TEREDO_RS_EVENT_MASK = common dso_local global i32 0, align 4
@OOB_TEREDO_EN = common dso_local global i32 0, align 4
@PLA_WDT6_CTRL = common dso_local global i32 0, align 4
@WDT6_SET_MODE = common dso_local global i32 0, align 4
@PLA_REALWOW_TIMER = common dso_local global i32 0, align 4
@PLA_TEREDO_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153_teredo_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_teredo_off(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %4 = load %struct.r8152*, %struct.r8152** %2, align 8
  %5 = getelementptr inbounds %struct.r8152, %struct.r8152* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %30 [
    i32 136, label %7
    i32 135, label %7
    i32 134, label %7
    i32 133, label %7
    i32 132, label %7
    i32 131, label %7
    i32 130, label %7
    i32 129, label %25
    i32 128, label %25
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  %8 = load %struct.r8152*, %struct.r8152** %2, align 8
  %9 = load i32, i32* @MCU_TYPE_PLA, align 4
  %10 = load i32, i32* @PLA_TEREDO_CFG, align 4
  %11 = call i32 @ocp_read_word(%struct.r8152* %8, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @TEREDO_SEL, align 4
  %13 = load i32, i32* @TEREDO_RS_EVENT_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @OOB_TEREDO_EN, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.r8152*, %struct.r8152** %2, align 8
  %21 = load i32, i32* @MCU_TYPE_PLA, align 4
  %22 = load i32, i32* @PLA_TEREDO_CFG, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ocp_write_word(%struct.r8152* %20, i32 %21, i32 %22, i32 %23)
  br label %31

25:                                               ; preds = %1, %1
  %26 = load %struct.r8152*, %struct.r8152** %2, align 8
  %27 = load i32, i32* @MCU_TYPE_PLA, align 4
  %28 = load i32, i32* @PLA_TEREDO_CFG, align 4
  %29 = call i32 @ocp_write_byte(%struct.r8152* %26, i32 %27, i32 %28, i32 255)
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %25, %7
  %32 = load %struct.r8152*, %struct.r8152** %2, align 8
  %33 = load i32, i32* @MCU_TYPE_PLA, align 4
  %34 = load i32, i32* @PLA_WDT6_CTRL, align 4
  %35 = load i32, i32* @WDT6_SET_MODE, align 4
  %36 = call i32 @ocp_write_word(%struct.r8152* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.r8152*, %struct.r8152** %2, align 8
  %38 = load i32, i32* @MCU_TYPE_PLA, align 4
  %39 = load i32, i32* @PLA_REALWOW_TIMER, align 4
  %40 = call i32 @ocp_write_word(%struct.r8152* %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.r8152*, %struct.r8152** %2, align 8
  %42 = load i32, i32* @MCU_TYPE_PLA, align 4
  %43 = load i32, i32* @PLA_TEREDO_TIMER, align 4
  %44 = call i32 @ocp_write_dword(%struct.r8152* %41, i32 %42, i32 %43, i32 0)
  ret void
}

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
