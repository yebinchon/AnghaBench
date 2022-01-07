; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_mdio_read.c"
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
@MDIO_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vortex_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.vortex_private* @netdev_priv(%struct.net_device* %12)
  store %struct.vortex_private* %13, %struct.vortex_private** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 5
  %16 = or i32 251904, %15
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %20 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load i64, i64* @mii_preamble_required, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %26 = call i32 @mdio_sync(%struct.vortex_private* %25, i32 32)
  br label %27

27:                                               ; preds = %24, %3
  store i32 14, i32* %7, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @MDIO_DATA_WRITE1, align 4
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @MDIO_DATA_WRITE0, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %11, align 4
  %43 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %46 = call i32 @window_write16(%struct.vortex_private* %43, i32 %44, i32 4, i32 %45)
  %47 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %48 = call i32 @mdio_delay(%struct.vortex_private* %47)
  %49 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %54 = call i32 @window_write16(%struct.vortex_private* %49, i32 %52, i32 4, i32 %53)
  %55 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %56 = call i32 @mdio_delay(%struct.vortex_private* %55)
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  br label %28

60:                                               ; preds = %28
  store i32 19, i32* %7, align 4
  br label %61

61:                                               ; preds = %90, %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %61
  %65 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %66 = load i32, i32* @MDIO_ENB_IN, align 4
  %67 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %68 = call i32 @window_write16(%struct.vortex_private* %65, i32 %66, i32 4, i32 %67)
  %69 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %70 = call i32 @mdio_delay(%struct.vortex_private* %69)
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %71, 1
  %73 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %74 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %75 = call i32 @window_read16(%struct.vortex_private* %73, i32 4, i32 %74)
  %76 = load i32, i32* @MDIO_DATA_READ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = or i32 %72, %80
  store i32 %81, i32* %10, align 4
  %82 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %83 = load i32, i32* @MDIO_ENB_IN, align 4
  %84 = load i32, i32* @MDIO_SHIFT_CLK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @Wn4_PhysicalMgmt, align 4
  %87 = call i32 @window_write16(%struct.vortex_private* %82, i32 %85, i32 4, i32 %86)
  %88 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %89 = call i32 @mdio_delay(%struct.vortex_private* %88)
  br label %90

90:                                               ; preds = %64
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %7, align 4
  br label %61

93:                                               ; preds = %61
  %94 = load %struct.vortex_private*, %struct.vortex_private** %8, align 8
  %95 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 131072
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %105

101:                                              ; preds = %93
  %102 = load i32, i32* %10, align 4
  %103 = lshr i32 %102, 1
  %104 = and i32 %103, 65535
  br label %105

105:                                              ; preds = %101, %100
  %106 = phi i32 [ 65535, %100 ], [ %104, %101 ]
  ret i32 %106
}

declare dso_local %struct.vortex_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mdio_sync(%struct.vortex_private*, i32) #1

declare dso_local i32 @window_write16(%struct.vortex_private*, i32, i32, i32) #1

declare dso_local i32 @mdio_delay(%struct.vortex_private*) #1

declare dso_local i32 @window_read16(%struct.vortex_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
