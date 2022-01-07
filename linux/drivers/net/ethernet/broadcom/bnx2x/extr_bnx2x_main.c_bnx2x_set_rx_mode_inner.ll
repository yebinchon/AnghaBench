; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_rx_mode_inner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_rx_mode_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BNX2X_RX_MODE_NORMAL = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dev->flags = %x\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@BNX2X_RX_MODE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BNX2X_MAX_MULTICAST = common dso_local global i64 0, align 8
@BNX2X_RX_MODE_ALLMULTI = common dso_local global i32 0, align 4
@BNX2X_SP_RTNL_VFPF_MCAST = common dso_local global i32 0, align 4
@BNX2X_RX_MODE_NONE = common dso_local global i32 0, align 4
@BNX2X_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@BNX2X_FILTER_RX_MODE_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_rx_mode_inner(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load i32, i32* @BNX2X_RX_MODE_NORMAL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DP(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @netif_addr_lock_bh(%struct.TYPE_4__* %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @BNX2X_RX_MODE_PROMISC, align 4
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %1
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %26
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i64 @netdev_mc_count(%struct.TYPE_4__* %38)
  %40 = load i64, i64* @BNX2X_MAX_MULTICAST, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %44 = call i64 @CHIP_IS_E1(%struct.bnx2x* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %26
  %47 = load i32, i32* @BNX2X_RX_MODE_ALLMULTI, align 4
  store i32 %47, i32* %3, align 4
  br label %78

48:                                               ; preds = %42, %35
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = call i64 @IS_PF(%struct.bnx2x* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = call i64 @bnx2x_set_mc_list(%struct.bnx2x* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @BNX2X_RX_MODE_ALLMULTI, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @netif_addr_unlock_bh(%struct.TYPE_4__* %61)
  %63 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %64 = call i64 @bnx2x_set_uc_list(%struct.bnx2x* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @BNX2X_RX_MODE_PROMISC, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %58
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @netif_addr_lock_bh(%struct.TYPE_4__* %71)
  br label %77

73:                                               ; preds = %48
  %74 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %75 = load i32, i32* @BNX2X_SP_RTNL_VFPF_MCAST, align 4
  %76 = call i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %46
  br label %79

79:                                               ; preds = %78, %24
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %84 = call i64 @IS_MF_ISCSI_ONLY(%struct.bnx2x* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @BNX2X_RX_MODE_NONE, align 4
  %88 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %89 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %92 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 1
  %94 = call i64 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i32, i32* @BNX2X_FILTER_RX_MODE_SCHED, align 4
  %98 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %99 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %98, i32 0, i32 1
  %100 = call i32 @set_bit(i32 %97, i32* %99)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = call i32 @netif_addr_unlock_bh(%struct.TYPE_4__* %103)
  br label %123

105:                                              ; preds = %90
  %106 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %107 = call i64 @IS_PF(%struct.bnx2x* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %111 = call i32 @bnx2x_set_storm_rx_mode(%struct.bnx2x* %110)
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = call i32 @netif_addr_unlock_bh(%struct.TYPE_4__* %114)
  br label %123

116:                                              ; preds = %105
  %117 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = call i32 @netif_addr_unlock_bh(%struct.TYPE_4__* %119)
  %121 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %122 = call i32 @bnx2x_vfpf_storm_rx_mode(%struct.bnx2x* %121)
  br label %123

123:                                              ; preds = %96, %116, %109
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.TYPE_4__*) #1

declare dso_local i64 @netdev_mc_count(%struct.TYPE_4__*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_set_mc_list(%struct.bnx2x*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.TYPE_4__*) #1

declare dso_local i64 @bnx2x_set_uc_list(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @IS_MF_ISCSI_ONLY(%struct.bnx2x*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_set_storm_rx_mode(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vfpf_storm_rx_mode(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
