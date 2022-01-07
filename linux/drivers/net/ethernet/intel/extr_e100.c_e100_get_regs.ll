; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.nic = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@E100_PHY_REGS = common dso_local global i32 0, align 4
@e100_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @e100_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nic*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.nic* @netdev_priv(%struct.net_device* %10)
  store %struct.nic* %11, %struct.nic** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load %struct.nic*, %struct.nic** %7, align 8
  %15 = getelementptr inbounds %struct.nic, %struct.nic* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 16777216, %18
  %20 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nic*, %struct.nic** %7, align 8
  %23 = getelementptr inbounds %struct.nic, %struct.nic* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = call i32 @ioread8(i32* %26)
  %28 = shl i32 %27, 24
  %29 = load %struct.nic*, %struct.nic** %7, align 8
  %30 = getelementptr inbounds %struct.nic, %struct.nic* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = call i32 @ioread8(i32* %33)
  %35 = shl i32 %34, 16
  %36 = or i32 %28, %35
  %37 = load %struct.nic*, %struct.nic** %7, align 8
  %38 = getelementptr inbounds %struct.nic, %struct.nic* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @ioread16(i32* %41)
  %43 = or i32 %36, %42
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @E100_PHY_REGS, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %65, %3
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load %struct.nic*, %struct.nic** %7, align 8
  %53 = getelementptr inbounds %struct.nic, %struct.nic* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @mdio_read(%struct.net_device* %51, i32 %55, i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @E100_PHY_REGS, align 4
  %60 = add nsw i32 1, %59
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 %57, i32* %64, align 4
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  br label %47

68:                                               ; preds = %47
  %69 = load %struct.nic*, %struct.nic** %7, align 8
  %70 = getelementptr inbounds %struct.nic, %struct.nic* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memset(i32 %73, i32 0, i32 4)
  %75 = load %struct.nic*, %struct.nic** %7, align 8
  %76 = load i32, i32* @e100_dump, align 4
  %77 = call i32 @e100_exec_cb(%struct.nic* %75, i32* null, i32 %76)
  %78 = call i32 @msleep(i32 10)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @E100_PHY_REGS, align 4
  %81 = add nsw i32 2, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load %struct.nic*, %struct.nic** %7, align 8
  %85 = getelementptr inbounds %struct.nic, %struct.nic* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32* %83, i32 %88, i32 4)
  ret void
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @ioread16(i32*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @e100_exec_cb(%struct.nic*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
