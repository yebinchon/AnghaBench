; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_l3s_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_l3s_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_port = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32* }

@ipvl_l3mdev_ops = common dso_local global i32 0, align 4
@IFF_L3MDEV_RX_HANDLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipvlan_l3s_register(%struct.ipvl_port* %0) #0 {
  %2 = alloca %struct.ipvl_port*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ipvl_port* %0, %struct.ipvl_port** %2, align 8
  %5 = load %struct.ipvl_port*, %struct.ipvl_port** %2, align 8
  %6 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %5, i32 0, i32 1
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.ipvl_port*, %struct.ipvl_port** %2, align 8
  %10 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %9, i32 0, i32 0
  %11 = call i32 @read_pnet(i32* %10)
  %12 = call i32 @ipvlan_register_nf_hook(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  store i32* @ipvl_l3mdev_ops, i32** %17, align 8
  %18 = load i32, i32* @IFF_L3MDEV_RX_HANDLER, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %15, %1
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ipvlan_register_nf_hook(i32) #1

declare dso_local i32 @read_pnet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
