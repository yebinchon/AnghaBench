; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i32, i64, i32, i64, i64 }
%struct.bcm_sysport_priv = type { i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dim_cq_moder = type { i32, i32 }

@RING_INTR_THRESH_MASK = common dso_local global i64 0, align 8
@RING_TIMEOUT_MASK = common dso_local global i32 0, align 4
@RDMA_INTR_THRESH_MASK = common dso_local global i64 0, align 8
@RDMA_TIMEOUT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @bcm_sysport_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.bcm_sysport_priv*, align 8
  %7 = alloca %struct.dim_cq_moder, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim_cq_moder, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.bcm_sysport_priv* %13, %struct.bcm_sysport_priv** %6, align 8
  %14 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RING_INTR_THRESH_MASK, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %2
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RING_TIMEOUT_MASK, align 4
  %24 = mul nsw i32 %23, 8
  %25 = add nsw i32 %24, 1
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %19
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RDMA_INTR_THRESH_MASK, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RDMA_TIMEOUT_MASK, align 4
  %38 = mul nsw i32 %37, 8
  %39 = add nsw i32 %38, 1
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %27, %19, %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %144

44:                                               ; preds = %33
  %45 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64, %59, %49
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %144

72:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %88, %72
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %81 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %87 = call i32 @bcm_sysport_set_tx_coalesce(i32* %85, %struct.ethtool_coalesce* %86)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %73

91:                                               ; preds = %73
  %92 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %96 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %102 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %104 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %8, align 4
  %106 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %107 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  %109 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %91
  %114 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %115 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %113
  %120 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %121 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @net_dim_get_def_rx_moderation(i32 %124)
  %126 = bitcast %struct.dim_cq_moder* %11 to i64*
  store i64 %125, i64* %126, align 4
  %127 = bitcast %struct.dim_cq_moder* %7 to i8*
  %128 = bitcast %struct.dim_cq_moder* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 %128, i64 8, i1 false)
  %129 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %7, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %8, align 4
  %131 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %7, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %119, %113, %91
  %134 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %138 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i64 %136, i64* %139, align 8
  %140 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @bcm_sysport_set_rx_coalesce(%struct.bcm_sysport_priv* %140, i32 %141, i32 %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %133, %69, %41
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_sysport_set_tx_coalesce(i32*, %struct.ethtool_coalesce*) #1

declare dso_local i64 @net_dim_get_def_rx_moderation(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcm_sysport_set_rx_coalesce(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
