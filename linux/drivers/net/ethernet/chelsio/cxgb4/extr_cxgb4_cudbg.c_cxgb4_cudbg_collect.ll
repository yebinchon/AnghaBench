; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cxgb4_cudbg_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cxgb4_cudbg_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_buffer = type { i32, i32, i8*, i32 }
%struct.cudbg_init = type { i32, i64, i8*, %struct.adapter* }
%struct.cudbg_hdr = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@CUDBG_SIGNATURE = common dso_local global i32 0, align 4
@CUDBG_MAJOR_VERSION = common dso_local global i32 0, align 4
@CUDBG_MINOR_VERSION = common dso_local global i32 0, align 4
@CUDBG_MAX_ENTITY = common dso_local global i32 0, align 4
@CUDBG_DUMP_TYPE_MINI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CUDBG_COMPRESSION_ZLIB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"Fail allocating compression buffer ret: %d.  Continuing without compression.\0A\00", align 1
@CUDBG_COMPRESSION_NONE = common dso_local global i64 0, align 8
@CXGB4_ETH_DUMP_HW = common dso_local global i32 0, align 4
@cxgb4_collect_hw_dump = common dso_local global i32 0, align 4
@CXGB4_ETH_DUMP_MEM = common dso_local global i32 0, align 4
@cxgb4_collect_mem_dump = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_cudbg_collect(%struct.adapter* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cudbg_buffer, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cudbg_init, align 8
  %15 = alloca %struct.cudbg_hdr*, align 8
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = bitcast %struct.cudbg_buffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = call i32 @memset(%struct.cudbg_init* %14, i32 0, i32 32)
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 3
  store %struct.adapter* %21, %struct.adapter** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.cudbg_hdr*
  store %struct.cudbg_hdr* %33, %struct.cudbg_hdr** %15, align 8
  %34 = load i32, i32* @CUDBG_SIGNATURE, align 4
  %35 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %36 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %38 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %37, i32 0, i32 0
  store i32 40, i32* %38, align 8
  %39 = load i32, i32* @CUDBG_MAJOR_VERSION, align 4
  %40 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %41 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @CUDBG_MINOR_VERSION, align 4
  %43 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %44 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @CUDBG_MAX_ENTITY, align 4
  %46 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %47 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %53 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @CUDBG_DUMP_TYPE_MINI, align 4
  %55 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %56 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %58 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = add i64 40, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %4
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %140

70:                                               ; preds = %4
  %71 = call i32 (...) @cudbg_get_workspace_size()
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i64, i64* @CUDBG_COMPRESSION_ZLIB, align 8
  %76 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  %77 = call i32 @cudbg_alloc_compress_buff(%struct.cudbg_init* %14)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.adapter*, %struct.adapter** %6, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i64, i64* @CUDBG_COMPRESSION_NONE, align 8
  %87 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %80, %74
  br label %92

89:                                               ; preds = %70
  %90 = load i64, i64* @CUDBG_COMPRESSION_NONE, align 8
  %91 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 1
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %89, %88
  %93 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %96 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @CXGB4_ETH_DUMP_HW, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %92
  %108 = load i32, i32* @cxgb4_collect_hw_dump, align 4
  %109 = load i32, i32* @cxgb4_collect_hw_dump, align 4
  %110 = call i32 @ARRAY_SIZE(i32 %109)
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @cxgb4_cudbg_collect_entity(%struct.cudbg_init* %14, %struct.cudbg_buffer* %10, i32 %108, i32 %110, i8* %111, i32* %13)
  br label %113

113:                                              ; preds = %107, %92
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @CXGB4_ETH_DUMP_MEM, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @cxgb4_collect_mem_dump, align 4
  %120 = load i32, i32* @cxgb4_collect_mem_dump, align 4
  %121 = call i32 @ARRAY_SIZE(i32 %120)
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @cxgb4_cudbg_collect_entity(%struct.cudbg_init* %14, %struct.cudbg_buffer* %10, i32 %119, i32 %121, i8* %122, i32* %13)
  br label %124

124:                                              ; preds = %118, %113
  %125 = call i32 @cudbg_free_compress_buff(%struct.cudbg_init* %14)
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %15, align 8
  %128 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CUDBG_COMPRESSION_NONE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i32, i32* %11, align 4
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  br label %139

136:                                              ; preds = %124
  %137 = load i32, i32* %13, align 4
  %138 = load i32*, i32** %8, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %67
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.cudbg_init*, i32, i32) #2

declare dso_local i32 @cudbg_get_workspace_size(...) #2

declare dso_local i32 @cudbg_alloc_compress_buff(%struct.cudbg_init*) #2

declare dso_local i32 @dev_warn(i32, i8*, i32) #2

declare dso_local i32 @cxgb4_cudbg_collect_entity(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, i32, i8*, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @cudbg_free_compress_buff(%struct.cudbg_init*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
