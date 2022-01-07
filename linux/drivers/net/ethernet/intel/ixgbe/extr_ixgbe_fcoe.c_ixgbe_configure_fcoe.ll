; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_configure_fcoe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_configure_fcoe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.TYPE_6__**, %struct.ixgbe_hw, %struct.TYPE_4__*, %struct.ixgbe_ring_feature* }
%struct.TYPE_6__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_ring_feature = type { i32, i32 }

@RING_F_FCOE = common dso_local global i64 0, align 8
@NETIF_F_FCOE_CRC = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@IXGBE_ETQF_FCOE = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_EN = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_ETQF_POOL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_ETQF_POOL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_FCOE = common dso_local global i32 0, align 4
@IXGBE_FLAG_FCOE_ENABLED = common dso_local global i32 0, align 4
@IXGBE_FCRETA_SIZE = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_FCRETA_SIZE_X550 = common dso_local global i32 0, align 4
@IXGBE_FCRETA_ENTRY_HIGH_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FCRETA_ENTRY_HIGH_MASK = common dso_local global i32 0, align 4
@IXGBE_FCRETA_ENTRY_MASK = common dso_local global i32 0, align 4
@IXGBE_FCRECTL = common dso_local global i32 0, align 4
@IXGBE_FCRECTL_ENA = common dso_local global i32 0, align 4
@ETH_P_FIP = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_FIP = common dso_local global i32 0, align 4
@IXGBE_ETQS_QUEUE_EN = common dso_local global i32 0, align 4
@IXGBE_ETQS_RX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FCRXCTRL = common dso_local global i32 0, align 4
@IXGBE_FCRXCTRL_FCCRCBO = common dso_local global i32 0, align 4
@FC_FCOE_VER = common dso_local global i32 0, align 4
@IXGBE_FCRXCTRL_FCOEVER_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_configure_fcoe(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_ring_feature*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 4
  %14 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %13, align 8
  %15 = load i64, i64* @RING_F_FCOE, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %14, i64 %15
  store %struct.ixgbe_ring_feature* %16, %struct.ixgbe_ring_feature** %3, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 2
  store %struct.ixgbe_hw* %18, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NETIF_F_FCOE_CRC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %206

28:                                               ; preds = %1
  %29 = load i32, i32* @ETH_P_FCOE, align 4
  %30 = load i32, i32* @IXGBE_ETQF_FCOE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IXGBE_ETQF_FILTER_EN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load i32, i32* @IXGBE_ETQF_POOL_ENABLE, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = call i32 @VMDQ_P(i32 0)
  %45 = load i32, i32* @IXGBE_ETQF_POOL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %40, %28
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = load i32, i32* @IXGBE_ETQF_FILTER_FCOE, align 4
  %52 = call i32 @IXGBE_ETQF(i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i32 %52, i32 %53)
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %56 = load i32, i32* @IXGBE_ETQF_FILTER_FCOE, align 4
  %57 = call i32 @IXGBE_ETQS(i32 %56)
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %55, i32 %57, i32 0)
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IXGBE_FLAG_FCOE_ENABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %49
  br label %206

66:                                               ; preds = %49
  %67 = load i32, i32* @IXGBE_FCRETA_SIZE, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ixgbe_mac_X550, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @IXGBE_FCRETA_SIZE_X550, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %66
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %146, %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %149

82:                                               ; preds = %78
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ixgbe_mac_X550, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %82
  %91 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %94, %95
  %97 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %3, align 8
  %98 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = srem i32 %96, %99
  %101 = add nsw i32 %93, %100
  store i32 %101, i32* %11, align 4
  %102 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @IXGBE_FCRETA_ENTRY_HIGH_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* @IXGBE_FCRETA_ENTRY_HIGH_MASK, align 4
  %115 = and i32 %113, %114
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %90, %82
  %117 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %3, align 8
  %118 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = srem i32 %120, %123
  %125 = add nsw i32 %119, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* @IXGBE_FCRETA_ENTRY_MASK, align 4
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %131, i64 %133
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @IXGBE_FCRETA(i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %116
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %78

149:                                              ; preds = %78
  %150 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %151 = load i32, i32* @IXGBE_FCRECTL, align 4
  %152 = load i32, i32* @IXGBE_FCRECTL_ENA, align 4
  %153 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %150, i32 %151, i32 %152)
  %154 = load i32, i32* @ETH_P_FIP, align 4
  %155 = load i32, i32* @IXGBE_ETQF_FILTER_EN, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %10, align 4
  %157 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %158 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %149
  %164 = load i32, i32* @IXGBE_ETQF_POOL_ENABLE, align 4
  %165 = load i32, i32* %10, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %10, align 4
  %167 = call i32 @VMDQ_P(i32 0)
  %168 = load i32, i32* @IXGBE_ETQF_POOL_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %163, %149
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %174 = load i32, i32* @IXGBE_ETQF_FILTER_FIP, align 4
  %175 = call i32 @IXGBE_ETQF(i32 %174)
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %173, i32 %175, i32 %176)
  %178 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %179 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %179, align 8
  %181 = load %struct.ixgbe_ring_feature*, %struct.ixgbe_ring_feature** %3, align 8
  %182 = getelementptr inbounds %struct.ixgbe_ring_feature, %struct.ixgbe_ring_feature* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %180, i64 %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %6, align 4
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %190 = load i32, i32* @IXGBE_ETQF_FILTER_FIP, align 4
  %191 = call i32 @IXGBE_ETQS(i32 %190)
  %192 = load i32, i32* @IXGBE_ETQS_QUEUE_EN, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @IXGBE_ETQS_RX_QUEUE_SHIFT, align 4
  %195 = shl i32 %193, %194
  %196 = or i32 %192, %195
  %197 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %189, i32 %191, i32 %196)
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %199 = load i32, i32* @IXGBE_FCRXCTRL, align 4
  %200 = load i32, i32* @IXGBE_FCRXCTRL_FCCRCBO, align 4
  %201 = load i32, i32* @FC_FCOE_VER, align 4
  %202 = load i32, i32* @IXGBE_FCRXCTRL_FCOEVER_SHIFT, align 4
  %203 = shl i32 %201, %202
  %204 = or i32 %200, %203
  %205 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %198, i32 %199, i32 %204)
  br label %206

206:                                              ; preds = %172, %65, %27
  ret void
}

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_ETQF(i32) #1

declare dso_local i32 @IXGBE_ETQS(i32) #1

declare dso_local i32 @IXGBE_FCRETA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
