; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64, i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@e1000_82542_rev2_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @e1000_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.e1000_adapter* %10, %struct.e1000_adapter** %6, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  store %struct.e1000_hw* %12, %struct.e1000_hw** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @is_valid_ether_addr(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EADDRNOTAVAIL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_82542_rev2_0, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %31 = call i32 @e1000_enter_82542_rst(%struct.e1000_adapter* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @e1000_rar_set(%struct.e1000_hw* %53, i32 %56, i32 0)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @e1000_82542_rev2_0, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %32
  %64 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %65 = call i32 @e1000_leave_82542_rst(%struct.e1000_adapter* %64)
  br label %66

66:                                               ; preds = %63, %32
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @e1000_enter_82542_rst(%struct.e1000_adapter*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @e1000_rar_set(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_leave_82542_rst(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
