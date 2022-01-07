; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Setting MAC address to %pM\0A\00", align 1
@PP_IA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %6, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @is_valid_ether_addr(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EADDRNOTAVAIL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @memcpy(i32* %21, i32 %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @netdev_info(%struct.net_device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %64, %18
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = sdiv i32 %34, 2
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i64, i64* @PP_IA, align 8
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 2
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %51, %61
  %63 = call i32 @writereg(%struct.net_device* %38, i64 %43, i32 %62)
  br label %64

64:                                               ; preds = %37
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %32

67:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32*) #1

declare dso_local i32 @writereg(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
