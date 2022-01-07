; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_get_wwn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_get_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ixgbe_mac_info }
%struct.ixgbe_mac_info = type { i32, i32, i64* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fcoe_get_wwn(%struct.net_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_adapter*, align 8
  %10 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 65535, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %9, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ixgbe_mac_info* %15, %struct.ixgbe_mac_info** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %25 [
    i32 129, label %17
    i32 128, label %21
  ]

17:                                               ; preds = %3
  %18 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %19 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %23 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21, %17
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 65535
  br i1 %28, label %29, label %86

29:                                               ; preds = %26
  %30 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %31 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = call i64 @is_valid_ether_addr(i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 48
  %38 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %39 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 40
  %45 = or i32 %37, %44
  %46 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %47 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %51, 32
  %53 = or i32 %45, %52
  %54 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %55 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %59, 24
  %61 = or i32 %53, %60
  %62 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %63 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 16
  %69 = or i32 %61, %68
  %70 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %71 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 4
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 8
  %77 = or i32 %69, %76
  %78 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %79 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 5
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = or i32 %77, %83
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %89

86:                                               ; preds = %29, %26
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %35
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_valid_ether_addr(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
