; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_set_slave_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_set_slave_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.sockaddr_storage = type { i32, i32 }
%struct.sockaddr = type { i32 }

@BOND_MODE_TLB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [157 x i8] c"dev_set_mac_address on slave failed! ALB mode requires that the base driver support setting the hw address also when the network device's interface is open\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slave*, i32*, i32)* @alb_set_slave_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alb_set_slave_mac_addr(%struct.slave* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  store %struct.slave* %0, %struct.slave** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.slave*, %struct.slave** %5, align 8
  %11 = getelementptr inbounds %struct.slave, %struct.slave* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.slave*, %struct.slave** %5, align 8
  %14 = getelementptr inbounds %struct.slave, %struct.slave* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i64 @BOND_MODE(%struct.TYPE_2__* %15)
  %17 = load i64, i64* @BOND_MODE_TLB, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy(i32 %22, i32* %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %51

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @memcpy(i32 %28, i32* %29, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %38 = call i64 @dev_set_mac_address(%struct.net_device* %36, %struct.sockaddr* %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.slave*, %struct.slave** %5, align 8
  %42 = getelementptr inbounds %struct.slave, %struct.slave* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call i32 @slave_err(i32 %45, %struct.net_device* %46, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %40, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @BOND_MODE(%struct.TYPE_2__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @dev_set_mac_address(%struct.net_device*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @slave_err(i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
