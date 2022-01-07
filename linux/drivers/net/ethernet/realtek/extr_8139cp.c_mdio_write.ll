; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cp_private = type { i32 }

@Cfg9346 = common dso_local global i32 0, align 4
@Cfg9346_Unlock = common dso_local global i32 0, align 4
@BasicModeCtrl = common dso_local global i64 0, align 8
@Cfg9346_Lock = common dso_local global i32 0, align 4
@mii_2_8139_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cp_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.cp_private* @netdev_priv(%struct.net_device* %10)
  store %struct.cp_private* %11, %struct.cp_private** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32, i32* @Cfg9346, align 4
  %16 = load i32, i32* @Cfg9346_Unlock, align 4
  %17 = call i32 @cpw8(i32 %15, i32 %16)
  %18 = load i64, i64* @BasicModeCtrl, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @cpw16(i64 %18, i32 %19)
  %21 = load i32, i32* @Cfg9346, align 4
  %22 = load i32, i32* @Cfg9346_Lock, align 4
  %23 = call i32 @cpw8(i32 %21, i32 %22)
  br label %43

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i64*, i64** @mii_2_8139_map, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i64*, i64** @mii_2_8139_map, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @cpw16(i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %27, %24
  br label %43

43:                                               ; preds = %42, %14
  ret void
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpw8(i32, i32) #1

declare dso_local i32 @cpw16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
