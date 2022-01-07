; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_rx_agg_chg_indicate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_rx_agg_chg_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_UPT_RXDMA_OWN = common dso_local global i32 0, align 4
@OWN_UPDATE = common dso_local global i32 0, align 4
@OWN_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153b_rx_agg_chg_indicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153b_rx_agg_chg_indicate(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %3 = load %struct.r8152*, %struct.r8152** %2, align 8
  %4 = load i32, i32* @MCU_TYPE_USB, align 4
  %5 = load i32, i32* @USB_UPT_RXDMA_OWN, align 4
  %6 = load i32, i32* @OWN_UPDATE, align 4
  %7 = load i32, i32* @OWN_CLEAR, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @ocp_write_byte(%struct.r8152* %3, i32 %4, i32 %5, i32 %8)
  ret void
}

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
