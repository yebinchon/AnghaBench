; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_shrink_ecclayout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_shrink_ecclayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_ecclayout_user = type { %struct.TYPE_2__*, i32, i64, i64* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mtd_oob_region = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MTD_MAX_ECCPOS_ENTRIES = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MTD_MAX_OOBFREE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_ecclayout_user*)* @shrink_ecclayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_ecclayout(%struct.mtd_info* %0, %struct.nand_ecclayout_user* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_ecclayout_user*, align 8
  %6 = alloca %struct.mtd_oob_region, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_ecclayout_user* %1, %struct.nand_ecclayout_user** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = icmp ne %struct.mtd_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %15 = icmp ne %struct.nand_ecclayout_user* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %133

19:                                               ; preds = %13
  %20 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %21 = call i32 @memset(%struct.nand_ecclayout_user* %20, i32 0, i32 32)
  %22 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %23 = getelementptr inbounds %struct.nand_ecclayout_user, %struct.nand_ecclayout_user* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %76, %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MTD_MAX_ECCPOS_ENTRIES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = call i32 @mtd_ooblayout_ecc(%struct.mtd_info* %29, i32 %30, %struct.mtd_oob_region* %6)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ERANGE, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %133

42:                                               ; preds = %35
  br label %77

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %73, %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MTD_MAX_ECCPOS_ENTRIES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %53, %55
  %57 = icmp slt i64 %51, %56
  br label %58

58:                                               ; preds = %50, %46
  %59 = phi i1 [ false, %46 ], [ %57, %50 ]
  br i1 %59, label %60, label %76

60:                                               ; preds = %58
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %10, align 8
  %63 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %64 = getelementptr inbounds %struct.nand_ecclayout_user, %struct.nand_ecclayout_user* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %61, i64* %68, align 8
  %69 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %70 = getelementptr inbounds %struct.nand_ecclayout_user, %struct.nand_ecclayout_user* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %46

76:                                               ; preds = %58
  br label %24

77:                                               ; preds = %42, %24
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %129, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MTD_MAX_OOBFREE_ENTRIES, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %78
  %83 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @mtd_ooblayout_free(%struct.mtd_info* %83, i32 %84, %struct.mtd_oob_region* %6)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @ERANGE, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %133

95:                                               ; preds = %88
  br label %132

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %100 = getelementptr inbounds %struct.nand_ecclayout_user, %struct.nand_ecclayout_user* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i64 %98, i64* %105, align 8
  %106 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %109 = getelementptr inbounds %struct.nand_ecclayout_user, %struct.nand_ecclayout_user* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i64 %107, i64* %114, align 8
  %115 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %116 = getelementptr inbounds %struct.nand_ecclayout_user, %struct.nand_ecclayout_user* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.nand_ecclayout_user*, %struct.nand_ecclayout_user** %5, align 8
  %124 = getelementptr inbounds %struct.nand_ecclayout_user, %struct.nand_ecclayout_user* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  br label %129

129:                                              ; preds = %96
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %78

132:                                              ; preds = %95, %78
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %93, %40, %16
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @memset(%struct.nand_ecclayout_user*, i32, i32) #1

declare dso_local i32 @mtd_ooblayout_ecc(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

declare dso_local i32 @mtd_ooblayout_free(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
