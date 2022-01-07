; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_static_config_buf_prepare_for_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_static_config_buf_prepare_for_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__*, %struct.sja1105_static_config }
%struct.TYPE_2__ = type { i32 }
%struct.sja1105_static_config = type { i32 }
%struct.sja1105_table_header = type { i32 }

@SJA1105_CONFIG_OK = common dso_local global i64 0, align 8
@sja1105_static_config_error_msg = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SJA1105_SIZE_TABLE_HEADER = common dso_local global i8* null, align 8
@UNPACK = common dso_local global i32 0, align 4
@PACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i8*, i32)* @static_config_buf_prepare_for_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @static_config_buf_prepare_for_upload(%struct.sja1105_private* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1105_static_config*, align 8
  %9 = alloca %struct.sja1105_table_header, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %14 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %13, i32 0, i32 1
  store %struct.sja1105_static_config* %14, %struct.sja1105_static_config** %8, align 8
  %15 = load %struct.sja1105_static_config*, %struct.sja1105_static_config** %8, align 8
  %16 = call i64 @sja1105_static_config_check_valid(%struct.sja1105_static_config* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @SJA1105_CONFIG_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %22 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** @sja1105_static_config_error_msg, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32* %24, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.sja1105_static_config*, %struct.sja1105_static_config** %8, align 8
  %35 = call i32 @sja1105_static_config_pack(i8* %33, %struct.sja1105_static_config* %34)
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 4
  store i32 %37, i32* %12, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  %42 = load i8*, i8** @SJA1105_SIZE_TABLE_HEADER, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @UNPACK, align 4
  %49 = call i32 @sja1105_table_header_packing(i8* %47, %struct.sja1105_table_header* %9, i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @sja1105_crc32(i8* %50, i32 %51)
  %53 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @PACK, align 4
  %56 = call i32 @sja1105_table_header_packing(i8* %54, %struct.sja1105_table_header* %9, i32 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %32, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @sja1105_static_config_check_valid(%struct.sja1105_static_config*) #1

declare dso_local i32 @dev_err(i32*, i32) #1

declare dso_local i32 @sja1105_static_config_pack(i8*, %struct.sja1105_static_config*) #1

declare dso_local i32 @sja1105_table_header_packing(i8*, %struct.sja1105_table_header*, i32) #1

declare dso_local i32 @sja1105_crc32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
