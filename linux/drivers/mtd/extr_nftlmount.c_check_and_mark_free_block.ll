; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_check_and_mark_free_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_check_and_mark_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.nftl_uci1 = type { i32, i32, i32 }

@SECTORSIZE = common dso_local global i32 0, align 4
@ERASE_MARK = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NFTLrecord*, i32)* @check_and_mark_free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_and_mark_free_block(%struct.NFTLrecord* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.NFTLrecord*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nftl_uci1, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %11 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  store %struct.mtd_info* %13, %struct.mtd_info** %6, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %17 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* @SECTORSIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = add nsw i32 %21, 8
  %23 = bitcast %struct.nftl_uci1* %7 to i8*
  %24 = call i64 @nftl_read_oob(%struct.mtd_info* %14, i32 %22, i32 8, i64* %9, i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %29, %31
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ERASE_MARK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %27
  %38 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %41 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %45 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @check_free_sectors(%struct.NFTLrecord* %38, i32 %43, i32 %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %77

50:                                               ; preds = %37
  %51 = load i32, i32* @ERASE_MARK, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %7, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @ERASE_MARK, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %7, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = call i32 @cpu_to_le32(i32 0)
  %60 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %7, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %64 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = load i32, i32* @SECTORSIZE, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 8
  %70 = bitcast %struct.nftl_uci1* %7 to i8*
  %71 = call i64 @nftl_write_oob(%struct.mtd_info* %61, i32 %69, i32 8, i64* %9, i8* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %77

74:                                               ; preds = %50
  br label %76

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %75, %74
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %73, %49, %26
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @check_free_sectors(%struct.NFTLrecord*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @nftl_write_oob(%struct.mtd_info*, i32, i32, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
