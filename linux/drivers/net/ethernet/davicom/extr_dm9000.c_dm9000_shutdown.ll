; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.board_info = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@DM9000_GPR = common dso_local global i32 0, align 4
@DM9000_RCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm9000_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_shutdown(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.board_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.board_info* @netdev_priv(%struct.net_device* %4)
  store %struct.board_info* %5, %struct.board_info** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load i32, i32* @MII_BMCR, align 4
  %8 = load i32, i32* @BMCR_RESET, align 4
  %9 = call i32 @dm9000_phy_write(%struct.net_device* %6, i32 0, i32 %7, i32 %8)
  %10 = load %struct.board_info*, %struct.board_info** %3, align 8
  %11 = load i32, i32* @DM9000_GPR, align 4
  %12 = call i32 @iow(%struct.board_info* %10, i32 %11, i32 1)
  %13 = load %struct.board_info*, %struct.board_info** %3, align 8
  %14 = call i32 @dm9000_mask_interrupts(%struct.board_info* %13)
  %15 = load %struct.board_info*, %struct.board_info** %3, align 8
  %16 = load i32, i32* @DM9000_RCR, align 4
  %17 = call i32 @iow(%struct.board_info* %15, i32 %16, i32 0)
  ret void
}

declare dso_local %struct.board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dm9000_phy_write(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @iow(%struct.board_info*, i32, i32) #1

declare dso_local i32 @dm9000_mask_interrupts(%struct.board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
