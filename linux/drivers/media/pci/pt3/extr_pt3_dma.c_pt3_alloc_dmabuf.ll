; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_alloc_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_alloc_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, %struct.xfer_desc* }
%struct.xfer_desc = type { i8*, i8*, i64, i8*, i8* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_5__ = type { %struct.pt3_board* }
%struct.pt3_board = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@DATA_BUF_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DATA_BUF_XFERS = common dso_local global i32 0, align 4
@DESCS_IN_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DATA_XFER_SZ = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt3_alloc_dmabuf(%struct.pt3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt3_adapter*, align 8
  %4 = alloca %struct.pt3_board*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.xfer_desc*, align 8
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %3, align 8
  %14 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.pt3_board*, %struct.pt3_board** %16, align 8
  store %struct.pt3_board* %17, %struct.pt3_board** %4, align 8
  %18 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %20, i32 0, i32 3
  store i32 0, i32* %21, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %59, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %25 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %22
  %29 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %30 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* @DATA_BUF_SZ, align 4
  %34 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @dma_alloc_coherent(i32* %32, i32 %33, i64* %40, i32 %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %226

46:                                               ; preds = %28
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i8* %47, i8** %54, align 8
  %55 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %22

62:                                               ; preds = %22
  %63 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %64 = call i32 @pt3_init_dmabuf(%struct.pt3_adapter* %63)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %65 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DATA_BUF_XFERS, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* @DESCS_IN_PAGE, align 4
  %71 = call i32 @DIV_ROUND_UP(i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %222, %62
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %225

76:                                               ; preds = %72
  %77 = load %struct.pt3_board*, %struct.pt3_board** %4, align 8
  %78 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @dma_alloc_coherent(i32* %80, i32 %81, i64* %12, i32 %82)
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %226

87:                                               ; preds = %76
  %88 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = bitcast i8* %92 to %struct.xfer_desc*
  %94 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store %struct.xfer_desc* %93, %struct.xfer_desc** %100, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i64 %101, i64* %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %87
  %112 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.xfer_desc*, %struct.xfer_desc** %119, align 8
  %121 = load i32, i32* @DESCS_IN_PAGE, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %120, i64 %123
  store %struct.xfer_desc* %124, %struct.xfer_desc** %13, align 8
  %125 = load i64, i64* %12, align 8
  %126 = call i8* @lower_32_bits(i64 %125)
  %127 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %128 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* %12, align 8
  %130 = call i8* @upper_32_bits(i64 %129)
  %131 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %132 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %111, %87
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %218, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @DESCS_IN_PAGE, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %221

138:                                              ; preds = %134
  %139 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  store i64 %149, i64* %11, align 8
  %150 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %150, i32 0, i32 1
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load %struct.xfer_desc*, %struct.xfer_desc** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %157, i64 %159
  store %struct.xfer_desc* %160, %struct.xfer_desc** %13, align 8
  %161 = load i64, i64* %11, align 8
  %162 = call i8* @lower_32_bits(i64 %161)
  %163 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %164 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  %165 = load i64, i64* %11, align 8
  %166 = call i8* @upper_32_bits(i64 %165)
  %167 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %168 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  %169 = load i64, i64* @DATA_XFER_SZ, align 8
  %170 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %171 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load i64, i64* %12, align 8
  %173 = add i64 %172, 40
  store i64 %173, i64* %12, align 8
  %174 = load i64, i64* %12, align 8
  %175 = call i8* @lower_32_bits(i64 %174)
  %176 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %177 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = load i64, i64* %12, align 8
  %179 = call i8* @upper_32_bits(i64 %178)
  %180 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %181 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load i64, i64* @DATA_XFER_SZ, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @DATA_BUF_SZ, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %217

190:                                              ; preds = %138
  %191 = load i32, i32* @DATA_BUF_SZ, align 4
  %192 = load i32, i32* %9, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %198 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sge i32 %196, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %190
  %202 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %203 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %202, i32 0, i32 1
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %12, align 8
  %208 = load i64, i64* %12, align 8
  %209 = call i8* @lower_32_bits(i64 %208)
  %210 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %211 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  %212 = load i64, i64* %12, align 8
  %213 = call i8* @upper_32_bits(i64 %212)
  %214 = load %struct.xfer_desc*, %struct.xfer_desc** %13, align 8
  %215 = getelementptr inbounds %struct.xfer_desc, %struct.xfer_desc* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  store i32 0, i32* %2, align 4
  br label %231

216:                                              ; preds = %190
  br label %217

217:                                              ; preds = %216, %138
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %134

221:                                              ; preds = %134
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %72

225:                                              ; preds = %72
  store i32 0, i32* %2, align 4
  br label %231

226:                                              ; preds = %86, %45
  %227 = load %struct.pt3_adapter*, %struct.pt3_adapter** %3, align 8
  %228 = call i32 @pt3_free_dmabuf(%struct.pt3_adapter* %227)
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %226, %225, %201
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @pt3_init_dmabuf(%struct.pt3_adapter*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @lower_32_bits(i64) #1

declare dso_local i8* @upper_32_bits(i64) #1

declare dso_local i32 @pt3_free_dmabuf(%struct.pt3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
