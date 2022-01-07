; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_ethtool_gregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_ethtool_gregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32, i32 }
%struct.s2io_nic = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XENA_REG_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @s2io_ethtool_gregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_ethtool_gregs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.s2io_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %13)
  store %struct.s2io_nic* %14, %struct.s2io_nic** %10, align 8
  %15 = load i32, i32* @XENA_REG_SPACE, align 4
  %16 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.s2io_nic*, %struct.s2io_nic** %10, align 8
  %19 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %44, %3
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.s2io_nic*, %struct.s2io_nic** %10, align 8
  %33 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @readq(i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @memcpy(i32* %42, i32* %8, i32 8)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 8
  store i32 %46, i32* %7, align 4
  br label %25

47:                                               ; preds = %25
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
