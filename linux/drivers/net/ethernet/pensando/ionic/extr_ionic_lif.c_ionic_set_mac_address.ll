; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.sockaddr = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"deleting mac addr %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"updating mac addr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ionic_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %6, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @ether_addr_equal(i32* %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = call i32 @eth_prepare_mac_addr_change(%struct.net_device* %23, %struct.sockaddr* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %22
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @is_zero_ether_addr(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ionic_addr_del(%struct.net_device* %42, i32* %45)
  br label %47

47:                                               ; preds = %36, %30
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %50 = call i32 @eth_commit_mac_addr_change(%struct.net_device* %48, %struct.sockaddr* %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @netdev_info(%struct.net_device* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @ionic_addr_add(%struct.net_device* %54, i32* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %28, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @eth_prepare_mac_addr_change(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32*) #1

declare dso_local i32 @ionic_addr_del(%struct.net_device*, i32*) #1

declare dso_local i32 @eth_commit_mac_addr_change(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i32 @ionic_addr_add(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
