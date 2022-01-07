; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_get_flash_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_hw.c_netxen_get_flash_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32 }

@NX_FW_MAC_ADDR_OFFSET = common dso_local global i64 0, align 8
@NX_OLD_MAC_ADDR_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_get_flash_mac_addr(%struct.netxen_adapter* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = bitcast i64* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i64, i64* @NX_FW_MAC_ADDR_OFFSET, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %10, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @netxen_get_flash_block(%struct.netxen_adapter* %17, i64 %18, i32 8, i32* %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

23:                                               ; preds = %2
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i64, i64* @NX_OLD_MAC_ADDR_OFFSET, align 8
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = add i64 %28, %33
  store i64 %34, i64* %7, align 8
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @netxen_get_flash_block(%struct.netxen_adapter* %35, i64 %36, i32 8, i32* %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %48

41:                                               ; preds = %27
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %48

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %23
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %45, %40, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @netxen_get_flash_block(%struct.netxen_adapter*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
