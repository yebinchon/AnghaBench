; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_register_cnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_register_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cnic_ops = type { i32 }
%struct.bnx2x = type { i32, i32, i32, i8*, i64, i64, i64, i64, i64, i64, %struct.cnic_eth_dev }
%struct.cnic_eth_dev = type { i32, i32, i64 }

@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Register_cnic called\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"NULL ops received\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Can't register CNIC when not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"CNIC-related load failed\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_SP_DESC_CNT = common dso_local global i64 0, align 8
@CNIC_DRV_STATE_REGD = common dso_local global i32 0, align 4
@BNX2X_SP_RTNL_GET_DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cnic_ops*, i8*)* @bnx2x_register_cnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_register_cnic(%struct.net_device* %0, %struct.cnic_ops* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cnic_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.cnic_eth_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.cnic_ops* %1, %struct.cnic_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %11)
  store %struct.bnx2x* %12, %struct.bnx2x** %8, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 10
  store %struct.cnic_eth_dev* %14, %struct.cnic_eth_dev** %9, align 8
  %15 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %16 = call i32 @DP(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cnic_ops*, %struct.cnic_ops** %6, align 8
  %18 = icmp eq %struct.cnic_ops* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %106

23:                                               ; preds = %3
  %24 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %25 = call i32 @CNIC_SUPPORT(%struct.bnx2x* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %106

31:                                               ; preds = %23
  %32 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %33 = call i32 @CNIC_LOADED(%struct.bnx2x* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %37 = call i32 @bnx2x_load_cnic(%struct.bnx2x* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %106

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %31
  %45 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i64 @kzalloc(i32 %47, i32 %48)
  %50 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 6
  store i64 %49, i64* %51, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %106

59:                                               ; preds = %44
  %60 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %61 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %64 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %63, i32 0, i32 9
  store i64 %62, i64* %64, align 8
  %65 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %69 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %68, i32 0, i32 8
  store i64 %67, i64* %69, align 8
  %70 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %71 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MAX_SP_DESC_CNT, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 7
  store i64 %74, i64* %76, align 8
  %77 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %9, align 8
  %85 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @CNIC_DRV_STATE_REGD, align 4
  %87 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %9, align 8
  %88 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %92 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %9, align 8
  %95 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %97 = call i32 @bnx2x_setup_cnic_irq_info(%struct.bnx2x* %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %99 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cnic_ops*, %struct.cnic_ops** %6, align 8
  %102 = call i32 @rcu_assign_pointer(i32 %100, %struct.cnic_ops* %101)
  %103 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %104 = load i32, i32* @BNX2X_SP_RTNL_GET_DRV_VERSION, align 4
  %105 = call i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x* %103, i32 %104, i32 0)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %59, %56, %40, %27, %19
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i32 @CNIC_LOADED(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_load_cnic(%struct.bnx2x*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @bnx2x_setup_cnic_irq_info(%struct.bnx2x*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cnic_ops*) #1

declare dso_local i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
