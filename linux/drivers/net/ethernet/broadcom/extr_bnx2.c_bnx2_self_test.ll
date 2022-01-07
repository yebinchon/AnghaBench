; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.bnx2 = type { i64, i32 }

@BNX2_NUM_TESTS = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_DIAG = common dso_local global i32 0, align 4
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @bnx2_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnx2*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bnx2* @netdev_priv(%struct.net_device* %9)
  store %struct.bnx2* %10, %struct.bnx2** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @BNX2_NUM_TESTS, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i32* %11, i32 0, i32 %15)
  %17 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %3
  %24 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %25 = call i32 @bnx2_netif_stop(%struct.bnx2* %24, i32 1)
  %26 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %27 = load i32, i32* @BNX2_DRV_MSG_CODE_DIAG, align 4
  %28 = call i32 @bnx2_reset_chip(%struct.bnx2* %26, i32 %27)
  %29 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %30 = call i32 @bnx2_free_skbs(%struct.bnx2* %29)
  %31 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %32 = call i64 @bnx2_test_registers(%struct.bnx2* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %38 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34, %23
  %43 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %44 = call i64 @bnx2_test_memory(%struct.bnx2* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %50 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %42
  %55 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %56 = call i32 @bnx2_test_loopback(%struct.bnx2* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %56, i32* %58, align 4
  %59 = icmp ne i32 %56, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %62 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %68 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netif_running(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %74 = call i32 @bnx2_shutdown_chip(%struct.bnx2* %73)
  br label %80

75:                                               ; preds = %66
  %76 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %77 = call i32 @bnx2_init_nic(%struct.bnx2* %76, i32 1)
  %78 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %79 = call i32 @bnx2_netif_start(%struct.bnx2* %78, i32 1)
  br label %80

80:                                               ; preds = %75, %72
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %92, %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 7
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %86 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %95

90:                                               ; preds = %84
  %91 = call i32 @msleep_interruptible(i32 1000)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %81

95:                                               ; preds = %89, %81
  br label %96

96:                                               ; preds = %95, %3
  %97 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %98 = call i64 @bnx2_test_nvram(%struct.bnx2* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 1, i32* %102, align 4
  %103 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %104 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %100, %96
  %109 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %110 = call i64 @bnx2_test_intr(%struct.bnx2* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %116 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %117 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %112, %108
  %121 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %122 = call i64 @bnx2_test_link(%struct.bnx2* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 5
  store i32 1, i32* %126, align 4
  %127 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %128 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %124, %120
  ret void
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bnx2_netif_stop(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_reset_chip(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_free_skbs(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_registers(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_memory(%struct.bnx2*) #1

declare dso_local i32 @bnx2_test_loopback(%struct.bnx2*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @bnx2_shutdown_chip(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_nic(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_netif_start(%struct.bnx2*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @bnx2_test_nvram(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_intr(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_link(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
