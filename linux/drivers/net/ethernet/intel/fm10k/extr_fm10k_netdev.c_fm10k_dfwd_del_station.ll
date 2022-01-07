; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_dfwd_del_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_dfwd_del_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i32, %struct.TYPE_4__*, %struct.fm10k_hw, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fm10k_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)*, i32 (%struct.fm10k_hw.1*, i64, i32)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_dglort_cfg = type opaque
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_l2_accel = type { i32, i64, i64, %struct.net_device** }
%struct.fm10k_dglort_cfg.2 = type { i32, i8*, i32, i8*, i8*, i32, i32 }

@FM10K_XCAST_MODE_NONE = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@fm10k_dglort_pf_rss = common dso_local global i32 0, align 4
@RING_F_RSS = common dso_local global i64 0, align 8
@RING_F_QOS = common dso_local global i64 0, align 8
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @fm10k_dfwd_del_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_dfwd_del_station(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fm10k_intfc*, align 8
  %6 = alloca %struct.fm10k_l2_accel*, align 8
  %7 = alloca %struct.fm10k_dglort_cfg.2, align 8
  %8 = alloca %struct.fm10k_hw*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %13)
  store %struct.fm10k_intfc* %14, %struct.fm10k_intfc** %5, align 8
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.fm10k_l2_accel* @READ_ONCE(i32 %17)
  store %struct.fm10k_l2_accel* %18, %struct.fm10k_l2_accel** %6, align 8
  %19 = bitcast %struct.fm10k_dglort_cfg.2* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 48, i1 false)
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 2
  store %struct.fm10k_hw* %21, %struct.fm10k_hw** %8, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to %struct.net_device*
  store %struct.net_device* %23, %struct.net_device** %9, align 8
  %24 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %25 = icmp ne %struct.fm10k_l2_accel* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %171

27:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %31 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %36 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %35, i32 0, i32 3
  %37 = load %struct.net_device**, %struct.net_device*** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.net_device*, %struct.net_device** %37, i64 %39
  %41 = load %struct.net_device*, %struct.net_device** %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = icmp eq %struct.net_device* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %49

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %28

49:                                               ; preds = %44, %28
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %52 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %171

56:                                               ; preds = %49
  %57 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %58 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %57)
  %59 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %60 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  store i64 %65, i64* %11, align 8
  %66 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %67 = call i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %56
  %70 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %71 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32 (%struct.fm10k_hw.1*, i64, i32)*, i32 (%struct.fm10k_hw.1*, i64, i32)** %73, align 8
  %75 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %76 = bitcast %struct.fm10k_hw* %75 to %struct.fm10k_hw.1*
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* @FM10K_XCAST_MODE_NONE, align 4
  %79 = call i32 %74(%struct.fm10k_hw.1* %76, i64 %77, i32 %78)
  br label %80

80:                                               ; preds = %69, %56
  %81 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.net_device*, %struct.net_device** %9, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %87 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %81, i64 %82, i32 %85, i64 %89, i32 0)
  %91 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %92 = call i64 @fm10k_find_next_vlan(%struct.fm10k_intfc* %91, i64 0)
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %105, %80
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @VLAN_N_VID, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.net_device*, %struct.net_device** %9, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %98, i64 %99, i32 %102, i64 %103, i32 0)
  br label %105

105:                                              ; preds = %97
  %106 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @fm10k_find_next_vlan(%struct.fm10k_intfc* %106, i64 %107)
  store i64 %108, i64* %10, align 8
  br label %93

109:                                              ; preds = %93
  %110 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %111 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %110)
  %112 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %113 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %112, i32 0, i32 3
  %114 = load %struct.net_device**, %struct.net_device*** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.net_device*, %struct.net_device** %114, i64 %116
  store %struct.net_device* null, %struct.net_device** %117, align 8
  %118 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %119 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %119, align 8
  %122 = load i32, i32* @fm10k_dglort_pf_rss, align 4
  %123 = getelementptr inbounds %struct.fm10k_dglort_cfg.2, %struct.fm10k_dglort_cfg.2* %7, i32 0, i32 5
  store i32 %122, i32* %123, align 8
  %124 = getelementptr inbounds %struct.fm10k_dglort_cfg.2, %struct.fm10k_dglort_cfg.2* %7, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %126 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* @RING_F_RSS, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @fls(i32 %131)
  %133 = getelementptr inbounds %struct.fm10k_dglort_cfg.2, %struct.fm10k_dglort_cfg.2* %7, i32 0, i32 4
  store i8* %132, i8** %133, align 8
  %134 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %135 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i64, i64* @RING_F_QOS, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @fls(i32 %140)
  %142 = getelementptr inbounds %struct.fm10k_dglort_cfg.2, %struct.fm10k_dglort_cfg.2* %7, i32 0, i32 3
  store i8* %141, i8** %142, align 8
  %143 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %144 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.fm10k_dglort_cfg.2, %struct.fm10k_dglort_cfg.2* %7, i32 0, i32 2
  store i32 %145, i32* %146, align 8
  %147 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %148 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @fls(i32 %149)
  %151 = getelementptr inbounds %struct.fm10k_dglort_cfg.2, %struct.fm10k_dglort_cfg.2* %7, i32 0, i32 1
  store i8* %150, i8** %151, align 8
  %152 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %153 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_dglort_cfg*)** %155, align 8
  %157 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %158 = bitcast %struct.fm10k_hw* %157 to %struct.fm10k_hw.0*
  %159 = bitcast %struct.fm10k_dglort_cfg.2* %7 to %struct.fm10k_dglort_cfg*
  %160 = call i32 %156(%struct.fm10k_hw.0* %158, %struct.fm10k_dglort_cfg* %159)
  %161 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %162 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %109
  %166 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %5, align 8
  %167 = call i32 @fm10k_assign_l2_accel(%struct.fm10k_intfc* %166, i32* null)
  %168 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %6, align 8
  %169 = load i32, i32* @rcu, align 4
  %170 = call i32 @kfree_rcu(%struct.fm10k_l2_accel* %168, i32 %169)
  br label %171

171:                                              ; preds = %26, %55, %165, %109
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.fm10k_l2_accel* @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_queue_mac_request(%struct.fm10k_intfc*, i64, i32, i64, i32) #1

declare dso_local i64 @fm10k_find_next_vlan(%struct.fm10k_intfc*, i64) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

declare dso_local i8* @fls(i32) #1

declare dso_local i32 @fm10k_assign_l2_accel(%struct.fm10k_intfc*, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.fm10k_l2_accel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
