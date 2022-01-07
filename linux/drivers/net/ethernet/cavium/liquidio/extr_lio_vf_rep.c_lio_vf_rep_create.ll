; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.net_device** }
%struct.net_device = type { i32*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.lio_vf_rep_desc = type { i32, %struct.TYPE_9__, i32, %struct.octeon_device*, %struct.net_device* }
%struct.TYPE_9__ = type { i32, i8* }

@DEVLINK_ESWITCH_MODE_SWITCHDEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"VF rep device %d creation failed\0A\00", align 1
@LIO_MIN_MTU_SIZE = common dso_local global i32 0, align 4
@LIO_MAX_MTU_SIZE = common dso_local global i32 0, align 4
@lio_vf_rep_ndev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"VF rep nerdev registration failed\0A\00", align 1
@lio_vf_rep_fetch_stats = common dso_local global i32 0, align 4
@LIO_VF_REP_STATS_POLL_TIME_MS = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_VF_REP_PKT = common dso_local global i32 0, align 4
@lio_vf_rep_pkt_recv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"VF rep Dispatch func registration failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_vf_rep_create(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_vf_rep_desc*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DEVLINK_ESWITCH_MODE_SWITCHDEV, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %188

14:                                               ; preds = %1
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %188

21:                                               ; preds = %14
  %22 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %125, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %128

33:                                               ; preds = %29
  %34 = call %struct.net_device* @alloc_etherdev(i32 48)
  store %struct.net_device* %34, %struct.net_device** %5, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %143

44:                                               ; preds = %33
  %45 = load i32, i32* @LIO_MIN_MTU_SIZE, align 4
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @LIO_MAX_MTU_SIZE, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  store i32* @lio_vf_rep_ndev_ops, i32** %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %53)
  store %struct.lio_vf_rep_desc* %54, %struct.lio_vf_rep_desc** %4, align 8
  %55 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %56 = call i32 @memset(%struct.lio_vf_rep_desc* %55, i32 0, i32 48)
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %59 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %58, i32 0, i32 4
  store %struct.net_device* %57, %struct.net_device** %59, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %61 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %62 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %61, i32 0, i32 3
  store %struct.octeon_device* %60, %struct.octeon_device** %62, align 8
  %63 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %70 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %73, 64
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  %78 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %79 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = call i32 @eth_hw_addr_random(%struct.net_device* %80)
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = call i64 @register_netdev(%struct.net_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %44
  %86 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @free_netdev(%struct.net_device* %91)
  br label %143

93:                                               ; preds = %44
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = call i32 @netif_carrier_off(%struct.net_device* %94)
  %96 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %97 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* @lio_vf_rep_fetch_stats, align 4
  %100 = call i32 @INIT_DELAYED_WORK(i32* %98, i32 %99)
  %101 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %102 = bitcast %struct.lio_vf_rep_desc* %101 to i8*
  %103 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %104 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %107 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* @LIO_VF_REP_STATS_POLL_TIME_MS, align 4
  %110 = call i32 @msecs_to_jiffies(i32 %109)
  %111 = call i32 @schedule_delayed_work(i32* %108, i32 %110)
  %112 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.net_device**, %struct.net_device*** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.net_device*, %struct.net_device** %121, i64 %123
  store %struct.net_device* %117, %struct.net_device** %124, align 8
  br label %125

125:                                              ; preds = %93
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %29

128:                                              ; preds = %29
  %129 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %130 = load i32, i32* @OPCODE_NIC, align 4
  %131 = load i32, i32* @OPCODE_NIC_VF_REP_PKT, align 4
  %132 = load i32, i32* @lio_vf_rep_pkt_recv, align 4
  %133 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %134 = call i64 @octeon_register_dispatch_fn(%struct.octeon_device* %129, i32 %130, i32 %131, i32 %132, %struct.octeon_device* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %137, i32 0, i32 3
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %143

142:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %188

143:                                              ; preds = %136, %85, %37
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %181, %143
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %147 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %184

151:                                              ; preds = %144
  %152 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %153 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load %struct.net_device**, %struct.net_device*** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.net_device*, %struct.net_device** %155, i64 %157
  %159 = load %struct.net_device*, %struct.net_device** %158, align 8
  store %struct.net_device* %159, %struct.net_device** %5, align 8
  %160 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load %struct.net_device**, %struct.net_device*** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.net_device*, %struct.net_device** %163, i64 %165
  store %struct.net_device* null, %struct.net_device** %166, align 8
  %167 = load %struct.net_device*, %struct.net_device** %5, align 8
  %168 = icmp ne %struct.net_device* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %151
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %170)
  store %struct.lio_vf_rep_desc* %171, %struct.lio_vf_rep_desc** %4, align 8
  %172 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %4, align 8
  %173 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = call i32 @cancel_delayed_work_sync(i32* %174)
  %176 = load %struct.net_device*, %struct.net_device** %5, align 8
  %177 = call i32 @unregister_netdev(%struct.net_device* %176)
  %178 = load %struct.net_device*, %struct.net_device** %5, align 8
  %179 = call i32 @free_netdev(%struct.net_device* %178)
  br label %180

180:                                              ; preds = %169, %151
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %144

184:                                              ; preds = %144
  %185 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %186 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  store i32 -1, i32* %2, align 4
  br label %188

188:                                              ; preds = %184, %142, %20, %13
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.lio_vf_rep_desc*, i32, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @octeon_register_dispatch_fn(%struct.octeon_device*, i32, i32, i32, %struct.octeon_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
