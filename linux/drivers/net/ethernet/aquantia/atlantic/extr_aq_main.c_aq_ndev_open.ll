; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_main.c_aq_ndev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_main.c_aq_ndev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.aq_nic_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @aq_ndev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ndev_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.aq_nic_s*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %5)
  store %struct.aq_nic_s* %6, %struct.aq_nic_s** %4, align 8
  %7 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %8 = call i32 @aq_nic_init(%struct.aq_nic_s* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %14 = call i32 @aq_reapply_rxnfc_all_rules(%struct.aq_nic_s* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %20 = call i32 @aq_filters_vlans_update(%struct.aq_nic_s* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %31

24:                                               ; preds = %18
  %25 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %26 = call i32 @aq_nic_start(%struct.aq_nic_s* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %29, %23, %17, %11
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %36 = call i32 @aq_nic_deinit(%struct.aq_nic_s* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @aq_nic_init(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_reapply_rxnfc_all_rules(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_filters_vlans_update(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_start(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_nic_deinit(%struct.aq_nic_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
