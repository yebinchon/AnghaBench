; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_set_csum_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_set_csum_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IBMVETH_ILLAN_IPV4_TCP_CSUM = common dso_local global i64 0, align 8
@IBMVETH_ILLAN_IPV6_TCP_CSUM = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@IBMVETH_ILLAN_PADDED_PKT_CSUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"unable to change IPv4 checksum offload settings. %d rc=%ld\0A\00", align 1
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"unable to change IPv6 checksum offload settings. %d rc=%ld\0A\00", align 1
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"unable to change checksum offload settings. %d rc=%ld ret_attr=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ibmveth_set_csum_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_set_csum_offload(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.ibmveth_adapter* %18, %struct.ibmveth_adapter** %5, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i64 @netif_running(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  store i32 1, i32* %16, align 4
  %23 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @ibmveth_close(%struct.net_device* %25)
  %27 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %22, %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @IBMVETH_ILLAN_IPV4_TCP_CSUM, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @IBMVETH_ILLAN_IPV6_TCP_CSUM, align 8
  store i64 %34, i64* %9, align 8
  br label %38

35:                                               ; preds = %29
  %36 = load i64, i64* @IBMVETH_ILLAN_IPV4_TCP_CSUM, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* @IBMVETH_ILLAN_IPV6_TCP_CSUM, align 8
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @h_illan_attributes(i32 %43, i64 0, i64 0, i64* %8)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @H_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %147

48:                                               ; preds = %38
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @IBMVETH_ILLAN_PADDED_PKT_CSUM, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %147

53:                                               ; preds = %48
  %54 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @h_illan_attributes(i32 %58, i64 %59, i64 %60, i64* %8)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @H_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %53
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i32 (%struct.net_device*, i8*, i32, i64, ...) @netdev_err(%struct.net_device* %66, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %68)
  %70 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %71 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @h_illan_attributes(i32 %74, i64 %75, i64 %76, i64* %8)
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %87

80:                                               ; preds = %65
  %81 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %65
  br label %92

88:                                               ; preds = %53
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %87
  %93 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @h_illan_attributes(i32 %97, i64 %98, i64 %99, i64* %8)
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @H_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %92
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i64, i64* %13, align 8
  %108 = call i32 (%struct.net_device*, i8*, i32, i64, ...) @netdev_err(%struct.net_device* %105, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %106, i64 %107)
  %109 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %110 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @h_illan_attributes(i32 %113, i64 %114, i64 %115, i64* %8)
  %117 = load i32, i32* %4, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %126

119:                                              ; preds = %104
  %120 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %119, %104
  br label %131

127:                                              ; preds = %92
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %130 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %126
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* @H_SUCCESS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* @H_SUCCESS, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135, %131
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %142 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  br label %146

143:                                              ; preds = %135
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %143, %139
  br label %155

147:                                              ; preds = %48, %38
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %14, align 4
  %150 = load %struct.net_device*, %struct.net_device** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 (%struct.net_device*, i8*, i32, i64, ...) @netdev_err(%struct.net_device* %150, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %151, i64 %152, i64 %153)
  br label %155

155:                                              ; preds = %147, %146
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = call i32 @ibmveth_open(%struct.net_device* %159)
  store i32 %160, i32* %15, align 4
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  br label %168

166:                                              ; preds = %161
  %167 = load i32, i32* %15, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  ret i32 %169
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ibmveth_close(%struct.net_device*) #1

declare dso_local i64 @h_illan_attributes(i32, i64, i64, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i64, ...) #1

declare dso_local i32 @ibmveth_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
