; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168_config_eee_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168_config_eee_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64 }

@RTL_GIGA_MAC_VER_38 = common dso_local global i64 0, align 8
@EEE_LED = common dso_local global i32 0, align 4
@ERIAR_MASK_1111 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168_config_eee_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168_config_eee_mac(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RTL_GIGA_MAC_VER_38, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = load i32, i32* @EEE_LED, align 4
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = load i32, i32* @EEE_LED, align 4
  %13 = call i32 @RTL_R8(%struct.rtl8169_private* %11, i32 %12)
  %14 = and i32 %13, -8
  %15 = call i32 @RTL_W8(%struct.rtl8169_private* %9, i32 %10, i32 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %18 = load i32, i32* @ERIAR_MASK_1111, align 4
  %19 = call i32 @rtl_eri_set_bits(%struct.rtl8169_private* %17, i32 432, i32 %18, i32 3)
  ret void
}

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_eri_set_bits(%struct.rtl8169_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
