; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_set_eee_plus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_set_eee_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@_10bps = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_EEEP_CR = common dso_local global i32 0, align 4
@EEEP_CR_EEEP_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @rtl_set_eee_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_set_eee_plus(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = call i32 @rtl8152_get_speed(%struct.r8152* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @_10bps, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.r8152*, %struct.r8152** %2, align 8
  %13 = load i32, i32* @MCU_TYPE_PLA, align 4
  %14 = load i32, i32* @PLA_EEEP_CR, align 4
  %15 = call i32 @ocp_read_word(%struct.r8152* %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @EEEP_CR_EEEP_TX, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.r8152*, %struct.r8152** %2, align 8
  %20 = load i32, i32* @MCU_TYPE_PLA, align 4
  %21 = load i32, i32* @PLA_EEEP_CR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ocp_write_word(%struct.r8152* %19, i32 %20, i32 %21, i32 %22)
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.r8152*, %struct.r8152** %2, align 8
  %26 = load i32, i32* @MCU_TYPE_PLA, align 4
  %27 = load i32, i32* @PLA_EEEP_CR, align 4
  %28 = call i32 @ocp_read_word(%struct.r8152* %25, i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @EEEP_CR_EEEP_TX, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.r8152*, %struct.r8152** %2, align 8
  %34 = load i32, i32* @MCU_TYPE_PLA, align 4
  %35 = load i32, i32* @PLA_EEEP_CR, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ocp_write_word(%struct.r8152* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @rtl8152_get_speed(%struct.r8152*) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
