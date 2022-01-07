; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_zlib.c_cudbg_compress_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_zlib.c_cudbg_compress_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i32 }
%struct.cudbg_buffer = type { i64, i64, i64, i32 }
%struct.z_stream_s = type { i64, i64, i64, i64, i64, i32 }
%struct.cudbg_compress_hdr = type { i64, i64, i32 }

@CUDBG_ZLIB_COMPRESS_ID = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@CUDBG_ZLIB_WIN_BITS = common dso_local global i32 0, align 4
@CUDBG_ZLIB_MEM_LVL = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@CUDBG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_compress_buff(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_buffer*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.z_stream_s, align 8
  %10 = alloca %struct.cudbg_compress_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_buffer* %2, %struct.cudbg_buffer** %7, align 8
  %12 = bitcast %struct.cudbg_buffer* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %14 = call i32 @cudbg_get_compress_hdr(%struct.cudbg_buffer* %13, %struct.cudbg_buffer* %8)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %97

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.cudbg_compress_hdr*
  store %struct.cudbg_compress_hdr* %22, %struct.cudbg_compress_hdr** %10, align 8
  %23 = load i32, i32* @CUDBG_ZLIB_COMPRESS_ID, align 4
  %24 = load %struct.cudbg_compress_hdr*, %struct.cudbg_compress_hdr** %10, align 8
  %25 = getelementptr inbounds %struct.cudbg_compress_hdr, %struct.cudbg_compress_hdr* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = call i32 @memset(%struct.z_stream_s* %9, i32 0, i32 48)
  %27 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %28 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %32 = load i32, i32* @Z_DEFLATED, align 4
  %33 = load i32, i32* @CUDBG_ZLIB_WIN_BITS, align 4
  %34 = load i32, i32* @CUDBG_ZLIB_MEM_LVL, align 4
  %35 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %36 = call i32 @zlib_deflateInit2(%struct.z_stream_s* %9, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @Z_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %19
  %41 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %41, i32* %4, align 4
  br label %97

42:                                               ; preds = %19
  %43 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 4
  store i64 %45, i64* %46, align 8
  %47 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 3
  store i64 %49, i64* %50, align 8
  %51 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %55 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 2
  store i64 %57, i64* %58, align 8
  %59 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %60 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %63 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* @Z_FINISH, align 4
  %68 = call i32 @zlib_deflate(%struct.z_stream_s* %9, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @Z_STREAM_END, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %42
  %73 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %73, i32* %4, align 4
  br label %97

74:                                               ; preds = %42
  %75 = call i32 @zlib_deflateEnd(%struct.z_stream_s* %9)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @Z_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %80, i32* %4, align 4
  br label %97

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cudbg_compress_hdr*, %struct.cudbg_compress_hdr** %10, align 8
  %85 = getelementptr inbounds %struct.cudbg_compress_hdr, %struct.cudbg_compress_hdr* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %87 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.cudbg_compress_hdr*, %struct.cudbg_compress_hdr** %10, align 8
  %90 = getelementptr inbounds %struct.cudbg_compress_hdr, %struct.cudbg_compress_hdr* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %81, %79, %72, %40, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_compress_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

declare dso_local i32 @memset(%struct.z_stream_s*, i32, i32) #2

declare dso_local i32 @zlib_deflateInit2(%struct.z_stream_s*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @zlib_deflate(%struct.z_stream_s*, i32) #2

declare dso_local i32 @zlib_deflateEnd(%struct.z_stream_s*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
