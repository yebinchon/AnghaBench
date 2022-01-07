; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_ctx_pg_tbls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_ctx_pg_tbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_ctx_pg_info = type { i32, i32*, i32*, %struct.bnxt_ring_mem_info, %struct.bnxt_ctx_pg_info** }
%struct.bnxt_ring_mem_info = type { i32, i32, i32, i32 }

@BNXT_PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_CTX_TOTAL_PAGES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_CTX_PAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_ctx_pg_info*, i32, i32)* @bnxt_alloc_ctx_pg_tbls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_ctx_pg_tbls(%struct.bnxt* %0, %struct.bnxt_ctx_pg_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_ctx_pg_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt_ring_mem_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnxt_ctx_pg_info*, align 8
  %15 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_ctx_pg_info* %1, %struct.bnxt_ctx_pg_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %17 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %16, i32 0, i32 3
  store %struct.bnxt_ring_mem_info* %17, %struct.bnxt_ring_mem_info** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %177

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @BNXT_PAGE_SIZE, align 4
  %24 = call i8* @DIV_ROUND_UP(i32 %22, i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %27 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %29 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MAX_CTX_TOTAL_PAGES, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %35 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %177

38:                                               ; preds = %21
  %39 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %40 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MAX_CTX_PAGES, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %154

47:                                               ; preds = %44, %38
  %48 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %49 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %48, i32 0, i32 0
  store i32 2, i32* %49, align 4
  %50 = load i32, i32* @MAX_CTX_PAGES, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.bnxt_ctx_pg_info** @kcalloc(i32 %50, i32 8, i32 %51)
  %53 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %54 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %53, i32 0, i32 4
  store %struct.bnxt_ctx_pg_info** %52, %struct.bnxt_ctx_pg_info*** %54, align 8
  %55 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %56 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %55, i32 0, i32 4
  %57 = load %struct.bnxt_ctx_pg_info**, %struct.bnxt_ctx_pg_info*** %56, align 8
  %58 = icmp ne %struct.bnxt_ctx_pg_info** %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %177

62:                                               ; preds = %47
  %63 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %64 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MAX_CTX_PAGES, align 4
  %67 = call i8* @DIV_ROUND_UP(i32 %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %71 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %73 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %74 = call i32 @bnxt_alloc_ctx_mem_blk(%struct.bnxt* %72, %struct.bnxt_ctx_pg_info* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %5, align 4
  br label %177

79:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %150, %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %153

84:                                               ; preds = %80
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.bnxt_ctx_pg_info* @kzalloc(i32 48, i32 %85)
  store %struct.bnxt_ctx_pg_info* %86, %struct.bnxt_ctx_pg_info** %14, align 8
  %87 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %14, align 8
  %88 = icmp ne %struct.bnxt_ctx_pg_info* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %177

92:                                               ; preds = %84
  %93 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %14, align 8
  %94 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %95 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %94, i32 0, i32 4
  %96 = load %struct.bnxt_ctx_pg_info**, %struct.bnxt_ctx_pg_info*** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %96, i64 %98
  store %struct.bnxt_ctx_pg_info* %93, %struct.bnxt_ctx_pg_info** %99, align 8
  %100 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %14, align 8
  %101 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %100, i32 0, i32 3
  store %struct.bnxt_ring_mem_info* %101, %struct.bnxt_ring_mem_info** %10, align 8
  %102 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %103 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %110 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %112 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %119 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %121 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  %122 = load i32, i32* @MAX_CTX_PAGES, align 4
  %123 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %124 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %92
  %130 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %131 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MAX_CTX_PAGES, align 4
  %134 = srem i32 %132, %133
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %140 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %129
  br label %142

142:                                              ; preds = %141, %92
  %143 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %144 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %14, align 8
  %145 = call i32 @bnxt_alloc_ctx_mem_blk(%struct.bnxt* %143, %struct.bnxt_ctx_pg_info* %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %153

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %80

153:                                              ; preds = %148, %80
  br label %175

154:                                              ; preds = %44
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @BNXT_PAGE_SIZE, align 4
  %157 = call i8* @DIV_ROUND_UP(i32 %155, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %160 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %162 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %168, label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165, %154
  %169 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %10, align 8
  %170 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %165
  %172 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %173 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %7, align 8
  %174 = call i32 @bnxt_alloc_ctx_mem_blk(%struct.bnxt* %172, %struct.bnxt_ctx_pg_info* %173)
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %171, %153
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %89, %77, %59, %33, %20
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.bnxt_ctx_pg_info** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @bnxt_alloc_ctx_mem_blk(%struct.bnxt*, %struct.bnxt_ctx_pg_info*) #1

declare dso_local %struct.bnxt_ctx_pg_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
