; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_virtualization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_virtualization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i64, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, i32, %struct.ixgbe_hw }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_VT_CTL = common dso_local global i32 0, align 4
@IXGBE_VMD_CTL_VMDQ_EN = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_POOL_MASK = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_POOL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_VT_CTL_REPLEN = common dso_local global i32 0, align 4
@IXGBE_VMOLR_AUPE = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEB = common dso_local global i64 0, align 8
@IXGBE_PFDTXGSWC = common dso_local global i32 0, align 4
@IXGBE_PFDTXGSWC_VT_LBEN = common dso_local global i32 0, align 4
@IXGBE_FLAG2_VLAN_PROMISC = common dso_local global i32 0, align 4
@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_GCR_EXT_VT_MODE_16 = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT_VT_MODE_32 = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT_VT_MODE_64 = common dso_local global i32 0, align 4
@IXGBE_GCR_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_configure_virtualization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_configure_virtualization(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 8
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %3, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %171

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = load i32, i32* @IXGBE_VT_CTL, align 4
  %26 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @IXGBE_VMD_CTL_VMDQ_EN, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @IXGBE_VT_CTL_POOL_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = call i32 @VMDQ_P(i32 0)
  %35 = load i32, i32* @IXGBE_VT_CTL_POOL_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @IXGBE_VT_CTL_REPLEN, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = load i32, i32* @IXGBE_VT_CTL, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @IXGBE_VMOLR_AUPE, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %51, %23
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @VMDQ_P(i32 %53)
  %55 = call i32 @IXGBE_VMOLR(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %52, i32 %55, i32 %56)
  br label %47

58:                                               ; preds = %47
  %59 = call i32 @VMDQ_P(i32 0)
  %60 = srem i32 %59, 32
  store i32 %60, i32* %6, align 4
  %61 = call i32 @VMDQ_P(i32 0)
  %62 = icmp sge i32 %61, 32
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  store i32 %64, i32* %5, align 4
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @IXGBE_VFRE(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @GENMASK(i32 31, i32 %68)
  %70 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i32 %67, i32 %69)
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = xor i32 %72, 1
  %74 = call i32 @IXGBE_VFRE(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 1
  %77 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %71, i32 %74, i32 %76)
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @IXGBE_VFTE(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @GENMASK(i32 31, i32 %81)
  %83 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %78, i32 %80, i32 %82)
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = xor i32 %85, 1
  %87 = call i32 @IXGBE_VFTE(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i32 %87, i32 %89)
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @BRIDGE_MODE_VEB, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %58
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %98 = load i32, i32* @IXGBE_PFDTXGSWC, align 4
  %99 = load i32, i32* @IXGBE_PFDTXGSWC_VT_LBEN, align 4
  %100 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %58
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %105, align 8
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %108 = bitcast %struct.ixgbe_hw* %107 to %struct.ixgbe_hw.0*
  %109 = call i32 @VMDQ_P(i32 0)
  %110 = call i32 %106(%struct.ixgbe_hw.0* %108, i32 0, i32 %109)
  %111 = load i32, i32* @IXGBE_FLAG2_VLAN_PROMISC, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %114 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %118 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %117, i32 0, i32 5
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i64, i64* @RING_F_VMDQ, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %128 [
    i32 128, label %124
    i32 129, label %126
  ]

124:                                              ; preds = %101
  %125 = load i32, i32* @IXGBE_GCR_EXT_VT_MODE_16, align 4
  store i32 %125, i32* %8, align 4
  br label %130

126:                                              ; preds = %101
  %127 = load i32, i32* @IXGBE_GCR_EXT_VT_MODE_32, align 4
  store i32 %127, i32* %8, align 4
  br label %130

128:                                              ; preds = %101
  %129 = load i32, i32* @IXGBE_GCR_EXT_VT_MODE_64, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %126, %124
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %132 = load i32, i32* @IXGBE_GCR_EXT, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %131, i32 %132, i32 %133)
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %168, %130
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %138 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %135
  %142 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %147 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %146, i32 0, i32 3
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ixgbe_ndo_set_vf_spoofchk(i32 %144, i32 %145, i32 %153)
  %155 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %156 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %160 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %159, i32 0, i32 3
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ixgbe_ndo_set_vf_rss_query_en(i32 %157, i32 %158, i32 %166)
  br label %168

168:                                              ; preds = %141
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %135

171:                                              ; preds = %22, %135
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VMOLR(i32) #1

declare dso_local i32 @IXGBE_VFRE(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @IXGBE_VFTE(i32) #1

declare dso_local i32 @ixgbe_ndo_set_vf_spoofchk(i32, i32, i32) #1

declare dso_local i32 @ixgbe_ndo_set_vf_rss_query_en(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
