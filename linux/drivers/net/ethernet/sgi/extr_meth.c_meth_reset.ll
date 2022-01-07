; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.meth_private = type { i32, i32 }

@SGI_MAC_RESET = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unable to find PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@METH_ACCEPT_MCAST = common dso_local global i32 0, align 4
@METH_DEFAULT_IPG = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@METH_PROMISC = common dso_local global i32 0, align 4
@METH_RX_OFFSET_SHIFT = common dso_local global i32 0, align 4
@RX_RING_ENTRIES = common dso_local global i32 0, align 4
@METH_RX_DEPTH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meth_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.meth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.meth_private* @netdev_priv(%struct.net_device* %5)
  store %struct.meth_private* %6, %struct.meth_private** %4, align 8
  %7 = load i32, i32* @SGI_MAC_RESET, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = call i32 @udelay(i32 1)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = call i32 @udelay(i32 25)
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @load_eaddr(%struct.net_device* %16)
  %18 = load %struct.meth_private*, %struct.meth_private** %4, align 8
  %19 = call i64 @mdio_probe(%struct.meth_private* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call i32 @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load i32, i32* @METH_ACCEPT_MCAST, align 4
  %27 = load i32, i32* @METH_DEFAULT_IPG, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.meth_private*, %struct.meth_private** %4, align 8
  %30 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_PROMISC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load i32, i32* @METH_PROMISC, align 4
  %39 = load %struct.meth_private*, %struct.meth_private** %4, align 8
  %40 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %25
  %44 = load %struct.meth_private*, %struct.meth_private** %4, align 8
  %45 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @meth_check_link(%struct.net_device* %50)
  %52 = load i32, i32* @METH_RX_OFFSET_SHIFT, align 4
  %53 = shl i32 4, %52
  %54 = load i32, i32* @RX_RING_ENTRIES, align 4
  %55 = load i32, i32* @METH_RX_DEPTH_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load %struct.meth_private*, %struct.meth_private** %4, align 8
  %59 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.meth_private*, %struct.meth_private** %4, align 8
  %61 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %43, %21
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.meth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @load_eaddr(%struct.net_device*) #1

declare dso_local i64 @mdio_probe(%struct.meth_private*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @meth_check_link(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
