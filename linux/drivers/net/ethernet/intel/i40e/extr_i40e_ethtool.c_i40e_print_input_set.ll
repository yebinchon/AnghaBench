; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_print_input_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_print_input_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@I40E_L3_SRC_MASK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"L3 source address: %s -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@I40E_L3_DST_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"L3 destination address: %s -> %s\0A\00", align 1
@I40E_L4_SRC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"L4 source port: %s -> %s\0A\00", align 1
@I40E_L4_DST_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"L4 destination port: %s -> %s\0A\00", align 1
@I40E_VERIFY_TAG_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"SCTP verification tag: %s -> %s\0A\00", align 1
@I40E_FLEX_INDEX_ENTRIES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"FLEX index %d: %s -> %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"  Current input set: %0llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Requested input set: %0llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i32, i32)* @i40e_print_input_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_print_input_set(%struct.i40e_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 1
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @I40E_L3_SRC_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @I40E_L3_SRC_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %3
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %34 = load i32, i32* @drv, align 4
  %35 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %45)
  br label %47

47:                                               ; preds = %32, %3
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @I40E_L3_DST_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @I40E_L3_DST_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %47
  %66 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %67 = load i32, i32* @drv, align 4
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %79 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %66, i32 %67, i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %74, i8* %78)
  br label %80

80:                                               ; preds = %65, %47
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @I40E_L4_SRC_MASK, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @I40E_L4_SRC_MASK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %80
  %99 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %100 = load i32, i32* @drv, align 4
  %101 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %102 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %112 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %99, i32 %100, i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %107, i8* %111)
  br label %113

113:                                              ; preds = %98, %80
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @I40E_L4_DST_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @I40E_L4_DST_MASK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %113
  %132 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %133 = load i32, i32* @drv, align 4
  %134 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %135 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %145 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %132, i32 %133, i32 %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %140, i8* %144)
  br label %146

146:                                              ; preds = %131, %113
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @I40E_VERIFY_TAG_MASK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @I40E_VERIFY_TAG_MASK, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %146
  %165 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %166 = load i32, i32* @drv, align 4
  %167 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %168 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %178 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %165, i32 %166, i32 %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %173, i8* %177)
  br label %179

179:                                              ; preds = %164, %146
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %221, %179
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @I40E_FLEX_INDEX_ENTRIES, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %224

184:                                              ; preds = %180
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @i40e_pit_index_to_mask(i32 %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %11, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %11, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %184
  %205 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %206 = load i32, i32* @drv, align 4
  %207 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %208 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %219 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %205, i32 %206, i32 %209, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %210, i8* %214, i8* %218)
  br label %220

220:                                              ; preds = %204, %184
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %180

224:                                              ; preds = %180
  %225 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %226 = load i32, i32* @drv, align 4
  %227 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %228 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %5, align 4
  %231 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %225, i32 %226, i32 %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  %232 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %233 = load i32, i32* @drv, align 4
  %234 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %235 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %6, align 4
  %238 = call i32 (%struct.i40e_pf*, i32, i32, i8*, ...) @netif_info(%struct.i40e_pf* %232, i32 %233, i32 %236, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  ret void
}

declare dso_local i32 @netif_info(%struct.i40e_pf*, i32, i32, i8*, ...) #1

declare dso_local i32 @i40e_pit_index_to_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
