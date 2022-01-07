; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@MAC_RX = common dso_local global i32 0, align 4
@MAC_RX_RXEN_ = common dso_local global i32 0, align 4
@MAC_RX_RXD_ = common dso_local global i32 0, align 4
@MAC_RX_MAX_SIZE_MASK_ = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@MAC_RX_MAX_SIZE_SHIFT_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*, i32)* @lan743x_mac_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_mac_set_mtu(%struct.lan743x_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %8 = load i32, i32* @MAC_RX, align 4
  %9 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAC_RX_RXEN_, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MAC_RX_RXD_, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %21 = load i32, i32* @MAC_RX, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @MAC_RX_RXD_, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %19, %14
  %29 = load i32, i32* @MAC_RX_RXEN_, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %34 = load i32, i32* @MAC_RX, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %33, i32 %34, i32 %35)
  %37 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %38 = load i32, i32* @MAC_RX, align 4
  %39 = load i32, i32* @MAC_RX_RXD_, align 4
  %40 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %37, i32 %38, i32 %39, i32 1, i32 1000, i32 20000, i32 100)
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %42 = load i32, i32* @MAC_RX, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAC_RX_RXD_, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %41, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %28, %2
  %48 = load i32, i32* @MAC_RX_MAX_SIZE_MASK_, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ETH_HLEN, align 4
  %54 = add nsw i32 %52, %53
  %55 = add nsw i32 %54, 4
  %56 = load i32, i32* @MAC_RX_MAX_SIZE_SHIFT_, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @MAC_RX_MAX_SIZE_MASK_, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %63 = load i32, i32* @MAC_RX, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %47
  %69 = load i32, i32* @MAC_RX_RXEN_, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %73 = load i32, i32* @MAC_RX, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %47
  ret i32 0
}

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
