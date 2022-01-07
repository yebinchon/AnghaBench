; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.ethtool_ringparam = type { i32, i32 }
%struct.hns3_nic_priv = type { %struct.TYPE_5__*, %struct.hnae3_handle* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.hnae3_handle = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.hns3_enet_ring = type { i32 }

@HNS3_RING_BD_MULTIPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"backup ring param failed by allocating memory fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Changing Tx/Rx ring depth from %d/%d to %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Change bd num fail, revert to old value(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @hns3_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.hns3_nic_priv*, align 8
  %7 = alloca %struct.hnae3_handle*, align 8
  %8 = alloca %struct.hns3_enet_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.hns3_nic_priv* %18, %struct.hns3_nic_priv** %6, align 8
  %19 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %20 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %19, i32 0, i32 1
  %21 = load %struct.hnae3_handle*, %struct.hnae3_handle** %20, align 8
  store %struct.hnae3_handle* %21, %struct.hnae3_handle** %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @netif_running(%struct.net_device* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %30 = call i32 @hns3_check_ringparam(%struct.net_device* %28, %struct.ethtool_ringparam* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %3, align 4
  br label %177

35:                                               ; preds = %2
  %36 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HNS3_RING_BD_MULTIPLE, align 4
  %40 = call i64 @ALIGN(i32 %38, i32 %39)
  store i64 %40, i64* %11, align 8
  %41 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HNS3_RING_BD_MULTIPLE, align 4
  %45 = call i64 @ALIGN(i32 %43, i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %47 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %55 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %35
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %177

71:                                               ; preds = %66, %35
  %72 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %73 = call %struct.hns3_enet_ring* @hns3_backup_ringparam(%struct.hns3_nic_priv* %72)
  store %struct.hns3_enet_ring* %73, %struct.hns3_enet_ring** %8, align 8
  %74 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %75 = icmp ne %struct.hns3_enet_ring* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %177

81:                                               ; preds = %71
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @netdev_info(%struct.net_device* %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %94, align 8
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = call i32 %95(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %90, %81
  %99 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @hns3_change_all_ring_bd_num(%struct.hns3_nic_priv* %99, i64 %100, i64 %101)
  %103 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %104 = call i32 @hns3_init_all_ring(%struct.hns3_nic_priv* %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %142

107:                                              ; preds = %98
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @hns3_change_all_ring_bd_num(%struct.hns3_nic_priv* %111, i64 %112, i64 %113)
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %138, %107
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %119 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = mul i64 %121, 2
  %123 = icmp ult i64 %117, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %115
  %125 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %126 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %133, i64 %135
  %137 = call i32 @memcpy(%struct.TYPE_8__* %132, %struct.hns3_enet_ring* %136, i32 4)
  br label %138

138:                                              ; preds = %124
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %115

141:                                              ; preds = %115
  br label %162

142:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  br label %143

143:                                              ; preds = %158, %142
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %147 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = mul i64 %149, 2
  %151 = icmp ult i64 %145, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %143
  %153 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %153, i64 %155
  %157 = call i32 @hns3_fini_ring(%struct.hns3_enet_ring* %156)
  br label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %143

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161, %141
  %163 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %164 = call i32 @kfree(%struct.hns3_enet_ring* %163)
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %171, align 8
  %173 = load %struct.net_device*, %struct.net_device** %4, align 8
  %174 = call i32 %172(%struct.net_device* %173)
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %167, %162
  %176 = load i32, i32* %15, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %76, %70, %33
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @hns3_check_ringparam(%struct.net_device*, %struct.ethtool_ringparam*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local %struct.hns3_enet_ring* @hns3_backup_ringparam(%struct.hns3_nic_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @hns3_change_all_ring_bd_num(%struct.hns3_nic_priv*, i64, i64) #1

declare dso_local i32 @hns3_init_all_ring(%struct.hns3_nic_priv*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @hns3_fini_ring(%struct.hns3_enet_ring*) #1

declare dso_local i32 @kfree(%struct.hns3_enet_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
