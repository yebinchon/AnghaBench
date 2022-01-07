; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_change_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_change_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Requested MAC address is not valid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Can't change address on STORAGE ONLY function\0A\00", align 1
@curr_cfg = common dso_local global i32 0, align 4
@CURR_CFG_MET_OS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_change_mac_addr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sockaddr*
  store %struct.sockaddr* %10, %struct.sockaddr** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %11)
  store %struct.bnx2x* %12, %struct.bnx2x** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_valid_ether_addr(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %24 = call i64 @IS_MF_STORAGE_ONLY(%struct.bnx2x* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %75

30:                                               ; preds = %22
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i64 @netif_running(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %36 = call i32 @bnx2x_set_eth_mac(%struct.bnx2x* %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %45, i32 %48, i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i64 @netif_running(%struct.net_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %58 = call i32 @bnx2x_set_eth_mac(%struct.bnx2x* %57, i32 1)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %42
  %60 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %61 = call i64 @IS_PF(%struct.bnx2x* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %65 = load i32, i32* @curr_cfg, align 4
  %66 = call i64 @SHMEM2_HAS(%struct.bnx2x* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %70 = load i32, i32* @curr_cfg, align 4
  %71 = load i32, i32* @CURR_CFG_MET_OS, align 4
  %72 = call i32 @SHMEM2_WR(%struct.bnx2x* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %63, %59
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %39, %26, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i64 @IS_MF_STORAGE_ONLY(%struct.bnx2x*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_set_eth_mac(%struct.bnx2x*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i32 @SHMEM2_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
