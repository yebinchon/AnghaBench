; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_alloc_uld_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.c_alloc_uld_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.sge }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sge = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sge_uld_rxq_info = type { i32, i32, i16*, i32*, %struct.sge_ofld_rxq* }
%struct.sge_ofld_rxq = type { %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i16, i64 }

@CXGB4_USING_MSIX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@uldrx_handler = common dso_local global i32 0, align 4
@uldrx_flush_handler = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_uld_rxq_info*, i32)* @alloc_uld_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_uld_rxqs(%struct.adapter* %0, %struct.sge_uld_rxq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_uld_rxq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sge_ofld_rxq*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca %struct.sge*, align 8
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_uld_rxq_info* %1, %struct.sge_uld_rxq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %19 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %22 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %20, %23
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %26 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %25, i32 0, i32 4
  %27 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %26, align 8
  store %struct.sge_ofld_rxq* %27, %struct.sge_ofld_rxq** %14, align 8
  %28 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %29 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %28, i32 0, i32 2
  %30 = load i16*, i16** %29, align 8
  store i16* %30, i16** %15, align 8
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 4
  store %struct.sge* %32, %struct.sge** %16, align 8
  %33 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %34 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = udiv i32 %35, %39
  store i32 %40, i32* %17, align 4
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CXGB4_USING_MSIX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %56

48:                                               ; preds = %3
  %49 = load %struct.sge*, %struct.sge** %16, align 8
  %50 = getelementptr inbounds %struct.sge, %struct.sge* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = add nsw i32 %53, 1
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %48, %47
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %161, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %166

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %64 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %69 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.adapter*, %struct.adapter** %5, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = udiv i32 %70, %74
  store i32 %75, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %67, %61
  %77 = load i32, i32* %11, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load %struct.adapter*, %struct.adapter** %5, align 8
  %81 = call i32 @get_msix_idx_from_bmap(%struct.adapter* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOSPC, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %167

87:                                               ; preds = %79
  %88 = load %struct.adapter*, %struct.adapter** %5, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %87, %76
  %97 = load %struct.adapter*, %struct.adapter** %5, align 8
  %98 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %99 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %98, i32 0, i32 1
  %100 = load %struct.adapter*, %struct.adapter** %5, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %17, align 4
  %106 = udiv i32 %103, %105
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %112 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %96
  %117 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %118 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %117, i32 0, i32 0
  br label %120

119:                                              ; preds = %96
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi %struct.TYPE_12__* [ %118, %116 ], [ null, %119 ]
  %122 = load i32, i32* @uldrx_handler, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32*, i32** @uldrx_flush_handler, align 8
  br label %128

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32* [ %126, %125 ], [ null, %127 ]
  %130 = call i32 @t4_sge_alloc_rxq(%struct.adapter* %97, %struct.TYPE_11__* %99, i32 0, i32 %109, i32 %110, %struct.TYPE_12__* %121, i32 %122, i32* %129, i32 0)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %167

134:                                              ; preds = %128
  %135 = load i32, i32* %11, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %140 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %138, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %134
  %146 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %147 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %146, i32 0, i32 2
  %148 = call i32 @memset(i32* %147, i32 0, i32 4)
  %149 = load i16*, i16** %15, align 8
  %150 = icmp ne i16* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %153 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i16, i16* %154, align 8
  %156 = load i16*, i16** %15, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16, i16* %156, i64 %158
  store i16 %155, i16* %159, align 2
  br label %160

160:                                              ; preds = %151, %145
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  %164 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %165 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %164, i32 1
  store %struct.sge_ofld_rxq* %165, %struct.sge_ofld_rxq** %14, align 8
  br label %57

166:                                              ; preds = %57
  store i32 0, i32* %4, align 4
  br label %204

167:                                              ; preds = %133, %84
  %168 = load %struct.sge_uld_rxq_info*, %struct.sge_uld_rxq_info** %6, align 8
  %169 = getelementptr inbounds %struct.sge_uld_rxq_info, %struct.sge_uld_rxq_info* %168, i32 0, i32 4
  %170 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %169, align 8
  store %struct.sge_ofld_rxq* %170, %struct.sge_ofld_rxq** %14, align 8
  br label %171

171:                                              ; preds = %197, %167
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %202

174:                                              ; preds = %171
  %175 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %176 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %174
  %181 = load %struct.adapter*, %struct.adapter** %5, align 8
  %182 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %183 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %182, i32 0, i32 1
  %184 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %185 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %191 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %190, i32 0, i32 0
  br label %193

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192, %189
  %194 = phi %struct.TYPE_12__* [ %191, %189 ], [ null, %192 ]
  %195 = call i32 @free_rspq_fl(%struct.adapter* %181, %struct.TYPE_11__* %183, %struct.TYPE_12__* %194)
  br label %196

196:                                              ; preds = %193, %174
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %9, align 4
  %200 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %14, align 8
  %201 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %200, i32 1
  store %struct.sge_ofld_rxq* %201, %struct.sge_ofld_rxq** %14, align 8
  br label %171

202:                                              ; preds = %171
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %202, %166
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @get_msix_idx_from_bmap(%struct.adapter*) #1

declare dso_local i32 @t4_sge_alloc_rxq(%struct.adapter*, %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @free_rspq_fl(%struct.adapter*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
