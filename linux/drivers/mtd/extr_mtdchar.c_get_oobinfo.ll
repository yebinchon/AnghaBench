; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_get_oobinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_get_oobinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_oobinfo = type { i64**, i32, i64, i64* }
%struct.mtd_oob_region = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MTD_NANDECC_AUTOPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_oobinfo*)* @get_oobinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_oobinfo(%struct.mtd_info* %0, %struct.nand_oobinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_oobinfo*, align 8
  %6 = alloca %struct.mtd_oob_region, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_oobinfo* %1, %struct.nand_oobinfo** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = icmp ne %struct.mtd_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %15 = icmp ne %struct.nand_oobinfo* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %135

19:                                               ; preds = %13
  %20 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %21 = call i32 @memset(%struct.nand_oobinfo* %20, i32 0, i32 32)
  %22 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %23 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %87, %19
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %27 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 @ARRAY_SIZE(i64* %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %88

31:                                               ; preds = %24
  %32 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %32, i32 %33, %struct.mtd_oob_region* %6)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ERANGE, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %135

45:                                               ; preds = %38
  br label %88

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %52 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = call i32 @ARRAY_SIZE(i64* %53)
  %55 = icmp sgt i32 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %135

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %84, %59
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %65, %68
  %70 = icmp slt i64 %63, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %62
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %10, align 8
  %74 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %75 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %72, i64* %79, align 8
  %80 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %81 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %62

87:                                               ; preds = %62
  br label %24

88:                                               ; preds = %45, %24
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %128, %88
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %131

92:                                               ; preds = %89
  %93 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @mtd_ooblayout_free(%struct.mtd_info* %93, i32 %94, %struct.mtd_oob_region* %6)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @ERANGE, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %135

105:                                              ; preds = %98
  br label %131

106:                                              ; preds = %92
  %107 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %110 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %109, i32 0, i32 0
  %111 = load i64**, i64*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64*, i64** %111, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  store i64 %108, i64* %116, align 8
  %117 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %121 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %120, i32 0, i32 0
  %122 = load i64**, i64*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64*, i64** %122, i64 %124
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  store i64 %119, i64* %127, align 8
  br label %128

128:                                              ; preds = %106
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %89

131:                                              ; preds = %105, %89
  %132 = load i32, i32* @MTD_NANDECC_AUTOPLACE, align 4
  %133 = load %struct.nand_oobinfo*, %struct.nand_oobinfo** %5, align 8
  %134 = getelementptr inbounds %struct.nand_oobinfo, %struct.nand_oobinfo* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %103, %56, %43, %16
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @memset(%struct.nand_oobinfo*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

declare dso_local i32 @mtd_ooblayout_free(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
