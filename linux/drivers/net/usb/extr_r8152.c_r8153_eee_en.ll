; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_eee_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_eee_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_EEE_CR = common dso_local global i32 0, align 4
@OCP_EEE_CFG = common dso_local global i32 0, align 4
@EEE_RX_EN = common dso_local global i32 0, align 4
@EEE_TX_EN = common dso_local global i32 0, align 4
@EEE10_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32)* @r8153_eee_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_eee_en(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.r8152*, %struct.r8152** %3, align 8
  %8 = load i32, i32* @MCU_TYPE_PLA, align 4
  %9 = load i32, i32* @PLA_EEE_CR, align 4
  %10 = call i32 @ocp_read_word(%struct.r8152* %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.r8152*, %struct.r8152** %3, align 8
  %12 = load i32, i32* @OCP_EEE_CFG, align 4
  %13 = call i32 @ocp_reg_read(%struct.r8152* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @EEE_RX_EN, align 4
  %18 = load i32, i32* @EEE_TX_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @EEE10_EN, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @EEE_RX_EN, align 4
  %27 = load i32, i32* @EEE_TX_EN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @EEE10_EN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %25, %16
  %37 = load %struct.r8152*, %struct.r8152** %3, align 8
  %38 = load i32, i32* @MCU_TYPE_PLA, align 4
  %39 = load i32, i32* @PLA_EEE_CR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ocp_write_word(%struct.r8152* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.r8152*, %struct.r8152** %3, align 8
  %43 = load i32, i32* @OCP_EEE_CFG, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ocp_reg_write(%struct.r8152* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.r8152*, %struct.r8152** %3, align 8
  %48 = getelementptr inbounds %struct.r8152, %struct.r8152* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  ret void
}

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_reg_read(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_reg_write(%struct.r8152*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
