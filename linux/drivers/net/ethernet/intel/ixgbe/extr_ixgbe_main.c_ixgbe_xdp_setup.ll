; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xdp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xdp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.TYPE_2__**, %struct.bpf_prog*, %struct.ixgbe_ring**, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ixgbe_ring = type { %struct.bpf_prog* }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8
@MAX_XDP_QUEUES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@XDP_WAKEUP_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_prog*)* @ixgbe_xdp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_xdp_setup(%struct.net_device* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.bpf_prog*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_ring*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_HLEN, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @ETH_FCS_LEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @VLAN_HLEN, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %22)
  store %struct.ixgbe_adapter* %23, %struct.ixgbe_adapter** %8, align 8
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %186

33:                                               ; preds = %2
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %186

43:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 5
  %53 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %53, i64 %55
  %57 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %56, align 8
  store %struct.ixgbe_ring* %57, %struct.ixgbe_ring** %11, align 8
  %58 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %59 = call i64 @ring_is_rsc_enabled(%struct.ixgbe_ring* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %186

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %67 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %66)
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %186

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %44

76:                                               ; preds = %44
  %77 = load i64, i64* @nr_cpu_ids, align 8
  %78 = load i64, i64* @MAX_XDP_QUEUES, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %186

83:                                               ; preds = %76
  %84 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %85 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %84, i32 0, i32 4
  %86 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %87 = call %struct.bpf_prog* @xchg(%struct.bpf_prog** %85, %struct.bpf_prog* %86)
  store %struct.bpf_prog* %87, %struct.bpf_prog** %9, align 8
  %88 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %89 = icmp ne %struct.bpf_prog* %88, null
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %94 = icmp ne %struct.bpf_prog* %93, null
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = icmp ne i32 %92, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %83
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %105 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ixgbe_setup_tc(%struct.net_device* %103, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %112 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %111, i32 0, i32 4
  %113 = load %struct.bpf_prog*, %struct.bpf_prog** %112, align 8
  %114 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %115 = call i32 @rcu_assign_pointer(%struct.bpf_prog* %113, %struct.bpf_prog* %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %186

118:                                              ; preds = %102
  br label %143

119:                                              ; preds = %83
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %139, %119
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %120
  %127 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %128 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %127, i32 0, i32 5
  %129 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %129, i64 %131
  %133 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %132, align 8
  %134 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %133, i32 0, i32 0
  %135 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %136 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %135, i32 0, i32 4
  %137 = load %struct.bpf_prog*, %struct.bpf_prog** %136, align 8
  %138 = call %struct.bpf_prog* @xchg(%struct.bpf_prog** %134, %struct.bpf_prog* %137)
  br label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %120

142:                                              ; preds = %120
  br label %143

143:                                              ; preds = %142, %118
  %144 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %145 = icmp ne %struct.bpf_prog* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  %148 = call i32 @bpf_prog_put(%struct.bpf_prog* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %149
  %153 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %154 = icmp ne %struct.bpf_prog* %153, null
  br i1 %154, label %155, label %185

155:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %181, %155
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %159 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %156
  %163 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %164 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %163, i32 0, i32 3
  %165 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %165, i64 %167
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %162
  %174 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %175 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @XDP_WAKEUP_RX, align 4
  %179 = call i32 @ixgbe_xsk_wakeup(i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %173, %162
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %156

184:                                              ; preds = %156
  br label %185

185:                                              ; preds = %184, %152, %149
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %110, %80, %69, %61, %40, %30
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ring_is_rsc_enabled(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local %struct.bpf_prog* @xchg(%struct.bpf_prog**, %struct.bpf_prog*) #1

declare dso_local i32 @ixgbe_setup_tc(%struct.net_device*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.bpf_prog*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @ixgbe_xsk_wakeup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
