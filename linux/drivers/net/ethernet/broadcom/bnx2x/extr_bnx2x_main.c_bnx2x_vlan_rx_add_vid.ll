; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_entry = type { i32, i32, i32 }

@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Adding VLAN %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @bnx2x_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.bnx2x_vlan_entry*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2x* %11, %struct.bnx2x** %8, align 8
  %12 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @DP(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bnx2x_vlan_entry* @kmalloc(i32 12, i32 %15)
  store %struct.bnx2x_vlan_entry* %16, %struct.bnx2x_vlan_entry** %9, align 8
  %17 = load %struct.bnx2x_vlan_entry*, %struct.bnx2x_vlan_entry** %9, align 8
  %18 = icmp ne %struct.bnx2x_vlan_entry* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.bnx2x_vlan_entry*, %struct.bnx2x_vlan_entry** %9, align 8
  %25 = getelementptr inbounds %struct.bnx2x_vlan_entry, %struct.bnx2x_vlan_entry* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bnx2x_vlan_entry*, %struct.bnx2x_vlan_entry** %9, align 8
  %27 = getelementptr inbounds %struct.bnx2x_vlan_entry, %struct.bnx2x_vlan_entry* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.bnx2x_vlan_entry*, %struct.bnx2x_vlan_entry** %9, align 8
  %29 = getelementptr inbounds %struct.bnx2x_vlan_entry, %struct.bnx2x_vlan_entry* %28, i32 0, i32 1
  %30 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i64 @netif_running(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %38 = call i32 @bnx2x_vlan_configure(%struct.bnx2x* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %22
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local %struct.bnx2x_vlan_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_vlan_configure(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
