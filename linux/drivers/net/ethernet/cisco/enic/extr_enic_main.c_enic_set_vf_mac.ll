; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enic = type { i32 }
%struct.enic_port_profile = type { i32 }

@PORT_SELF_VF = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@vnic_dev_set_mac_addr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @enic_set_vf_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.enic*, align 8
  %9 = alloca %struct.enic_port_profile*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.enic* @netdev_priv(%struct.net_device* %11)
  store %struct.enic* %12, %struct.enic** %8, align 8
  %13 = load %struct.enic*, %struct.enic** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.enic_port_profile*, %struct.enic_port_profile** %9, align 8
  %16 = call i32 @ENIC_PP_BY_INDEX(%struct.enic* %13, i32 %14, %struct.enic_port_profile* %15, i32* %10)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @is_valid_ether_addr(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @is_zero_ether_addr(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PORT_SELF_VF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.enic_port_profile*, %struct.enic_port_profile** %9, align 8
  %35 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %36, i32* %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %52

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.enic*, %struct.enic** %8, align 8
  %44 = load i32, i32* @vnic_dev_set_mac_addr, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32 %41, i32 %42, %struct.enic* %43, i32 %44, i32* %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @enic_dev_status_to_errno(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %25
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %40, %33, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.enic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ENIC_PP_BY_INDEX(%struct.enic*, i32, %struct.enic_port_profile*, i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32, i32, %struct.enic*, i32, i32*) #1

declare dso_local i32 @enic_dev_status_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
