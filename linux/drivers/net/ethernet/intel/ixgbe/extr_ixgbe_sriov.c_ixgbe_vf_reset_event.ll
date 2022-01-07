; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_reset_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_vf_reset_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.vf_data_storage*, i32, i64, i32, %struct.ixgbe_ring_feature*, %struct.ixgbe_hw }
%struct.vf_data_storage = type { i32, i32, i64, i64, i32, i64 }
%struct.ixgbe_ring_feature = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.1*, i32, i64)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@RING_F_VMDQ = common dso_local global i64 0, align 8
@ixgbe_mbox_api_10 = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i64)* @ixgbe_vf_reset_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_vf_reset_event(%struct.ixgbe_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.ixgbe_ring_feature*, align 8
  %7 = alloca %struct.vf_data_storage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 5
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %5, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 4
  %17 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %16, align 8
  %18 = load i64, i64* @RING_F_VMDQ, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %17, i64 %18
  store %struct.ixgbe_ring_feature* %19, %struct.ixgbe_ring_feature** %6, align 8
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load %struct.vf_data_storage*, %struct.vf_data_storage** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %22, i64 %23
  store %struct.vf_data_storage* %24, %struct.vf_data_storage** %7, align 8
  %25 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = call i64 @__ALIGN_MASK(i32 1, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ixgbe_clear_vf_vlans(%struct.ixgbe_adapter* %33, i64 %34)
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %37 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %38 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %36, i32 1, i32 %39, i64 %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %45 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @ixgbe_set_vmolr(%struct.ixgbe_hw* %42, i64 %43, i32 %49)
  %51 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %52 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %2
  %56 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %57 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @ixgbe_clear_vmvir(%struct.ixgbe_adapter* %64, i64 %65)
  br label %120

67:                                               ; preds = %60, %55, %2
  %68 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %69 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %77 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %78 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %81 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %76, i32 %79, i64 %82, i64 %83)
  br label %95

85:                                               ; preds = %72
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %87 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %88 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter* %86, i32 %89, i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %85, %75
  %96 = load %struct.vf_data_storage*, %struct.vf_data_storage** %7, align 8
  %97 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32 (%struct.ixgbe_hw.1*, i32, i64)*, i32 (%struct.ixgbe_hw.1*, i32, i64)** %104, align 8
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %107 = bitcast %struct.ixgbe_hw* %106 to %struct.ixgbe_hw.1*
  %108 = load i64, i64* %4, align 8
  %109 = call i32 %105(%struct.ixgbe_hw.1* %107, i32 1, i64 %108)
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %111 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.0*, i32, i64)** %113, align 8
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = bitcast %struct.ixgbe_hw* %115 to %struct.ixgbe_hw.0*
  %117 = load i64, i64* %4, align 8
  %118 = call i32 %114(%struct.ixgbe_hw.0* %116, i32 1, i64 %117)
  br label %119

119:                                              ; preds = %100, %95
  br label %120

120:                                              ; preds = %119, %63
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 0
  %123 = load %struct.vf_data_storage*, %struct.vf_data_storage** %122, align 8
  %124 = load i64, i64* %4, align 8
  %125 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %123, i64 %124
  %126 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @ixgbe_ipsec_vf_clear(%struct.ixgbe_adapter* %127, i64 %128)
  %130 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ixgbe_set_rx_mode(i32 %132)
  %134 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %135 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %135, i32 0, i32 0
  %137 = load %struct.vf_data_storage*, %struct.vf_data_storage** %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %137, i64 %138
  %140 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %4, align 8
  %143 = call i32 @ixgbe_del_mac_filter(%struct.ixgbe_adapter* %134, i32 %141, i64 %142)
  %144 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @ixgbe_set_vf_macvlan(%struct.ixgbe_adapter* %144, i64 %145, i32 0, i32* null)
  %147 = load i32, i32* @ixgbe_mbox_api_10, align 4
  %148 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %148, i32 0, i32 0
  %150 = load %struct.vf_data_storage*, %struct.vf_data_storage** %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %150, i64 %151
  %153 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %152, i32 0, i32 0
  store i32 %147, i32* %153, align 8
  store i64 0, i64* %11, align 8
  br label %154

154:                                              ; preds = %190, %120
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* %8, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %193

158:                                              ; preds = %154
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* %8, align 8
  %161 = mul i64 %159, %160
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %161, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %12, align 4
  %165 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @IXGBE_PVFTXDCTL(i32 %166)
  %168 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %165, i32 %167)
  store i64 %168, i64* %10, align 8
  %169 = load i64, i64* %10, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %158
  %172 = load i64, i64* @IXGBE_TXDCTL_ENABLE, align 8
  %173 = load i64, i64* %10, align 8
  %174 = or i64 %173, %172
  store i64 %174, i64* %10, align 8
  %175 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @IXGBE_PVFTXDCTL(i32 %176)
  %178 = load i64, i64* %10, align 8
  %179 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %175, i32 %177, i64 %178)
  %180 = load i64, i64* @IXGBE_TXDCTL_ENABLE, align 8
  %181 = xor i64 %180, -1
  %182 = load i64, i64* %10, align 8
  %183 = and i64 %182, %181
  store i64 %183, i64* %10, align 8
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @IXGBE_PVFTXDCTL(i32 %185)
  %187 = load i64, i64* %10, align 8
  %188 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %184, i32 %186, i64 %187)
  br label %189

189:                                              ; preds = %171, %158
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %11, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %11, align 8
  br label %154

193:                                              ; preds = %154
  %194 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %195 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %194)
  ret void
}

declare dso_local i64 @__ALIGN_MASK(i32, i32) #1

declare dso_local i32 @ixgbe_clear_vf_vlans(%struct.ixgbe_adapter*, i64) #1

declare dso_local i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter*, i32, i32, i64) #1

declare dso_local i32 @ixgbe_set_vmolr(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i32 @ixgbe_clear_vmvir(%struct.ixgbe_adapter*, i64) #1

declare dso_local i32 @ixgbe_set_vmvir(%struct.ixgbe_adapter*, i32, i64, i64) #1

declare dso_local i32 @ixgbe_ipsec_vf_clear(%struct.ixgbe_adapter*, i64) #1

declare dso_local i32 @ixgbe_set_rx_mode(i32) #1

declare dso_local i32 @ixgbe_del_mac_filter(%struct.ixgbe_adapter*, i32, i64) #1

declare dso_local i32 @ixgbe_set_vf_macvlan(%struct.ixgbe_adapter*, i64, i32, i32*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_PVFTXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
