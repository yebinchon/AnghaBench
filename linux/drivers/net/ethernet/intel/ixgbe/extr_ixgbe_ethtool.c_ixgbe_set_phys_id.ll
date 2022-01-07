; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IXGBE_LEDCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbe_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %7, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.ixgbe_hw.1*, i32)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.ixgbe_hw.0*, i32)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %71

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %70 [
    i32 131, label %30
    i32 128, label %36
    i32 129, label %49
    i32 130, label %62
  ]

30:                                               ; preds = %28
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %32 = load i32, i32* @IXGBE_LEDCTL, align 4
  %33 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %31, i32 %32)
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 2, i32* %3, align 4
  br label %71

36:                                               ; preds = %28
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.1*
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(%struct.ixgbe_hw.1* %43, i32 %47)
  br label %70

49:                                               ; preds = %28
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %53, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %56 = bitcast %struct.ixgbe_hw* %55 to %struct.ixgbe_hw.0*
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %54(%struct.ixgbe_hw.0* %56, i32 %60)
  br label %70

62:                                               ; preds = %28
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %63, i32 0, i32 1
  %65 = load i32, i32* @IXGBE_LEDCTL, align 4
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %28, %62, %49, %36
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %30, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
