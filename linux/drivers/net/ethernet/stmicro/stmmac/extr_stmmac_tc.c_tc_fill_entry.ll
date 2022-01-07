; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_fill_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_fill_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.tc_u32_sel* }
%struct.tc_u32_sel = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.stmmac_tc_entry = type { i32, i32, i32, %struct.TYPE_8__, %struct.stmmac_tc_entry* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.tc_cls_u32_offload*)* @tc_fill_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_fill_entry(%struct.stmmac_priv* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.tc_cls_u32_offload*, align 8
  %6 = alloca %struct.stmmac_tc_entry*, align 8
  %7 = alloca %struct.stmmac_tc_entry*, align 8
  %8 = alloca %struct.tc_u32_sel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %5, align 8
  store %struct.stmmac_tc_entry* null, %struct.stmmac_tc_entry** %7, align 8
  %16 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %17 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %18, align 8
  store %struct.tc_u32_sel* %19, %struct.tc_u32_sel** %8, align 8
  %20 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %21 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 16
  store i32 %24, i32* %14, align 4
  %25 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %8, align 8
  %26 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %8, align 8
  %31 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %211

37:                                               ; preds = %29
  %38 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %8, align 8
  %39 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %8, align 8
  %45 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %8, align 8
  %49 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.tc_u32_sel*, %struct.tc_u32_sel** %8, align 8
  %55 = getelementptr inbounds %struct.tc_u32_sel, %struct.tc_u32_sel* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %61 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  switch i32 %64, label %70 [
    i32 129, label %65
    i32 128, label %66
  ]

65:                                               ; preds = %37
  br label %73

66:                                               ; preds = %37
  %67 = load i32, i32* @ETH_HLEN, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %73

70:                                               ; preds = %37
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %211

73:                                               ; preds = %66, %65
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %76 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %211

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = sdiv i32 %83, 4
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = srem i32 %85, 4
  store i32 %86, i32* %13, align 4
  %87 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %88 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %89 = call %struct.stmmac_tc_entry* @tc_find_entry(%struct.stmmac_priv* %87, %struct.tc_cls_u32_offload* %88, i32 1)
  store %struct.stmmac_tc_entry* %89, %struct.stmmac_tc_entry** %6, align 8
  %90 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %91 = icmp ne %struct.stmmac_tc_entry* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %211

95:                                               ; preds = %82
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %174

98:                                               ; preds = %95
  %99 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %100 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %101 = call %struct.stmmac_tc_entry* @tc_find_entry(%struct.stmmac_priv* %99, %struct.tc_cls_u32_offload* %100, i32 1)
  store %struct.stmmac_tc_entry* %101, %struct.stmmac_tc_entry** %7, align 8
  %102 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %103 = icmp ne %struct.stmmac_tc_entry* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %15, align 4
  br label %201

107:                                              ; preds = %98
  %108 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %109 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %110 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %109, i32 0, i32 4
  store %struct.stmmac_tc_entry* %108, %struct.stmmac_tc_entry** %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 %112, 8
  %114 = shl i32 %111, %113
  %115 = load i32, i32* %13, align 4
  %116 = mul nsw i32 %115, 8
  %117 = call i32 @GENMASK(i32 31, i32 %116)
  %118 = and i32 %114, %117
  %119 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %120 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %13, align 4
  %124 = mul nsw i32 %123, 8
  %125 = shl i32 %122, %124
  %126 = load i32, i32* %13, align 4
  %127 = mul nsw i32 %126, 8
  %128 = call i32 @GENMASK(i32 31, i32 %127)
  %129 = and i32 %125, %128
  %130 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %131 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %135 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %139 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %141, 8
  %143 = ashr i32 %140, %142
  %144 = load i32, i32* %13, align 4
  %145 = mul nsw i32 %144, 8
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @GENMASK(i32 %146, i32 0)
  %148 = and i32 %143, %147
  %149 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %150 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %13, align 4
  %154 = mul nsw i32 %153, 8
  %155 = ashr i32 %152, %154
  %156 = load i32, i32* %13, align 4
  %157 = mul nsw i32 %156, 8
  %158 = sub nsw i32 %157, 1
  %159 = call i32 @GENMASK(i32 %158, i32 0)
  %160 = and i32 %155, %159
  %161 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %162 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  %166 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %167 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %171 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %173 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  br label %192

174:                                              ; preds = %95
  %175 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %176 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %175, i32 0, i32 4
  store %struct.stmmac_tc_entry* null, %struct.stmmac_tc_entry** %176, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %179 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %183 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %187 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %191 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %174, %107
  %193 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %194 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %195 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %196 = call i32 @tc_fill_actions(%struct.stmmac_tc_entry* %193, %struct.stmmac_tc_entry* %194, %struct.tc_cls_u32_offload* %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %201

200:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %211

201:                                              ; preds = %199, %104
  %202 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %203 = icmp ne %struct.stmmac_tc_entry* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %7, align 8
  %206 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %205, i32 0, i32 2
  store i32 0, i32* %206, align 8
  br label %207

207:                                              ; preds = %204, %201
  %208 = load %struct.stmmac_tc_entry*, %struct.stmmac_tc_entry** %6, align 8
  %209 = getelementptr inbounds %struct.stmmac_tc_entry, %struct.stmmac_tc_entry* %208, i32 0, i32 2
  store i32 0, i32* %209, align 8
  %210 = load i32, i32* %15, align 4
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %207, %200, %92, %79, %70, %34
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.stmmac_tc_entry* @tc_find_entry(%struct.stmmac_priv*, %struct.tc_cls_u32_offload*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @tc_fill_actions(%struct.stmmac_tc_entry*, %struct.stmmac_tc_entry*, %struct.tc_cls_u32_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
