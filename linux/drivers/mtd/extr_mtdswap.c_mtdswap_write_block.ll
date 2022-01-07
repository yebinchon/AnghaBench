; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, i8**, i32, i32, i32*, %struct.swap_eb*, %struct.mtd_info* }
%struct.swap_eb = type { i32 }
%struct.mtd_info = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_UNDEF = common dso_local global i8* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Write to MTD device failed: %d (%zd written)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Short write to MTD device: %zd written\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, i8*, i32, i32*, i32)* @mtdswap_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_write_block(%struct.mtdswap_dev* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtdswap_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca %struct.swap_eb*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %18 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %17, i32 0, i32 6
  %19 = load %struct.mtd_info*, %struct.mtd_info** %18, align 8
  store %struct.mtd_info* %19, %struct.mtd_info** %12, align 8
  br label %20

20:                                               ; preds = %100, %62, %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %36, %23
  %25 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %26 = call i32 @mtdswap_enough_free_pages(%struct.mtdswap_dev* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %31 = call i64 @mtdswap_gc(%struct.mtdswap_dev* %30, i32 0)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %163

36:                                               ; preds = %29
  br label %24

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @mtdswap_map_free_block(%struct.mtdswap_dev* %39, i32 %40, i32* %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %44 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %43, i32 0, i32 5
  %45 = load %struct.swap_eb*, %struct.swap_eb** %44, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %49 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = udiv i32 %47, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %45, i64 %52
  store %struct.swap_eb* %53, %struct.swap_eb** %13, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @mtd_is_eccerr(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58, %38
  %63 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %64 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %66 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  %69 = load i8*, i8** @PAGE_UNDEF, align 8
  %70 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %71 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  store i8* %69, i8** %76, align 8
  br label %20

77:                                               ; preds = %58
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %6, align 4
  br label %163

82:                                               ; preds = %77
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PAGE_SHIFT, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %15, align 4
  %87 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i64, i64* @PAGE_SIZE, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @mtd_write(%struct.mtd_info* %87, i32 %88, i64 %89, i64* %14, i8* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %16, align 4
  %98 = call i64 @mtd_is_eccerr(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %96, %82
  %101 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %102 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %106 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load i8*, i8** @PAGE_UNDEF, align 8
  %110 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %111 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %110, i32 0, i32 1
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %112, i64 %115
  store i8* %109, i8** %116, align 8
  %117 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %118 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %119 = call i32 @mtdswap_handle_write_error(%struct.mtdswap_dev* %117, %struct.swap_eb* %118)
  br label %20

120:                                              ; preds = %96
  %121 = load i32, i32* %16, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %125 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %14, align 8
  %130 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %128, i64 %129)
  br label %145

131:                                              ; preds = %120
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* @PAGE_SIZE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %137 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %14, align 8
  %140 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %16, align 4
  br label %145

143:                                              ; preds = %131
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %6, align 4
  br label %163

145:                                              ; preds = %135, %123
  %146 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %147 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %147, align 8
  %150 = load %struct.swap_eb*, %struct.swap_eb** %13, align 8
  %151 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 4
  %154 = load i8*, i8** @PAGE_UNDEF, align 8
  %155 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %156 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  store i8* %154, i8** %161, align 8
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %145, %143, %80, %33
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @mtdswap_enough_free_pages(%struct.mtdswap_dev*) #1

declare dso_local i64 @mtdswap_gc(%struct.mtdswap_dev*, i32) #1

declare dso_local i32 @mtdswap_map_free_block(%struct.mtdswap_dev*, i32, i32*) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i32 @mtd_write(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i32 @mtdswap_handle_write_error(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
