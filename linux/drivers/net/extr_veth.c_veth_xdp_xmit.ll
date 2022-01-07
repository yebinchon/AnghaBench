; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.xdp_frame = type { i32 }
%struct.veth_priv = type { i32, %struct.veth_rq*, i32 }
%struct.veth_rq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* @veth_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.veth_priv*, align 8
  %11 = alloca %struct.veth_priv*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.veth_rq*, align 8
  %18 = alloca %struct.xdp_frame*, align 8
  %19 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %20)
  store %struct.veth_priv* %21, %struct.veth_priv** %11, align 8
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  br label %139

32:                                               ; preds = %4
  %33 = load %struct.veth_priv*, %struct.veth_priv** %11, align 8
  %34 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.net_device* @rcu_dereference(i32 %35)
  store %struct.net_device* %36, %struct.net_device** %12, align 8
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = icmp ne %struct.net_device* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %139

46:                                               ; preds = %32
  %47 = load %struct.net_device*, %struct.net_device** %12, align 8
  %48 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %47)
  store %struct.veth_priv* %48, %struct.veth_priv** %10, align 8
  %49 = load %struct.veth_priv*, %struct.veth_priv** %10, align 8
  %50 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %49, i32 0, i32 1
  %51 = load %struct.veth_rq*, %struct.veth_rq** %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %12, align 8
  %53 = call i64 @veth_select_rxq(%struct.net_device* %52)
  %54 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %51, i64 %53
  store %struct.veth_rq* %54, %struct.veth_rq** %17, align 8
  %55 = load %struct.veth_rq*, %struct.veth_rq** %17, align 8
  %56 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rcu_access_pointer(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %139

63:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  %64 = load %struct.net_device*, %struct.net_device** %12, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %12, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %66, %69
  %71 = load i32, i32* @VLAN_HLEN, align 4
  %72 = add i32 %70, %71
  store i32 %72, i32* %16, align 4
  %73 = load %struct.veth_rq*, %struct.veth_rq** %17, align 8
  %74 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %111, %63
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %77
  %82 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %82, i64 %84
  %86 = load %struct.xdp_frame*, %struct.xdp_frame** %85, align 8
  store %struct.xdp_frame* %86, %struct.xdp_frame** %18, align 8
  %87 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %88 = call i8* @veth_xdp_to_ptr(%struct.xdp_frame* %87)
  store i8* %88, i8** %19, align 8
  %89 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %90 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %81
  %95 = load %struct.veth_rq*, %struct.veth_rq** %17, align 8
  %96 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %95, i32 0, i32 0
  %97 = load i8*, i8** %19, align 8
  %98 = call i64 @__ptr_ring_produce(%struct.TYPE_2__* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %94, %81
  %101 = phi i1 [ true, %81 ], [ %99, %94 ]
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %107 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %106)
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %77

114:                                              ; preds = %77
  %115 = load %struct.veth_rq*, %struct.veth_rq** %17, align 8
  %116 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct.veth_rq*, %struct.veth_rq** %17, align 8
  %125 = call i32 @__veth_xdp_flush(%struct.veth_rq* %124)
  br label %126

126:                                              ; preds = %123, %114
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i64 @likely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %5, align 4
  br label %145

135:                                              ; preds = %126
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %15, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %135, %60, %43, %29
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.veth_priv*, %struct.veth_priv** %11, align 8
  %142 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %141, i32 0, i32 0
  %143 = call i32 @atomic64_add(i32 %140, i32* %142)
  %144 = load i32, i32* %14, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @veth_select_rxq(%struct.net_device*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @veth_xdp_to_ptr(%struct.xdp_frame*) #1

declare dso_local i64 @__ptr_ring_produce(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__veth_xdp_flush(%struct.veth_rq*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
