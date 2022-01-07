; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_farch_filter_spec = type { i32, i32, i32*, i32 }

@EF4_FARCH_FILTER_UDP_FULL = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_UDP_WILD = common dso_local global i32 0, align 4
@FRF_BZ_RSS_EN = common dso_local global i32 0, align 4
@EF4_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@FRF_BZ_SCATTER_EN = common dso_local global i32 0, align 4
@EF4_FILTER_FLAG_RX_SCATTER = common dso_local global i32 0, align 4
@FRF_BZ_TCP_UDP = common dso_local global i32 0, align 4
@FRF_BZ_RXQ_ID = common dso_local global i32 0, align 4
@EF4_DWORD_2 = common dso_local global i32 0, align 4
@EF4_DWORD_1 = common dso_local global i32 0, align 4
@EF4_DWORD_0 = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_MAC_WILD = common dso_local global i32 0, align 4
@FRF_CZ_RMFT_RSS_EN = common dso_local global i32 0, align 4
@FRF_CZ_RMFT_SCATTER_EN = common dso_local global i32 0, align 4
@FRF_CZ_RMFT_RXQ_ID = common dso_local global i32 0, align 4
@FRF_CZ_RMFT_WILDCARD_MATCH = common dso_local global i32 0, align 4
@FRF_CZ_RMFT_DEST_MAC_HI = common dso_local global i32 0, align 4
@FRF_CZ_RMFT_DEST_MAC_LO = common dso_local global i32 0, align 4
@FRF_CZ_RMFT_VLAN_ID = common dso_local global i32 0, align 4
@FRF_CZ_TMFT_TXQ_ID = common dso_local global i32 0, align 4
@FRF_CZ_TMFT_WILDCARD_MATCH = common dso_local global i32 0, align 4
@FRF_CZ_TMFT_SRC_MAC_HI = common dso_local global i32 0, align 4
@FRF_CZ_TMFT_SRC_MAC_LO = common dso_local global i32 0, align 4
@FRF_CZ_TMFT_VLAN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ef4_farch_filter_spec*)* @ef4_farch_filter_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_farch_filter_build(i32* %0, %struct.ef4_farch_filter_spec* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ef4_farch_filter_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ef4_farch_filter_spec* %1, %struct.ef4_farch_filter_spec** %4, align 8
  %9 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %10 = call i32 @ef4_farch_filter_spec_table_id(%struct.ef4_farch_filter_spec* %9)
  switch i32 %10, label %169 [
    i32 130, label %11
    i32 129, label %74
    i32 128, label %129
  ]

11:                                               ; preds = %2
  %12 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %13 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EF4_FARCH_FILTER_UDP_FULL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %19 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EF4_FARCH_FILTER_UDP_WILD, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i1 [ true, %11 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FRF_BZ_RSS_EN, align 4
  %29 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %30 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EF4_FILTER_FLAG_RX_RSS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @FRF_BZ_SCATTER_EN, align 4
  %39 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %40 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EF4_FILTER_FLAG_RX_SCATTER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @FRF_BZ_TCP_UDP, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @FRF_BZ_RXQ_ID, align 4
  %51 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %52 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EF4_DWORD_2, align 4
  %55 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %56 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EF4_DWORD_1, align 4
  %61 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %62 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EF4_DWORD_0, align 4
  %67 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %68 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @EF4_POPULATE_OWORD_7(i32 %27, i32 %28, i32 %37, i32 %38, i32 %47, i32 %48, i32 %49, i32 %50, i32 %53, i32 %54, i32 %59, i32 %60, i32 %65, i32 %66, i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %5, align 4
  br label %171

74:                                               ; preds = %2
  %75 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %76 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @EF4_FARCH_FILTER_MAC_WILD, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %7, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FRF_CZ_RMFT_RSS_EN, align 4
  %84 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %85 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @EF4_FILTER_FLAG_RX_RSS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* @FRF_CZ_RMFT_SCATTER_EN, align 4
  %94 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %95 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @EF4_FILTER_FLAG_RX_SCATTER, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* @FRF_CZ_RMFT_RXQ_ID, align 4
  %104 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %105 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @FRF_CZ_RMFT_WILDCARD_MATCH, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @FRF_CZ_RMFT_DEST_MAC_HI, align 4
  %110 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %111 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FRF_CZ_RMFT_DEST_MAC_LO, align 4
  %116 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %117 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FRF_CZ_RMFT_VLAN_ID, align 4
  %122 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %123 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @EF4_POPULATE_OWORD_7(i32 %82, i32 %83, i32 %92, i32 %93, i32 %102, i32 %103, i32 %106, i32 %107, i32 %108, i32 %109, i32 %114, i32 %115, i32 %120, i32 %121, i32 %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %5, align 4
  br label %171

129:                                              ; preds = %2
  %130 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %131 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @EF4_FARCH_FILTER_MAC_WILD, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %8, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @FRF_CZ_TMFT_TXQ_ID, align 4
  %139 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %140 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FRF_CZ_TMFT_WILDCARD_MATCH, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @FRF_CZ_TMFT_SRC_MAC_HI, align 4
  %145 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %146 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @FRF_CZ_TMFT_SRC_MAC_LO, align 4
  %151 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %152 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @FRF_CZ_TMFT_VLAN_ID, align 4
  %157 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %158 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @EF4_POPULATE_OWORD_5(i32 %137, i32 %138, i32 %141, i32 %142, i32 %143, i32 %144, i32 %149, i32 %150, i32 %155, i32 %156, i32 %161)
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %165 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 1
  %168 = or i32 %163, %167
  store i32 %168, i32* %5, align 4
  br label %171

169:                                              ; preds = %2
  %170 = call i32 (...) @BUG()
  br label %171

171:                                              ; preds = %169, %129, %74, %23
  %172 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %173 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %178 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %176, %181
  %183 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %184 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = xor i32 %182, %187
  %189 = load i32, i32* %5, align 4
  %190 = xor i32 %188, %189
  ret i32 %190
}

declare dso_local i32 @ef4_farch_filter_spec_table_id(%struct.ef4_farch_filter_spec*) #1

declare dso_local i32 @EF4_POPULATE_OWORD_7(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
