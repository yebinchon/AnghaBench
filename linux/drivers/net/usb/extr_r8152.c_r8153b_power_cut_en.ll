; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_power_cut_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_power_cut_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_POWER_CUT = common dso_local global i32 0, align 4
@PWR_EN = common dso_local global i32 0, align 4
@PHASE2_EN = common dso_local global i32 0, align 4
@USB_MISC_0 = common dso_local global i32 0, align 4
@PCUT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @r8153b_power_cut_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153b_power_cut_en(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.r8152*, %struct.r8152** %3, align 8
  %7 = load i32, i32* @MCU_TYPE_USB, align 4
  %8 = load i32, i32* @USB_POWER_CUT, align 4
  %9 = call i32 @ocp_read_word(%struct.r8152* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @PWR_EN, align 4
  %14 = load i32, i32* @PHASE2_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @PWR_EN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.r8152*, %struct.r8152** %3, align 8
  %25 = load i32, i32* @MCU_TYPE_USB, align 4
  %26 = load i32, i32* @USB_POWER_CUT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ocp_write_word(%struct.r8152* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.r8152*, %struct.r8152** %3, align 8
  %30 = load i32, i32* @MCU_TYPE_USB, align 4
  %31 = load i32, i32* @USB_MISC_0, align 4
  %32 = call i32 @ocp_read_word(%struct.r8152* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @PCUT_STATUS, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.r8152*, %struct.r8152** %3, align 8
  %38 = load i32, i32* @MCU_TYPE_USB, align 4
  %39 = load i32, i32* @USB_MISC_0, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ocp_write_word(%struct.r8152* %37, i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
