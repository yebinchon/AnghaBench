; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.nicvf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @nicvf_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.nicvf*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.nicvf* @netdev_priv(%struct.net_device* %10)
  store %struct.nicvf* %11, %struct.nicvf** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_valid_ether_addr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EADDRNOTAVAIL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %20
  %38 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i64 @nicvf_hw_set_mac_addr(%struct.nicvf* %38, %struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %37
  br label %49

46:                                               ; preds = %20
  %47 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %48 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %45
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %42, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @nicvf_hw_set_mac_addr(%struct.nicvf*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
