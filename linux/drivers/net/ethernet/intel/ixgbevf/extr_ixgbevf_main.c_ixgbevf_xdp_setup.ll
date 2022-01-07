; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xdp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xdp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.ixgbevf_adapter = type { i32, %struct.bpf_prog*, %struct.ixgbevf_ring** }
%struct.ixgbevf_ring = type { %struct.bpf_prog* }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_prog*)* @ixgbevf_xdp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_xdp_setup(%struct.net_device* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbevf_adapter*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca %struct.ixgbevf_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ETH_HLEN, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @ETH_FCS_LEN, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @VLAN_HLEN, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %20)
  store %struct.ixgbevf_adapter* %21, %struct.ixgbevf_adapter** %8, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %44, %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %29, i32 0, i32 2
  %31 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %31, i64 %33
  %35 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %34, align 8
  store %struct.ixgbevf_ring* %35, %struct.ixgbevf_ring** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %10, align 8
  %38 = call i32 @ixgbevf_rx_bufsz(%struct.ixgbevf_ring* %37)
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %113

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %48, i32 0, i32 1
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %51 = call %struct.bpf_prog* @xchg(%struct.bpf_prog** %49, %struct.bpf_prog* %50)
  store %struct.bpf_prog* %51, %struct.bpf_prog** %9, align 8
  %52 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %53 = icmp ne %struct.bpf_prog* %52, null
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %58 = icmp ne %struct.bpf_prog* %57, null
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = icmp ne i32 %56, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %47
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i64 @netif_running(%struct.net_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @ixgbevf_close(%struct.net_device* %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %72 = call i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter* %71)
  %73 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %74 = call i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter* %73)
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i64 @netif_running(%struct.net_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @ixgbevf_open(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %78, %70
  br label %106

82:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %102, %82
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %86 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %91 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %90, i32 0, i32 2
  %92 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %92, i64 %94
  %96 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %95, align 8
  %97 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %96, i32 0, i32 0
  %98 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %8, align 8
  %99 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %98, i32 0, i32 1
  %100 = load %struct.bpf_prog*, %struct.bpf_prog** %99, align 8
  %101 = call %struct.bpf_prog* @xchg(%struct.bpf_prog** %97, %struct.bpf_prog* %100)
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %83

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %105, %81
  %107 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %108 = icmp ne %struct.bpf_prog* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %111 = call i32 @bpf_prog_put(%struct.bpf_prog* %110)
  br label %112

112:                                              ; preds = %109, %106
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %40
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_rx_bufsz(%struct.ixgbevf_ring*) #1

declare dso_local %struct.bpf_prog* @xchg(%struct.bpf_prog**, %struct.bpf_prog*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_close(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_open(%struct.net_device*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
