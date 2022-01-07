; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_ipsec_del_sa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_ipsec_del_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { %struct.ixgbevf_ipsec* }
%struct.ixgbevf_ipsec = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@XFRM_OFFLOAD_INBOUND = common dso_local global i32 0, align 4
@IXGBE_IPSEC_BASE_RX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Invalid Rx SA selected sa_idx=%d offload_handle=%lu\0A\00", align 1
@IXGBE_IPSEC_BASE_TX_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid Tx SA selected sa_idx=%d offload_handle=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @ixgbevf_ipsec_del_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_ipsec_del_sa(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbevf_ipsec*, align 8
  %6 = alloca i64, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbevf_adapter* %12, %struct.ixgbevf_adapter** %4, align 8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 0
  %15 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %14, align 8
  store %struct.ixgbevf_ipsec* %15, %struct.ixgbevf_ipsec** %5, align 8
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @XFRM_OFFLOAD_INBOUND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %1
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IXGBE_IPSEC_BASE_RX_INDEX, align 8
  %29 = sub i64 %27, %28
  store i64 %29, i64* %6, align 8
  %30 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %44)
  br label %116

46:                                               ; preds = %23
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %48 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ixgbevf_ipsec_del_pf_sa(%struct.ixgbevf_adapter* %47, i32 %54)
  %56 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %57 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = call i32 @hash_del_rcu(i32* %61)
  %63 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %64 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = call i32 @memset(%struct.TYPE_4__* %67, i32 0, i32 4)
  %69 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  br label %116

73:                                               ; preds = %1
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %75 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IXGBE_IPSEC_BASE_TX_INDEX, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %6, align 8
  %80 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %81 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %73
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %92 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @netdev_err(%struct.net_device* %89, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %90, i64 %94)
  br label %116

96:                                               ; preds = %73
  %97 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %98 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %99 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ixgbevf_ipsec_del_pf_sa(%struct.ixgbevf_adapter* %97, i32 %104)
  %106 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %107 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = call i32 @memset(%struct.TYPE_4__* %110, i32 0, i32 4)
  %112 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  %113 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %38, %88, %96, %46
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64, i64) #1

declare dso_local i32 @ixgbevf_ipsec_del_pf_sa(%struct.ixgbevf_adapter*, i32) #1

declare dso_local i32 @hash_del_rcu(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
