; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32*, %struct.net_device* }
%struct.net_device = type { i32 }

@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_ADD_ = common dso_local global i32 0, align 4
@MAC_CR_ASD_ = common dso_local global i32 0, align 4
@MAC_CR_CNTR_RST_ = common dso_local global i32 0, align 4
@MAC_RX_ADDRH = common dso_local global i32 0, align 4
@MAC_RX_ADDRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_mac_init(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %12 = load i32, i32* @MAC_CR, align 4
  %13 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @MAC_CR_ADD_, align 4
  %15 = load i32, i32* @MAC_CR_ASD_, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @MAC_CR_CNTR_RST_, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %23 = load i32, i32* @MAC_CR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %22, i32 %23, i32 %24)
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %27 = load i32, i32* @MAC_RX_ADDRH, align 4
  %28 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %30 = load i32, i32* @MAC_RX_ADDRL, align 4
  %31 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 24
  %54 = and i32 %53, 255
  %55 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 255
  %61 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 65535
  br i1 %74, label %75, label %79

75:                                               ; preds = %1
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %87

79:                                               ; preds = %75, %1
  %80 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @is_valid_ether_addr(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %79
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @eth_random_addr(i32* %93)
  br label %95

95:                                               ; preds = %90, %87
  %96 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %97 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @lan743x_mac_set_address(%struct.lan743x_adapter* %96, i32* %99)
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @ether_addr_copy(i32 %103, i32* %106)
  ret i32 0
}

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @lan743x_mac_set_address(%struct.lan743x_adapter*, i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
