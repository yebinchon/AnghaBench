; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_stat64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_stat64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_net = type { i32, %struct.nfp_net_r_vector* }
%struct.nfp_net_r_vector = type { i64, i64, i64, i32, i64, i64, i64, i32 }

@NFP_NET_CFG_STATS_RX_MC_FRAMES = common dso_local global i32 0, align 4
@NFP_NET_CFG_STATS_RX_DISCARDS = common dso_local global i32 0, align 4
@NFP_NET_CFG_STATS_RX_ERRORS = common dso_local global i32 0, align 4
@NFP_NET_CFG_STATS_TX_DISCARDS = common dso_local global i32 0, align 4
@NFP_NET_CFG_STATS_TX_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @nfp_net_stat64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_stat64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_net_r_vector*, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %10)
  store %struct.nfp_net* %11, %struct.nfp_net** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %119, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %122

18:                                               ; preds = %12
  %19 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 1
  %21 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %21, i64 %23
  store %struct.nfp_net_r_vector* %24, %struct.nfp_net_r_vector** %7, align 8
  br label %25

25:                                               ; preds = %41, %18
  %26 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %27 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %26, i32 0, i32 7
  %28 = call i32 @u64_stats_fetch_begin(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %30 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %31, i64* %32, align 16
  %33 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %34 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %38 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %39, i64* %40, align 16
  br label %41

41:                                               ; preds = %25
  %42 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %43 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %42, i32 0, i32 7
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @u64_stats_fetch_retry(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %25, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %49 = load i64, i64* %48, align 16
  %50 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %51 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %59 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %65 = load i64, i64* %64, align 16
  %66 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %67 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  br label %72

72:                                               ; preds = %88, %47
  %73 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %74 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %73, i32 0, i32 3
  %75 = call i32 @u64_stats_fetch_begin(i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %77 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %78, i64* %79, align 16
  %80 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %81 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %82, i64* %83, align 8
  %84 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %85 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %86, i64* %87, align 16
  br label %88

88:                                               ; preds = %72
  %89 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %90 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %89, i32 0, i32 3
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @u64_stats_fetch_retry(i32* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %72, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %96 = load i64, i64* %95, align 16
  %97 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %98 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %106 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %112 = load i64, i64* %111, align 16
  %113 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %114 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %119

119:                                              ; preds = %94
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %12

122:                                              ; preds = %12
  %123 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %124 = load i32, i32* @NFP_NET_CFG_STATS_RX_MC_FRAMES, align 4
  %125 = call i64 @nn_readq(%struct.nfp_net* %123, i32 %124)
  %126 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %127 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %133 = load i32, i32* @NFP_NET_CFG_STATS_RX_DISCARDS, align 4
  %134 = call i64 @nn_readq(%struct.nfp_net* %132, i32 %133)
  %135 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %136 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  %141 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %142 = load i32, i32* @NFP_NET_CFG_STATS_RX_ERRORS, align 4
  %143 = call i64 @nn_readq(%struct.nfp_net* %141, i32 %142)
  %144 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %145 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %151 = load i32, i32* @NFP_NET_CFG_STATS_TX_DISCARDS, align 4
  %152 = call i64 @nn_readq(%struct.nfp_net* %150, i32 %151)
  %153 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %154 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %160 = load i32, i32* @NFP_NET_CFG_STATS_TX_ERRORS, align 4
  %161 = call i64 @nn_readq(%struct.nfp_net* %159, i32 %160)
  %162 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %163 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  ret void
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry(i32*, i32) #1

declare dso_local i64 @nn_readq(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
