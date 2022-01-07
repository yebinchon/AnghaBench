; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_mac_mcu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_mac_mcu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32, i32)* @mac_mcu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_mcu_write(%struct.rtl8169_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 31
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 4
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %13 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %15, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @r8168_mac_ocp_write(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
