; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_setup_glists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_core.c_lio_setup_glists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lio = type { i32, i32, i32*, i64*, i64*, i32* }
%struct.octnic_gather = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCTNIC_MAX_SG = common dso_local global i32 0, align 4
@OCT_SG_ENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_setup_glists(%struct.octeon_device* %0, %struct.lio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.octnic_gather*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %struct.lio* %1, %struct.lio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kcalloc(i32 %12, i32 4, i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.lio*, %struct.lio** %6, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load %struct.lio*, %struct.lio** %6, align 8
  %19 = getelementptr inbounds %struct.lio, %struct.lio* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %220

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.lio*, %struct.lio** %6, align 8
  %31 = getelementptr inbounds %struct.lio, %struct.lio* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.lio*, %struct.lio** %6, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %25
  %37 = load %struct.lio*, %struct.lio** %6, align 8
  %38 = getelementptr inbounds %struct.lio, %struct.lio* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.lio*, %struct.lio** %6, align 8
  %42 = getelementptr inbounds %struct.lio, %struct.lio* %41, i32 0, i32 5
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %220

45:                                               ; preds = %25
  %46 = load i32, i32* @OCTNIC_MAX_SG, align 4
  %47 = call i32 @ROUNDUP4(i32 %46)
  %48 = ashr i32 %47, 2
  %49 = load i32, i32* @OCT_SG_ENTRY_SIZE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i32 @ROUNDUP8(i32 %50)
  %52 = load %struct.lio*, %struct.lio** %6, align 8
  %53 = getelementptr inbounds %struct.lio, %struct.lio* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kcalloc(i32 %54, i32 8, i32 %55)
  %57 = bitcast i8* %56 to i64*
  %58 = load %struct.lio*, %struct.lio** %6, align 8
  %59 = getelementptr inbounds %struct.lio, %struct.lio* %58, i32 0, i32 4
  store i64* %57, i64** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kcalloc(i32 %60, i32 8, i32 %61)
  %63 = bitcast i8* %62 to i64*
  %64 = load %struct.lio*, %struct.lio** %6, align 8
  %65 = getelementptr inbounds %struct.lio, %struct.lio* %64, i32 0, i32 3
  store i64* %63, i64** %65, align 8
  %66 = load %struct.lio*, %struct.lio** %6, align 8
  %67 = getelementptr inbounds %struct.lio, %struct.lio* %66, i32 0, i32 4
  %68 = load i64*, i64** %67, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %45
  %71 = load %struct.lio*, %struct.lio** %6, align 8
  %72 = getelementptr inbounds %struct.lio, %struct.lio* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70, %45
  %76 = load %struct.lio*, %struct.lio** %6, align 8
  %77 = call i32 @lio_delete_glists(%struct.lio* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %220

80:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %216, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %219

85:                                               ; preds = %81
  %86 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %87 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @dev_to_node(i32* %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.lio*, %struct.lio** %6, align 8
  %92 = getelementptr inbounds %struct.lio, %struct.lio* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load %struct.lio*, %struct.lio** %6, align 8
  %99 = getelementptr inbounds %struct.lio, %struct.lio* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %106 = load %struct.lio*, %struct.lio** %6, align 8
  %107 = getelementptr inbounds %struct.lio, %struct.lio* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.lio*, %struct.lio** %6, align 8
  %110 = getelementptr inbounds %struct.lio, %struct.lio* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load %struct.lio*, %struct.lio** %6, align 8
  %114 = getelementptr inbounds %struct.lio, %struct.lio* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = call i64 @lio_dma_alloc(%struct.octeon_device* %105, i32 %112, i64* %118)
  %120 = load %struct.lio*, %struct.lio** %6, align 8
  %121 = getelementptr inbounds %struct.lio, %struct.lio* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  %126 = load %struct.lio*, %struct.lio** %6, align 8
  %127 = getelementptr inbounds %struct.lio, %struct.lio* %126, i32 0, i32 4
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %85
  %135 = load %struct.lio*, %struct.lio** %6, align 8
  %136 = call i32 @lio_delete_glists(%struct.lio* %135)
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %220

139:                                              ; preds = %85
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %201, %139
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.lio*, %struct.lio** %6, align 8
  %143 = getelementptr inbounds %struct.lio, %struct.lio* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %204

146:                                              ; preds = %140
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call %struct.octnic_gather* @kzalloc_node(i32 24, i32 %147, i32 %148)
  store %struct.octnic_gather* %149, %struct.octnic_gather** %8, align 8
  %150 = load %struct.octnic_gather*, %struct.octnic_gather** %8, align 8
  %151 = icmp ne %struct.octnic_gather* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call %struct.octnic_gather* @kzalloc(i32 24, i32 %153)
  store %struct.octnic_gather* %154, %struct.octnic_gather** %8, align 8
  br label %155

155:                                              ; preds = %152, %146
  %156 = load %struct.octnic_gather*, %struct.octnic_gather** %8, align 8
  %157 = icmp ne %struct.octnic_gather* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %204

159:                                              ; preds = %155
  %160 = load %struct.lio*, %struct.lio** %6, align 8
  %161 = getelementptr inbounds %struct.lio, %struct.lio* %160, i32 0, i32 4
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.lio*, %struct.lio** %6, align 8
  %169 = getelementptr inbounds %struct.lio, %struct.lio* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 %167, %170
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %166, %172
  %174 = load %struct.octnic_gather*, %struct.octnic_gather** %8, align 8
  %175 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load %struct.lio*, %struct.lio** %6, align 8
  %177 = getelementptr inbounds %struct.lio, %struct.lio* %176, i32 0, i32 3
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.lio*, %struct.lio** %6, align 8
  %185 = getelementptr inbounds %struct.lio, %struct.lio* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = mul nsw i32 %183, %186
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %182, %188
  %190 = load %struct.octnic_gather*, %struct.octnic_gather** %8, align 8
  %191 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.octnic_gather*, %struct.octnic_gather** %8, align 8
  %193 = getelementptr inbounds %struct.octnic_gather, %struct.octnic_gather* %192, i32 0, i32 0
  %194 = load %struct.lio*, %struct.lio** %6, align 8
  %195 = getelementptr inbounds %struct.lio, %struct.lio* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = call i32 @list_add_tail(i32* %193, i32* %199)
  br label %201

201:                                              ; preds = %159
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %140

204:                                              ; preds = %158, %140
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.lio*, %struct.lio** %6, align 8
  %207 = getelementptr inbounds %struct.lio, %struct.lio* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %205, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.lio*, %struct.lio** %6, align 8
  %212 = call i32 @lio_delete_glists(%struct.lio* %211)
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %220

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %81

219:                                              ; preds = %81
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %219, %210, %134, %75, %36, %22
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ROUNDUP8(i32) #1

declare dso_local i32 @ROUNDUP4(i32) #1

declare dso_local i32 @lio_delete_glists(%struct.lio*) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @lio_dma_alloc(%struct.octeon_device*, i32, i64*) #1

declare dso_local %struct.octnic_gather* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.octnic_gather* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
