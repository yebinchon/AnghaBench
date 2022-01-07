; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_read_from_cache_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_read_from_cache_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.spi_mem_dirmap_desc* }
%struct.spi_mem_dirmap_desc = type { i32 }
%struct.nand_page_io_req = type { i32, i64, i64, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nand_device = type { i32 }
%struct.mtd_info = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MTD_OPS_AUTO_OOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, %struct.nand_page_io_req*)* @spinand_read_from_cache_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_read_from_cache_op(%struct.spinand_device* %0, %struct.nand_page_io_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spinand_device*, align 8
  %5 = alloca %struct.nand_page_io_req*, align 8
  %6 = alloca %struct.nand_device*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %4, align 8
  store %struct.nand_page_io_req* %1, %struct.nand_page_io_req** %5, align 8
  %13 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %14 = call %struct.nand_device* @spinand_to_nand(%struct.spinand_device* %13)
  store %struct.nand_device* %14, %struct.nand_device** %6, align 8
  %15 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %16 = call %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device* %15)
  store %struct.mtd_info* %16, %struct.mtd_info** %7, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %18 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %23 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %26 = call i8* @nanddev_page_size(%struct.nand_device* %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %30 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %35 = call i64 @nanddev_per_page_oobsize(%struct.nand_device* %34)
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %33
  %43 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %44 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  %46 = load %struct.nand_device*, %struct.nand_device** %6, align 8
  %47 = call i8* @nanddev_page_size(%struct.nand_device* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %42, %33
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %52 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %55 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %59, align 8
  store %struct.spi_mem_dirmap_desc* %60, %struct.spi_mem_dirmap_desc** %8, align 8
  br label %61

61:                                               ; preds = %84, %50
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @spi_mem_dirmap_read(%struct.spi_mem_dirmap_desc* %65, i32 %66, i32 %67, i8* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %3, align 4
  br label %163

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77, %74
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %163

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr i8, i8* %92, i64 %93
  store i8* %94, i8** %10, align 8
  br label %61

95:                                               ; preds = %61
  %96 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %97 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %102 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %106 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %109 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr i8, i8* %107, i64 %111
  %113 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %114 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @memcpy(i32 %104, i8* %112, i64 %115)
  br label %117

117:                                              ; preds = %100, %95
  %118 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %119 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %162

122:                                              ; preds = %117
  %123 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %124 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MTD_OPS_AUTO_OOB, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %130 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %131 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %135 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %138 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %141 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @mtd_ooblayout_get_databytes(%struct.mtd_info* %129, i32 %133, i8* %136, i32 %139, i64 %142)
  br label %161

144:                                              ; preds = %122
  %145 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %146 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.spinand_device*, %struct.spinand_device** %4, align 8
  %150 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %153 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr i8, i8* %151, i64 %155
  %157 = load %struct.nand_page_io_req*, %struct.nand_page_io_req** %5, align 8
  %158 = getelementptr inbounds %struct.nand_page_io_req, %struct.nand_page_io_req* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @memcpy(i32 %148, i8* %156, i64 %159)
  br label %161

161:                                              ; preds = %144, %128
  br label %162

162:                                              ; preds = %161, %117
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %81, %72
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.nand_device* @spinand_to_nand(%struct.spinand_device*) #1

declare dso_local %struct.mtd_info* @nanddev_to_mtd(%struct.nand_device*) #1

declare dso_local i8* @nanddev_page_size(%struct.nand_device*) #1

declare dso_local i64 @nanddev_per_page_oobsize(%struct.nand_device*) #1

declare dso_local i32 @spi_mem_dirmap_read(%struct.spi_mem_dirmap_desc*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @mtd_ooblayout_get_databytes(%struct.mtd_info*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
