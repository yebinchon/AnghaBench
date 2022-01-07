; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_disable_cam_entry_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_disable_cam_entry_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32 }

@TSU_POST1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sh_eth_tsu_disable_cam_entry_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_tsu_disable_cam_entry_post(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_eth_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.sh_eth_private* %11, %struct.sh_eth_private** %5, align 8
  %12 = load i32, i32* @TSU_POST1, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 8
  %15 = add nsw i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @sh_eth_tsu_get_post_mask(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sh_eth_tsu_get_post_bit(%struct.sh_eth_private* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @sh_eth_tsu_read(%struct.sh_eth_private* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sh_eth_tsu_write(%struct.sh_eth_private* %27, i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %34, %35
  ret i32 %36
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_tsu_get_post_mask(i32) #1

declare dso_local i32 @sh_eth_tsu_get_post_bit(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @sh_eth_tsu_read(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @sh_eth_tsu_write(%struct.sh_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
