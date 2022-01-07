; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_fwd_ring_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_fwd_ring_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.TYPE_4__**, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_fwd_adapter = type { i32, i32, i32, %struct.net_device* }

@RING_F_RSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"pool %i:%i queues %i:%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"L2FW offload disabled due to L2 filter error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.ixgbe_fwd_adapter*)* @ixgbe_fwd_ring_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_fwd_ring_up(%struct.ixgbe_adapter* %0, %struct.ixgbe_fwd_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_fwd_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ixgbe_fwd_adapter* %1, %struct.ixgbe_fwd_adapter** %5, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @RING_F_RSS, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_get_num_tc(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %23, i32 0, i32 3
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  %26 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %41, %44
  %46 = call i32 @netdev_dbg(%struct.net_device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %40, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %70, %2
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %64, %67
  %69 = call i32 @netdev_bind_sb_channel_queue(i32 %60, %struct.net_device* %61, i32 %62, i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %53

73:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %92, %73
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %74
  %81 = load %struct.net_device*, %struct.net_device** %8, align 8
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.net_device* %81, %struct.net_device** %91, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %74

95:                                               ; preds = %74
  %96 = call i32 (...) @wmb()
  %97 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %98 = load %struct.net_device*, %struct.net_device** %8, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @VMDQ_P(i32 %103)
  %105 = call i32 @ixgbe_add_mac_filter(%struct.ixgbe_adapter* %97, i32 %100, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %152

109:                                              ; preds = %95
  %110 = load %struct.net_device*, %struct.net_device** %8, align 8
  %111 = call i32 @macvlan_release_l2fw_offload(%struct.net_device* %110)
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %129, %109
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %121, i64 %125
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %128, align 8
  br label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %112

132:                                              ; preds = %112
  %133 = load %struct.net_device*, %struct.net_device** %8, align 8
  %134 = call i32 @netdev_err(%struct.net_device* %133, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.net_device*, %struct.net_device** %8, align 8
  %139 = call i32 @netdev_unbind_sb_channel(i32 %137, %struct.net_device* %138)
  %140 = load %struct.net_device*, %struct.net_device** %8, align 8
  %141 = call i32 @netdev_set_sb_channel(%struct.net_device* %140, i32 0)
  %142 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %143 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %146 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @clear_bit(i32 %144, i32 %147)
  %149 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %5, align 8
  %150 = call i32 @kfree(%struct.ixgbe_fwd_adapter* %149)
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %132, %108
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @netdev_get_num_tc(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_bind_sb_channel_queue(i32, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ixgbe_add_mac_filter(%struct.ixgbe_adapter*, i32, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @macvlan_release_l2fw_offload(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_unbind_sb_channel(i32, %struct.net_device*) #1

declare dso_local i32 @netdev_set_sb_channel(%struct.net_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.ixgbe_fwd_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
