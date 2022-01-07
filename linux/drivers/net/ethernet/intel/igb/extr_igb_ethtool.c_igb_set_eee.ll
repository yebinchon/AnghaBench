; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i32, i64, i64 }
%struct.igb_adapter = type { %struct.TYPE_10__*, i32, i32, %struct.e1000_hw }
%struct.TYPE_10__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@e1000_i350 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", align 1
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"EEE Advertisement supports only 100Tx and/or 100T full duplex\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Setting EEE options are not supported with EEE disabled\0A\00", align 1
@IGB_FLAG_EEE = common dso_local global i32 0, align 4
@e1000_i354 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Problem setting EEE advertisement options\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @igb_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.ethtool_eee, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %6, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 3
  store %struct.e1000_hw* %15, %struct.e1000_hw** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_i350, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_media_type_copper, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %202

32:                                               ; preds = %22
  %33 = call i32 @memset(%struct.ethtool_eee* %8, i32 0, i32 32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @igb_get_eee(%struct.net_device* %34, %struct.ethtool_eee* %8)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %202

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %114

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %202

59:                                               ; preds = %44
  %60 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %202

72:                                               ; preds = %59
  %73 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %82 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %77, %72
  %88 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %202

95:                                               ; preds = %77
  %96 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %9, align 4
  br label %128

114:                                              ; preds = %40
  %115 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  %120 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %202

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %95
  %129 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %130 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ethtool_adv_to_mmd_eee_adv_t(i32 %131)
  %133 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %134 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %136 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %141 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = icmp ne i32 %139, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %128
  %148 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %155 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 8
  %158 = load i32, i32* @IGB_FLAG_EEE, align 4
  %159 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %160 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.net_device*, %struct.net_device** %4, align 8
  %164 = call i64 @netif_running(%struct.net_device* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %147
  %167 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %168 = call i32 @igb_reinit_locked(%struct.igb_adapter* %167)
  br label %172

169:                                              ; preds = %147
  %170 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %171 = call i32 @igb_reset(%struct.igb_adapter* %170)
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %172, %128
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %175 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @e1000_i354, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @igb_set_eee_i354(%struct.e1000_hw* %181, i32 %182, i32 %183)
  store i32 %184, i32* %11, align 4
  br label %190

185:                                              ; preds = %173
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @igb_set_eee_i350(%struct.e1000_hw* %186, i32 %187, i32 %188)
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %195 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %194, i32 0, i32 0
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = call i32 @dev_err(i32* %197, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %202

201:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %193, %119, %87, %64, %51, %38, %29
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ethtool_eee*, i32, i32) #1

declare dso_local i32 @igb_get_eee(%struct.net_device*, %struct.ethtool_eee*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ethtool_adv_to_mmd_eee_adv_t(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @igb_reinit_locked(%struct.igb_adapter*) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

declare dso_local i32 @igb_set_eee_i354(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @igb_set_eee_i350(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
