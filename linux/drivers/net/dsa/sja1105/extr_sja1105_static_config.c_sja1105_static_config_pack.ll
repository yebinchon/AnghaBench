; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_static_config_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_static_config_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_static_config = type { %struct.sja1105_table*, i32 }
%struct.sja1105_table = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 (i8*, i32*, i32)* }
%struct.sja1105_table_header = type { i32, i32, i64, i32 }

@SJA1105_SIZE_DEVICE_ID = common dso_local global i32 0, align 4
@BLK_IDX_MAX = common dso_local global i32 0, align 4
@blk_id_map = common dso_local global i64* null, align 8
@SJA1105_SIZE_TABLE_HEADER = common dso_local global i32 0, align 4
@PACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sja1105_static_config_pack(i8* %0, %struct.sja1105_static_config* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sja1105_static_config*, align 8
  %5 = alloca %struct.sja1105_table_header, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sja1105_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sja1105_static_config* %1, %struct.sja1105_static_config** %4, align 8
  %12 = bitcast %struct.sja1105_table_header* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.sja1105_static_config*, %struct.sja1105_static_config** %4, align 8
  %16 = getelementptr inbounds %struct.sja1105_static_config, %struct.sja1105_static_config* %15, i32 0, i32 1
  %17 = call i32 @sja1105_pack(i8* %14, i32* %16, i32 31, i32 0, i32 4)
  %18 = load i32, i32* @SJA1105_SIZE_DEVICE_ID, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %116, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BLK_IDX_MAX, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %119

26:                                               ; preds = %22
  %27 = load %struct.sja1105_static_config*, %struct.sja1105_static_config** %4, align 8
  %28 = getelementptr inbounds %struct.sja1105_static_config, %struct.sja1105_static_config* %27, i32 0, i32 0
  %29 = load %struct.sja1105_table*, %struct.sja1105_table** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %29, i64 %31
  store %struct.sja1105_table* %32, %struct.sja1105_table** %9, align 8
  %33 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %34 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %116

38:                                               ; preds = %26
  %39 = load i64*, i64** @blk_id_map, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %5, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %46 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %49 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %47, %52
  %54 = sdiv i32 %53, 4
  %55 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %5, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @sja1105_table_header_pack_with_crc(i8* %56, %struct.sja1105_table_header* %5)
  %58 = load i32, i32* @SJA1105_SIZE_TABLE_HEADER, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %107, %38
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %66 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %110

69:                                               ; preds = %63
  %70 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %71 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %75 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = load i32*, i32** %11, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %11, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %85 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memset(i8* %83, i32 0, i32 %88)
  %90 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %91 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* @PACK, align 4
  %98 = call i32 %94(i8* %95, i32* %96, i32 %97)
  %99 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %100 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %7, align 8
  br label %107

107:                                              ; preds = %69
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %63

110:                                              ; preds = %63
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @sja1105_table_write_crc(i8* %111, i8* %112)
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  store i8* %115, i8** %7, align 8
  br label %116

116:                                              ; preds = %110, %37
  %117 = load i32, i32* %6, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %22

119:                                              ; preds = %22
  %120 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %5, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %5, i32 0, i32 0
  store i32 0, i32* %121, align 8
  %122 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %5, i32 0, i32 1
  store i32 -559038737, i32* %122, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* @SJA1105_SIZE_TABLE_HEADER, align 4
  %125 = call i32 @memset(i8* %123, i32 0, i32 %124)
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* @PACK, align 4
  %128 = call i32 @sja1105_table_header_packing(i8* %126, %struct.sja1105_table_header* %5, i32 %127)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sja1105_pack(i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @sja1105_table_header_pack_with_crc(i8*, %struct.sja1105_table_header*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sja1105_table_write_crc(i8*, i8*) #2

declare dso_local i32 @sja1105_table_header_packing(i8*, %struct.sja1105_table_header*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
