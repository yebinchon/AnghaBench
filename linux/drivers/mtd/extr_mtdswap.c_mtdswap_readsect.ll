; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_readsect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_readsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.mtdswap_dev = type { i32*, i32, i64*, i32, i32, %struct.swap_eb*, i32, %struct.mtd_info* }
%struct.swap_eb = type { i32 }
%struct.mtd_info = type { i32 }

@header = common dso_local global i64 0, align 8
@BLOCK_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@BLOCK_UNDEF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_UNDEF = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EBLOCK_BITFLIP = common dso_local global i32 0, align 4
@MTDSWAP_BITFLIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Read error %d\0A\00", align 1
@EBLOCK_READERR = common dso_local global i32 0, align 4
@MTDSWAP_FAILING = common dso_local global i32 0, align 4
@MTDSWAP_IO_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Short read %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i8*)* @mtdswap_readsect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_readsect(%struct.mtd_blktrans_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_blktrans_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mtdswap_dev*, align 8
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.swap_eb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %17 = call %struct.mtdswap_dev* @MTDSWAP_MBD_TO_MTDSWAP(%struct.mtd_blktrans_dev* %16)
  store %struct.mtdswap_dev* %17, %struct.mtdswap_dev** %8, align 8
  %18 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %19 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %18, i32 0, i32 7
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  store %struct.mtd_info* %20, %struct.mtd_info** %9, align 8
  %21 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %22 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load i64, i64* @header, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @mtdswap_auto_header(%struct.mtdswap_dev* %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %149

37:                                               ; preds = %27
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %37, %3
  %41 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %42 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @BLOCK_MAX, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = call i32 @memset(i8* %51, i32 0, i64 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @BLOCK_UNDEF, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %149

58:                                               ; preds = %50
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %149

61:                                               ; preds = %40
  %62 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %63 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %62, i32 0, i32 5
  %64 = load %struct.swap_eb*, %struct.swap_eb** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %67 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = udiv i32 %65, %68
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %64, i64 %70
  store %struct.swap_eb* %71, %struct.swap_eb** %13, align 8
  %72 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %73 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PAGE_UNDEF, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = shl i32 %83, %84
  store i32 %85, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %133, %61
  %87 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @mtd_read(%struct.mtd_info* %87, i32 %88, i64 %89, i64* %14, i8* %90)
  store i32 %91, i32* %15, align 4
  %92 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %93 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i64 @mtd_is_bitflip(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %86
  %100 = load i32, i32* @EBLOCK_BITFLIP, align 4
  %101 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %102 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %106 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %107 = load i32, i32* @MTDSWAP_BITFLIP, align 4
  %108 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %105, %struct.swap_eb* %106, i32 %107)
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %99, %86
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %109
  %113 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %114 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* @EBLOCK_READERR, align 4
  %120 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %121 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %125 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %126 = load i32, i32* @MTDSWAP_FAILING, align 4
  %127 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %124, %struct.swap_eb* %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @MTDSWAP_IO_RETRIES, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %112
  br label %86

134:                                              ; preds = %112
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %4, align 4
  br label %149

136:                                              ; preds = %109
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* @PAGE_SIZE, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %142 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %144)
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %149

148:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %140, %134, %58, %57, %33
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.mtdswap_dev* @MTDSWAP_MBD_TO_MTDSWAP(%struct.mtd_blktrans_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtdswap_auto_header(%struct.mtdswap_dev*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @mtdswap_rb_add(%struct.mtdswap_dev*, %struct.swap_eb*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
