; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_send_attr_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_send_attr_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vnet_port = type { i32, i64, i64 }
%struct.net_device = type { i64* }
%struct.vio_net_attr_info = type { i32, i32, i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@VIO_TYPE_CTRL = common dso_local global i32 0, align 4
@VIO_SUBTYPE_INFO = common dso_local global i32 0, align 4
@VIO_ATTR_INFO = common dso_local global i32 0, align 4
@VIO_DRING_MODE = common dso_local global i32 0, align 4
@VIO_NEW_DRING_MODE = common dso_local global i32 0, align 4
@VNET_ADDR_ETHERMAC = common dso_local global i32 0, align 4
@VNET_MAXPACKET = common dso_local global i32 0, align 4
@VIO_TX_DRING = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@VNET_LSO_IPV4_CAPAB = common dso_local global i32 0, align 4
@VNET_MAXTSO = common dso_local global i64 0, align 8
@PHYSLINK_UPDATE_NONE = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [130 x i8] c"SEND NET ATTR xmode[0x%x] atype[0x%x] addr[%llx] ackfreq[%u] plnk_updt[0x%02x] opts[0x%02x] mtu[%llu] cflags[0x%04x] lso_max[%u]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunvnet_send_attr_common(%struct.vio_driver_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vio_driver_state*, align 8
  %4 = alloca %struct.vnet_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vio_net_attr_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %3, align 8
  %10 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %11 = call %struct.vnet_port* @to_vnet_port(%struct.vio_driver_state* %10)
  store %struct.vnet_port* %11, %struct.vnet_port** %4, align 8
  %12 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %13 = call %struct.net_device* @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port* %12)
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load i32, i32* @ETH_FRAME_LEN, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %16 = call %struct.vnet_port* @to_vnet_port(%struct.vio_driver_state* %15)
  %17 = call i32 @vnet_port_alloc_tx_ring(%struct.vnet_port* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %2, align 4
  br label %177

22:                                               ; preds = %1
  %23 = call i32 @memset(%struct.vio_net_attr_info* %6, i32 0, i32 64)
  %24 = load i32, i32* @VIO_TYPE_CTRL, align 4
  %25 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @VIO_SUBTYPE_INFO, align 4
  %28 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @VIO_ATTR_INFO, align 4
  %31 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %34 = call i32 @vio_send_sid(%struct.vio_driver_state* %33)
  %35 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %38 = call i64 @vio_version_before(%struct.vio_driver_state* %37, i32 1, i32 2)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i32, i32* @VIO_DRING_MODE, align 4
  %42 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %22
  %44 = load i32, i32* @VIO_NEW_DRING_MODE, align 4
  %45 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @VNET_ADDR_ETHERMAC, align 4
  %48 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 7
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 6
  store i64 0, i64* %49, align 8
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %69, %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 5, %62
  %64 = mul nsw i32 %63, 8
  %65 = shl i32 %61, %64
  %66 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %74 = call i64 @vio_version_after(%struct.vio_driver_state* %73, i32 1, i32 3)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %72
  %77 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %78 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32, i32* @VNET_MAXPACKET, align 4
  %83 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %84 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @min(i32 %82, i32 %85)
  %87 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %88 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %90 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  br label %101

93:                                               ; preds = %76
  %94 = load i32, i32* @VNET_MAXPACKET, align 4
  %95 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %96 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %98 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %81
  %102 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %103 = call i64 @vio_version_after_eq(%struct.vio_driver_state* %102, i32 1, i32 6)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @VIO_TX_DRING, align 4
  %107 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 4
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %101
  br label %122

109:                                              ; preds = %72
  %110 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %111 = call i64 @vio_version_before(%struct.vio_driver_state* %110, i32 1, i32 3)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  br label %121

116:                                              ; preds = %109
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @VLAN_HLEN, align 4
  %119 = add nsw i32 %117, %118
  %120 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %113
  br label %122

122:                                              ; preds = %121, %108
  %123 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 3
  store i32 0, i32* %123, align 8
  %124 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %125 = call i64 @vio_version_after_eq(%struct.vio_driver_state* %124, i32 1, i32 7)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %129 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = load i32, i32* @VNET_LSO_IPV4_CAPAB, align 4
  %134 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 8
  %137 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %138 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %132
  %142 = load i64, i64* @VNET_MAXTSO, align 8
  %143 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %144 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %132
  %146 = load %struct.vnet_port*, %struct.vnet_port** %4, align 8
  %147 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 2
  store i64 %148, i64* %149, align 8
  br label %150

150:                                              ; preds = %145, %127, %122
  %151 = load i32, i32* @PHYSLINK_UPDATE_NONE, align 4
  %152 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 5
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* @HS, align 4
  %154 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %6, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @viodbg(i32 %153, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0), i32 %155, i32 %157, i64 %160, i64 %162, i32 %164, i32 %166, i64 %169, i32 %171, i64 %173)
  %175 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %176 = call i32 @vio_ldc_send(%struct.vio_driver_state* %175, %struct.vio_net_attr_info* %6, i32 64)
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %150, %20
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.vnet_port* @to_vnet_port(%struct.vio_driver_state*) #1

declare dso_local %struct.net_device* @VNET_PORT_TO_NET_DEVICE(%struct.vnet_port*) #1

declare dso_local i32 @vnet_port_alloc_tx_ring(%struct.vnet_port*) #1

declare dso_local i32 @memset(%struct.vio_net_attr_info*, i32, i32) #1

declare dso_local i32 @vio_send_sid(%struct.vio_driver_state*) #1

declare dso_local i64 @vio_version_before(%struct.vio_driver_state*, i32, i32) #1

declare dso_local i64 @vio_version_after(%struct.vio_driver_state*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @vio_version_after_eq(%struct.vio_driver_state*, i32, i32) #1

declare dso_local i32 @viodbg(i32, i8*, i32, i32, i64, i64, i32, i32, i64, i32, i64) #1

declare dso_local i32 @vio_ldc_send(%struct.vio_driver_state*, %struct.vio_net_attr_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
