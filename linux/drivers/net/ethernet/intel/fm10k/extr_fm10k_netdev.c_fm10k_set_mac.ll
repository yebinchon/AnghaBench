; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.fm10k_intfc = type { %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@NET_ADDR_RANDOM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @fm10k_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca %struct.fm10k_hw*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %10)
  store %struct.fm10k_intfc* %11, %struct.fm10k_intfc** %6, align 8
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 0
  store %struct.fm10k_hw* %13, %struct.fm10k_hw** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @is_valid_ether_addr(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %33 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @fm10k_uc_sync(%struct.net_device* %34, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %31
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %44 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fm10k_uc_unsync(%struct.net_device* %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %31
  %49 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %50 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %49)
  br label %51

51:                                               ; preds = %48, %24
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %51
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ether_addr_copy(i32 %57, i32 %60)
  %62 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %63 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %67 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ether_addr_copy(i32 %65, i32 %68)
  %70 = load i32, i32* @NET_ADDR_RANDOM, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %54, %51
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  br label %83

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %79
  %84 = phi i32 [ %81, %79 ], [ 0, %82 ]
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i64 @fm10k_uc_sync(%struct.net_device*, i32) #1

declare dso_local i32 @fm10k_uc_unsync(%struct.net_device*, i32) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
