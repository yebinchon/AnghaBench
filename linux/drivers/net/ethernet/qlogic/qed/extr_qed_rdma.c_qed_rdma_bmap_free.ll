; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_bmap_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_bmap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_bmap = type { i64*, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"%s bitmap not free - size=%d, weight=%d, 512 bits per line\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"line 0x%04x: 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"line 0x%04x: \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"0x%016llx \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_rdma_bmap_free(%struct.qed_hwfn* %0, %struct.qed_bmap* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [200 x i32], align 16
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_bmap* %1, %struct.qed_bmap** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %16 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %19 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bitmap_weight(i64* %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %23 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %24, 512
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 8
  %28 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %29 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %30, 512
  %32 = call i32 @DIV_ROUND_UP(i32 %31, i32 64)
  %33 = add nsw i32 %27, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %35 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = bitcast i64* %36 to i32*
  store i32* %37, i32** %10, align 8
  %38 = bitcast [200 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 800, i1 false)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %3
  br label %174

45:                                               ; preds = %41
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %48 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %51 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %46, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %53)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %119, %45
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = bitcast i32* %63 to i64*
  %65 = call i32 @bitmap_weight(i64* %64, i32 512)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %118

67:                                               ; preds = %59
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 5
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 6
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 7
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %68, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %74, i32 %80, i32 %86, i32 %92, i32 %98, i32 %104, i32 %110, i32 %116)
  br label %118

118:                                              ; preds = %67, %59
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 8
  store i32 %123, i32* %12, align 4
  br label %55

124:                                              ; preds = %55
  %125 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %126 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = srem i32 %127, 512
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %173

130:                                              ; preds = %124
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = bitcast i32* %134 to i64*
  %136 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %137 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 %139, 64
  %141 = sub nsw i32 %138, %140
  %142 = call i32 @bitmap_weight(i64* %135, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %130
  %145 = getelementptr inbounds [200 x i32], [200 x i32]* %14, i64 0, i64 0
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @sprintf(i32* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %165, %144
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = getelementptr inbounds [200 x i32], [200 x i32]* %14, i64 0, i64 0
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @sprintf(i32* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %152
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %148

168:                                              ; preds = %148
  %169 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %170 = getelementptr inbounds [200 x i32], [200 x i32]* %14, i64 0, i64 0
  %171 = ptrtoint i32* %170 to i32
  %172 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %130, %124
  br label %174

174:                                              ; preds = %173, %44
  %175 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %176 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = call i32 @kfree(i64* %177)
  %179 = load %struct.qed_bmap*, %struct.qed_bmap** %5, align 8
  %180 = getelementptr inbounds %struct.qed_bmap, %struct.qed_bmap* %179, i32 0, i32 0
  store i64* null, i64** %180, align 8
  ret void
}

declare dso_local i32 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, ...) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
