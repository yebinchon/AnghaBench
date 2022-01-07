; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_setup_mrqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_setup_mrqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32*, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IGB_RETA_SIZE = common dso_local global i32 0, align 4
@E1000_RXCSUM = common dso_local global i32 0, align 4
@E1000_RXCSUM_PCSD = common dso_local global i32 0, align 4
@E1000_RXCSUM_CRCOFL = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_TCP_EX = common dso_local global i32 0, align 4
@IGB_FLAG_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@IGB_FLAG_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i32 0, align 4
@E1000_VT_CTL = common dso_local global i32 0, align 4
@E1000_VT_CTL_DEFAULT_POOL_MASK = common dso_local global i32 0, align 4
@E1000_VT_CTL_DISABLE_DEF_POOL = common dso_local global i32 0, align 4
@E1000_VT_CTL_DEFAULT_POOL_SHIFT = common dso_local global i32 0, align 4
@E1000_MRQC_ENABLE_VMDQ_RSS_MQ = common dso_local global i32 0, align 4
@E1000_MRQC_ENABLE_VMDQ = common dso_local global i32 0, align 4
@e1000_i211 = common dso_local global i32 0, align 4
@E1000_MRQC_ENABLE_RSS_MQ = common dso_local global i32 0, align 4
@E1000_MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_setup_mrqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_setup_mrqc(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 5
  store %struct.e1000_hw* %11, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %13 = call i32 @netdev_rss_key_fill(i32* %12, i32 40)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %25, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @E1000_RSSRK(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wr32(i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %43 [
    i32 128, label %36
  ]

36:                                               ; preds = %28
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 2, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %36
  br label %44

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %42
  %45 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IGB_RETA_SIZE, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* @IGB_RETA_SIZE, align 4
  %60 = sdiv i32 %58, %59
  %61 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %51

70:                                               ; preds = %51
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %44
  %75 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %76 = call i32 @igb_write_rss_indir_tbl(%struct.igb_adapter* %75)
  %77 = load i32, i32* @E1000_RXCSUM, align 4
  %78 = call i32 @rd32(i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @E1000_RXCSUM_PCSD, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 128
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load i32, i32* @E1000_RXCSUM_CRCOFL, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %74
  %93 = load i32, i32* @E1000_RXCSUM, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @wr32(i32 %93, i32 %94)
  %96 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4, align 4
  %97 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_TCP, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_TCP_EX, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %4, align 4
  %105 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IGB_FLAG_RSS_FIELD_IPV4_UDP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %92
  %112 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4_UDP, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %92
  %116 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IGB_FLAG_RSS_FIELD_IPV6_UDP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_UDP, align 4
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %171

131:                                              ; preds = %126
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @e1000_82575, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %131
  %139 = load i32, i32* @E1000_VT_CTL, align 4
  %140 = call i32 @rd32(i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* @E1000_VT_CTL_DEFAULT_POOL_MASK, align 4
  %142 = load i32, i32* @E1000_VT_CTL_DISABLE_DEF_POOL, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %148 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @E1000_VT_CTL_DEFAULT_POOL_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* @E1000_VT_CTL, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @wr32(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %138, %131
  %158 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %159 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @E1000_MRQC_ENABLE_VMDQ_RSS_MQ, align 4
  %164 = load i32, i32* %4, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %4, align 4
  br label %170

166:                                              ; preds = %157
  %167 = load i32, i32* @E1000_MRQC_ENABLE_VMDQ, align 4
  %168 = load i32, i32* %4, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %166, %162
  br label %183

171:                                              ; preds = %126
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @e1000_i211, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i32, i32* @E1000_MRQC_ENABLE_RSS_MQ, align 4
  %180 = load i32, i32* %4, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %178, %171
  br label %183

183:                                              ; preds = %182, %170
  %184 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %185 = call i32 @igb_vmm_control(%struct.igb_adapter* %184)
  %186 = load i32, i32* @E1000_MRQC, align 4
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @wr32(i32 %186, i32 %187)
  ret void
}

declare dso_local i32 @netdev_rss_key_fill(i32*, i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_RSSRK(i32) #1

declare dso_local i32 @igb_write_rss_indir_tbl(%struct.igb_adapter*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_vmm_control(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
