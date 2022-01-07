; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_mii_wait_till_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_mii_wait_till_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@LAN743X_CSR_READ_OP = common dso_local global i32 0, align 4
@MAC_MII_ACC = common dso_local global i32 0, align 4
@MAC_MII_ACC_MII_BUSY_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_mac_mii_wait_till_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_mac_mii_wait_till_not_busy(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %4 = load i32, i32* @LAN743X_CSR_READ_OP, align 4
  %5 = load i32, i32* @MAC_MII_ACC, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAC_MII_ACC_MII_BUSY_, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @readx_poll_timeout(i32 %4, i32 %5, i32 %6, i32 %12, i32 0, i32 1000000)
  ret i32 %13
}

declare dso_local i32 @readx_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
