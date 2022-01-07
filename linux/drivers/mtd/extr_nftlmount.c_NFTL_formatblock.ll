; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_NFTL_formatblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_NFTL_formatblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, %struct.TYPE_2__, %struct.erase_info }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.erase_info = type { i32, i32 }
%struct.nftl_uci1 = type { i32, i32, i32 }

@SECTORSIZE = common dso_local global i64 0, align 8
@ERASE_MARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error while formatting block %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NFTL_formatblock(%struct.NFTLrecord* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.NFTLrecord*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nftl_uci1, align 4
  %10 = alloca %struct.erase_info*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %13 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %12, i32 0, i32 2
  store %struct.erase_info* %13, %struct.erase_info** %10, align 8
  %14 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %15 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  store %struct.mtd_info* %17, %struct.mtd_info** %11, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %21 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @SECTORSIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 8
  %28 = bitcast %struct.nftl_uci1* %9 to i8*
  %29 = call i64 @nftl_read_oob(%struct.mtd_info* %18, i64 %27, i32 8, i64* %6, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %43

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %34, %36
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ERASE_MARK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* @ERASE_MARK, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @ERASE_MARK, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = call i32 @cpu_to_le32(i32 0)
  %53 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %32
  %55 = load %struct.erase_info*, %struct.erase_info** %10, align 8
  %56 = call i32 @memset(%struct.erase_info* %55, i32 0, i32 8)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %59 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.erase_info*, %struct.erase_info** %10, align 8
  %63 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %65 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.erase_info*, %struct.erase_info** %10, align 8
  %68 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %70 = load %struct.erase_info*, %struct.erase_info** %10, align 8
  %71 = call i64 @mtd_erase(%struct.mtd_info* %69, %struct.erase_info* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %54
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %117

76:                                               ; preds = %54
  %77 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le32_to_cpu(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %76
  %87 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %88 = load %struct.erase_info*, %struct.erase_info** %10, align 8
  %89 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %92 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @check_free_sectors(%struct.NFTLrecord* %87, i32 %90, i32 %93, i32 1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %117

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %105 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %103, %106
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @SECTORSIZE, align 8
  %110 = add nsw i64 %108, %109
  %111 = add nsw i64 %110, 8
  %112 = bitcast %struct.nftl_uci1* %9 to i8*
  %113 = call i64 @nftl_write_oob(%struct.mtd_info* %102, i64 %111, i32 8, i64* %6, i8* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  br label %117

116:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %126

117:                                              ; preds = %115, %96, %73
  %118 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %119 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.mtd_info*, %struct.mtd_info** %120, align 8
  %122 = load %struct.erase_info*, %struct.erase_info** %10, align 8
  %123 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mtd_block_markbad(%struct.mtd_info* %121, i32 %124)
  store i32 -1, i32* %3, align 4
  br label %126

126:                                              ; preds = %117, %116
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.erase_info*, i32, i32) #1

declare dso_local i64 @mtd_erase(%struct.mtd_info*, %struct.erase_info*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @check_free_sectors(%struct.NFTLrecord*, i32, i32, i32) #1

declare dso_local i64 @nftl_write_oob(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i32 @mtd_block_markbad(%struct.mtd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
