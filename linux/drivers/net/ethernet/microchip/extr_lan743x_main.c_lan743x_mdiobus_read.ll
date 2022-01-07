; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mdiobus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mdiobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.lan743x_adapter* }
%struct.lan743x_adapter = type { i32 }

@MAC_MII_READ = common dso_local global i32 0, align 4
@MAC_MII_ACC = common dso_local global i32 0, align 4
@MAC_MII_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @lan743x_mdiobus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_mdiobus_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan743x_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %13, align 8
  store %struct.lan743x_adapter* %14, %struct.lan743x_adapter** %8, align 8
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %16 = call i32 @lan743x_mac_mii_wait_till_not_busy(%struct.lan743x_adapter* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAC_MII_READ, align 4
  %25 = call i32 @lan743x_mac_mii_access(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %27 = load i32, i32* @MAC_MII_ACC, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %26, i32 %27, i32 %28)
  %30 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %31 = call i32 @lan743x_mac_mii_wait_till_not_busy(%struct.lan743x_adapter* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %38 = load i32, i32* @MAC_MII_DATA, align 4
  %39 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 65535
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %34, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @lan743x_mac_mii_wait_till_not_busy(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_mac_mii_access(i32, i32, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
