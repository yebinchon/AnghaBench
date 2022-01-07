; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_del_mac_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_del_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.ixgbe_mac_addr* }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_mac_addr = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IXGBE_MAC_STATE_IN_USE = common dso_local global i32 0, align 4
@IXGBE_MAC_STATE_MODIFIED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_del_mac_filter(%struct.ixgbe_adapter* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_mac_addr*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 1
  %13 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %12, align 8
  %14 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %13, i64 0
  store %struct.ixgbe_mac_addr* %14, %struct.ixgbe_mac_addr** %8, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @is_zero_ether_addr(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %76

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %24
  %32 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IXGBE_MAC_STATE_IN_USE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %68

39:                                               ; preds = %31
  %40 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %68

46:                                               ; preds = %39
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %49 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ether_addr_equal(i32* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %68

54:                                               ; preds = %46
  %55 = load i32, i32* @IXGBE_MAC_STATE_MODIFIED, align 4
  %56 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %57 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @IXGBE_MAC_STATE_IN_USE, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %63 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %67 = call i32 @ixgbe_sync_mac_table(%struct.ixgbe_adapter* %66)
  store i32 0, i32* %4, align 4
  br label %76

68:                                               ; preds = %53, %45, %38
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %72 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %71, i32 1
  store %struct.ixgbe_mac_addr* %72, %struct.ixgbe_mac_addr** %8, align 8
  br label %24

73:                                               ; preds = %24
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %54, %20
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @ixgbe_sync_mac_table(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
