; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vortex_private = type { i32 }

@mii_preamble_required = common dso_local global i64 0, align 8
@MDIO_DATA_WRITE1 = common dso_local global i32 0, align 4
@MDIO_DATA_WRITE0 = common dso_local global i32 0, align 4
@Wn4_PhysicalMgmt = common dso_local global i32 0, align 4
@MDIO_SHIFT_CLK = common dso_local global i32 0, align 4
@MDIO_ENB_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vortex_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.vortex_private* @netdev_priv(%struct.net_device* %13)
  store %struct.vortex_private* %14, %struct.vortex_private** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 23
  %17 = or i32 1342308352, %16
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 18
  %20 = or i32 %17, %19
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %24 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load i64, i64* @mii_preamble_required, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %30 = call i32 @mdio_sync(%struct.vortex_private* %29, i32 32)
  br label %31

31:                                               ; preds = %28, %4
  store i32 31, i32* %11, align 4
  br label %32

32:                                               ; preds = %61, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %12, align 4
  %47 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %50 = call i32 @window_write16(%struct.vortex_private* %47, i32 %48, i32 4, i32 %49)
  %51 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %52 = call i32 @mdio_delay(%struct.vortex_private* %51)
  %53 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %58 = call i32 @window_write16(%struct.vortex_private* %53, i32 %56, i32 4, i32 %57)
  %59 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %60 = call i32 @mdio_delay(%struct.vortex_private* %59)
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  br label %32

64:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %70 = load i32, i32* @MDIO_ENB_IN, align 4
  %71 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %72 = call i32 @window_write16(%struct.vortex_private* %69, i32 %70, i32 4, i32 %71)
  %73 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %74 = call i32 @mdio_delay(%struct.vortex_private* %73)
  %75 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %76 = load i32, i32* @MDIO_ENB_IN, align 4
  %77 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %80 = call i32 @window_write16(%struct.vortex_private* %75, i32 %78, i32 4, i32 %79)
  %81 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %82 = call i32 @mdio_delay(%struct.vortex_private* %81)
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %11, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load %struct.vortex_private*, %struct.vortex_private** %9, align 8
  %88 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  ret void
}

declare dso_local %struct.vortex_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mdio_sync(%struct.vortex_private*, i32) #1

declare dso_local i32 @window_write16(%struct.vortex_private*, i32, i32, i32) #1

declare dso_local i32 @mdio_delay(%struct.vortex_private*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
