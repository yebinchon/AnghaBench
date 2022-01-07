; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_set_intr_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_set_intr_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netxen_adapter = type { i64, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETXEN_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@NETXEN_NIC_INTR_DEFAULT = common dso_local global i64 0, align 8
@NETXEN_DEFAULT_INTR_COALESCE_RX_TIME_US = common dso_local global i32 0, align 4
@NETXEN_DEFAULT_INTR_COALESCE_RX_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @netxen_set_intr_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_set_intr_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.netxen_adapter* %8, %struct.netxen_adapter** %6, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @NX_IS_REVISION_P3(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %201

18:                                               ; preds = %2
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NETXEN_ADAPTER_UP_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %201

27:                                               ; preds = %18
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 65535
  br i1 %31, label %132, label %32

32:                                               ; preds = %27
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 65535
  br i1 %36, label %132, label %37

37:                                               ; preds = %32
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 65535
  br i1 %41, label %132, label %42

42:                                               ; preds = %37
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 65535
  br i1 %46, label %132, label %47

47:                                               ; preds = %42
  %48 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %48, i32 0, i32 20
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %132, label %52

52:                                               ; preds = %47
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 19
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %132, label %57

57:                                               ; preds = %52
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 18
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %132, label %62

62:                                               ; preds = %57
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 17
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %132, label %67

67:                                               ; preds = %62
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 16
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %132, label %72

72:                                               ; preds = %67
  %73 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %73, i32 0, i32 15
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %132, label %77

77:                                               ; preds = %72
  %78 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %78, i32 0, i32 14
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %132, label %82

82:                                               ; preds = %77
  %83 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %83, i32 0, i32 13
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %132, label %87

87:                                               ; preds = %82
  %88 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %88, i32 0, i32 12
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %132, label %92

92:                                               ; preds = %87
  %93 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %93, i32 0, i32 11
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %132, label %97

97:                                               ; preds = %92
  %98 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %98, i32 0, i32 10
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %132, label %102

102:                                              ; preds = %97
  %103 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %132, label %107

107:                                              ; preds = %102
  %108 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %107
  %113 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %112
  %118 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %124 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %122, %117, %112, %107, %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %201

135:                                              ; preds = %127
  %136 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %142 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %162, label %145

145:                                              ; preds = %140, %135
  %146 = load i64, i64* @NETXEN_NIC_INTR_DEFAULT, align 8
  %147 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %148 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i64 %146, i64* %149, align 8
  %150 = load i32, i32* @NETXEN_DEFAULT_INTR_COALESCE_RX_TIME_US, align 4
  %151 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %152 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 %150, i32* %155, align 8
  %156 = load i32, i32* @NETXEN_DEFAULT_INTR_COALESCE_RX_PACKETS, align 4
  %157 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %158 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32 %156, i32* %161, align 4
  br label %182

162:                                              ; preds = %140
  %163 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %164 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %167 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %170 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store i32 %168, i32* %173, align 8
  %174 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %175 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %178 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  store i32 %176, i32* %181, align 4
  br label %182

182:                                              ; preds = %162, %145
  %183 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %184 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %187 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 %185, i32* %190, align 8
  %191 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %192 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %195 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  store i32 %193, i32* %198, align 4
  %199 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %200 = call i32 @netxen_config_intr_coalesce(%struct.netxen_adapter* %199)
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %182, %132, %24, %15
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @netxen_config_intr_coalesce(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
