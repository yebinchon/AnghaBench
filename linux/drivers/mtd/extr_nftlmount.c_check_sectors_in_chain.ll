; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_check_sectors_in_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_check_sectors_in_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.nftl_bci = type { i32, i32 }

@SECTORSIZE = common dso_local global i32 0, align 4
@SECTOR_IGNORE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"Incorrect free sector %d in block %d: marking it as ignored\0A\00", align 1
@BLOCK_NIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"incorrect ReplUnitTable[] : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.NFTLrecord*, i32)* @check_sectors_in_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sectors_in_chain(%struct.NFTLrecord* %0, i32 %1) #0 {
  %3 = alloca %struct.NFTLrecord*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nftl_bci, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %13 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  store %struct.mtd_info* %15, %struct.mtd_info** %5, align 8
  %16 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %17 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SECTORSIZE, align 4
  %20 = udiv i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %128, %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %94, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %97

27:                                               ; preds = %23
  %28 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %31 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul i32 %29, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SECTORSIZE, align 4
  %36 = mul i32 %34, %35
  %37 = add i32 %33, %36
  %38 = bitcast %struct.nftl_bci* %9 to i8*
  %39 = call i64 @nftl_read_oob(%struct.mtd_info* %28, i32 %37, i32 8, i64* %11, i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load i8*, i8** @SECTOR_IGNORE, align 8
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %8, align 4
  br label %50

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.nftl_bci, %struct.nftl_bci* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.nftl_bci, %struct.nftl_bci* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %46, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %92 [
    i32 128, label %52
  ]

52:                                               ; preds = %50
  %53 = call i32 @memcmpb(%struct.nftl_bci* %9, i32 255, i32 8)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %52
  %56 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %59 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul i32 %57, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SECTORSIZE, align 4
  %64 = mul i32 %62, %63
  %65 = add i32 %61, %64
  %66 = load i32, i32* @SECTORSIZE, align 4
  %67 = call i32 @check_free_sectors(%struct.NFTLrecord* %56, i32 %65, i32 %66, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %55, %52
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i8*, i8** @SECTOR_IGNORE, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = getelementptr inbounds %struct.nftl_bci, %struct.nftl_bci* %9, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load i8*, i8** @SECTOR_IGNORE, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = getelementptr inbounds %struct.nftl_bci, %struct.nftl_bci* %9, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %82 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul i32 %80, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @SECTORSIZE, align 4
  %87 = mul i32 %85, %86
  %88 = add i32 %84, %87
  %89 = bitcast %struct.nftl_bci* %9 to i8*
  %90 = call i32 @nftl_write_oob(%struct.mtd_info* %79, i32 %88, i32 8, i64* %11, i8* %89)
  br label %91

91:                                               ; preds = %69, %55
  br label %93

92:                                               ; preds = %50
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %23

97:                                               ; preds = %23
  %98 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %99 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @BLOCK_NIL, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %117, label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %111 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ult i32 %109, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  %116 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %108, %97
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @BLOCK_NIL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.NFTLrecord*, %struct.NFTLrecord** %3, align 8
  %124 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp uge i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %121, %117
  br label %129

128:                                              ; preds = %121
  br label %22

129:                                              ; preds = %127
  ret void
}

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i32 @memcmpb(%struct.nftl_bci*, i32, i32) #1

declare dso_local i32 @check_free_sectors(%struct.NFTLrecord*, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @nftl_write_oob(%struct.mtd_info*, i32, i32, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
