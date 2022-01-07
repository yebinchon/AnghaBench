; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_add_mac_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_add_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.ixgbe_mac_addr* }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_mac_addr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IXGBE_MAC_STATE_IN_USE = common dso_local global i32 0, align 4
@IXGBE_MAC_STATE_MODIFIED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_add_mac_filter(%struct.ixgbe_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_mac_addr*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
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
  br label %66

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %58, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %24
  %32 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %33 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IXGBE_MAC_STATE_IN_USE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %58

39:                                               ; preds = %31
  %40 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %41 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ether_addr_copy(i32 %42, i32* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %47 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @IXGBE_MAC_STATE_MODIFIED, align 4
  %49 = load i32, i32* @IXGBE_MAC_STATE_IN_USE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %56 = call i32 @ixgbe_sync_mac_table(%struct.ixgbe_adapter* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %38
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load %struct.ixgbe_mac_addr*, %struct.ixgbe_mac_addr** %8, align 8
  %62 = getelementptr inbounds %struct.ixgbe_mac_addr, %struct.ixgbe_mac_addr* %61, i32 1
  store %struct.ixgbe_mac_addr* %62, %struct.ixgbe_mac_addr** %8, align 8
  br label %24

63:                                               ; preds = %24
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %39, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ixgbe_sync_mac_table(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
