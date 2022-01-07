; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2 = type { i32, i32, i32, i32, i32, i64 }

@disable_msi = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BNX2_FLAG_USING_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [152 x i8] c"No interrupt was generated using MSI, switching to INTx mode. Please report this failure to the PCI maintainer and include system chipset information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"using MSI\0A\00", align 1
@BNX2_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"using MSIX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnx2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bnx2* @netdev_priv(%struct.net_device* %5)
  store %struct.bnx2* %6, %struct.bnx2** %3, align 8
  %7 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %8 = call i32 @bnx2_request_firmware(%struct.bnx2* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %126

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_carrier_off(%struct.net_device* %13)
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = call i32 @bnx2_disable_int(%struct.bnx2* %15)
  %17 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %18 = load i32, i32* @disable_msi, align 4
  %19 = call i32 @bnx2_setup_int_mode(%struct.bnx2* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %128

23:                                               ; preds = %12
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = call i32 @bnx2_init_napi(%struct.bnx2* %24)
  %26 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %27 = call i32 @bnx2_napi_enable(%struct.bnx2* %26)
  %28 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %29 = call i32 @bnx2_alloc_mem(%struct.bnx2* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %128

33:                                               ; preds = %23
  %34 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %35 = call i32 @bnx2_request_irq(%struct.bnx2* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %128

39:                                               ; preds = %33
  %40 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %41 = call i32 @bnx2_init_nic(%struct.bnx2* %40, i32 1)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %128

45:                                               ; preds = %39
  %46 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 1
  %48 = load i64, i64* @jiffies, align 8
  %49 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = call i32 @mod_timer(i32* %47, i64 %52)
  %54 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 4
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %58 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %62 = call i32 @bnx2_enable_int(%struct.bnx2* %61)
  %63 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %64 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BNX2_FLAG_USING_MSI, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %45
  %70 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %71 = call i64 @bnx2_test_intr(%struct.bnx2* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %69
  %74 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %75 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @netdev_warn(i32 %76, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %79 = call i32 @bnx2_disable_int(%struct.bnx2* %78)
  %80 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %81 = call i32 @bnx2_free_irq(%struct.bnx2* %80)
  %82 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %83 = call i32 @bnx2_setup_int_mode(%struct.bnx2* %82, i32 1)
  %84 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %85 = call i32 @bnx2_init_nic(%struct.bnx2* %84, i32 0)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %73
  %89 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %90 = call i32 @bnx2_request_irq(%struct.bnx2* %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %73
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %96 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %95, i32 0, i32 1
  %97 = call i32 @del_timer_sync(i32* %96)
  br label %128

98:                                               ; preds = %91
  %99 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %100 = call i32 @bnx2_enable_int(%struct.bnx2* %99)
  br label %101

101:                                              ; preds = %98, %69
  br label %102

102:                                              ; preds = %101, %45
  %103 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %104 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @BNX2_FLAG_USING_MSI, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = call i32 @netdev_info(%struct.net_device* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %123

112:                                              ; preds = %102
  %113 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %114 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BNX2_FLAG_USING_MSIX, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = call i32 @netdev_info(%struct.net_device* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %112
  br label %123

123:                                              ; preds = %122, %109
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = call i32 @netif_tx_start_all_queues(%struct.net_device* %124)
  br label %126

126:                                              ; preds = %128, %123, %11
  %127 = load i32, i32* %4, align 4
  ret i32 %127

128:                                              ; preds = %94, %44, %38, %32, %22
  %129 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %130 = call i32 @bnx2_napi_disable(%struct.bnx2* %129)
  %131 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %132 = call i32 @bnx2_free_skbs(%struct.bnx2* %131)
  %133 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %134 = call i32 @bnx2_free_irq(%struct.bnx2* %133)
  %135 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %136 = call i32 @bnx2_free_mem(%struct.bnx2* %135)
  %137 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %138 = call i32 @bnx2_del_napi(%struct.bnx2* %137)
  %139 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %140 = call i32 @bnx2_release_firmware(%struct.bnx2* %139)
  br label %126
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2_request_firmware(%struct.bnx2*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @bnx2_disable_int(%struct.bnx2*) #1

declare dso_local i32 @bnx2_setup_int_mode(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_init_napi(%struct.bnx2*) #1

declare dso_local i32 @bnx2_napi_enable(%struct.bnx2*) #1

declare dso_local i32 @bnx2_alloc_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_request_irq(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_nic(%struct.bnx2*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @bnx2_enable_int(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_intr(%struct.bnx2*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @bnx2_free_irq(%struct.bnx2*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @bnx2_napi_disable(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_skbs(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_del_napi(%struct.bnx2*) #1

declare dso_local i32 @bnx2_release_firmware(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
