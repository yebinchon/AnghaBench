; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_setets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_nl.c_ixgbe_dcbnl_ieee_setets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i64* }
%struct.ixgbe_adapter = type { i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @ixgbe_dcbnl_ieee_setets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_dcbnl_ieee_setets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_ets*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbe_adapter* %13, %struct.ixgbe_adapter** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_HLEN, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @ETH_FCS_LEN, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %171

30:                                               ; preds = %2
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %74, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.TYPE_7__* @kmalloc(i32 8, i32 %36)
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 4
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %171

47:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %53, i32* %61, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 2
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ixgbe_dcb_read_rtrup2tc(i32* %67, i32* %72)
  br label %74

74:                                               ; preds = %65, %30
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %118, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %75
  %80 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %81 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %91 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %89, %79
  %98 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %99 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp ne i64 %104, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %97
  store i64 1, i64* %11, align 8
  br label %117

117:                                              ; preds = %116, %97
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %75

121:                                              ; preds = %75
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %126 = call i32 @memcpy(%struct.TYPE_7__* %124, %struct.ieee_ets* %125, i32 8)
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i64, i64* %10, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %132

132:                                              ; preds = %129, %121
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %133, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %171

143:                                              ; preds = %132
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %146 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @ixgbe_setup_tc(%struct.net_device* %150, i64 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %171

157:                                              ; preds = %149
  br label %165

158:                                              ; preds = %143
  %159 = load i64, i64* %11, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 @ixgbe_dcbnl_devreset(%struct.net_device* %162)
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %164, %157
  %166 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %167 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %166, i32 0, i32 2
  %168 = load %struct.ieee_ets*, %struct.ieee_ets** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @ixgbe_dcb_hw_ets(i32* %167, %struct.ieee_ets* %168, i32 %169)
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %165, %155, %140, %44, %27
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_7__* @kmalloc(i32, i32) #1

declare dso_local i32 @ixgbe_dcb_read_rtrup2tc(i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.ieee_ets*, i32) #1

declare dso_local i32 @ixgbe_setup_tc(%struct.net_device*, i64) #1

declare dso_local i32 @ixgbe_dcbnl_devreset(%struct.net_device*) #1

declare dso_local i32 @ixgbe_dcb_hw_ets(i32*, %struct.ieee_ets*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
