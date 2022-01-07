; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_add_udp_tunnel_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_add_udp_tunnel_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.udp_tunnel_info = type { i64, i32, i8* }
%struct.ixgbe_adapter = type { i32, i8*, i8*, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"VXLAN port %d set, not adding port %d\0A\00", align 1
@IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"GENEVE port %d set, not adding port %d\0A\00", align 1
@IXGBE_VXLANCTRL_GENEVE_UDPPORT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_VXLANCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.udp_tunnel_info*)* @ixgbe_add_udp_tunnel_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_add_udp_tunnel_port(%struct.net_device* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %5, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 3
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %6, align 8
  %14 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %15 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %18 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AF_INET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %108

23:                                               ; preds = %2
  %24 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %25 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %94 [
    i32 128, label %27
    i32 129, label %60
  ]

27:                                               ; preds = %23
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %108

35:                                               ; preds = %27
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %108

42:                                               ; preds = %35
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @ntohs(i8* %51)
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @ntohs(i8* %53)
  %55 = call i32 @netdev_info(%struct.net_device* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %54)
  br label %108

56:                                               ; preds = %42
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %95

60:                                               ; preds = %23
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %108

68:                                               ; preds = %60
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %70 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %108

75:                                               ; preds = %68
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @ntohs(i8* %84)
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @ntohs(i8* %86)
  %88 = call i32 @netdev_info(%struct.net_device* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %87)
  br label %108

89:                                               ; preds = %75
  %90 = load i32, i32* @IXGBE_VXLANCTRL_GENEVE_UDPPORT_SHIFT, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  br label %95

94:                                               ; preds = %23
  br label %108

95:                                               ; preds = %89, %56
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %97 = load i32, i32* @IXGBE_VXLANCTRL, align 4
  %98 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %96, i32 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @ntohs(i8* %99)
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %98, %102
  store i32 %103, i32* %9, align 4
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %105 = load i32, i32* @IXGBE_VXLANCTRL, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %95, %94, %80, %74, %67, %47, %41, %34, %22
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
