; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_init_ftl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_init_ftl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.sharpsl_ftl = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SHARPSL_FTL_PART_SIZE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Sharp SL FTL: %d blocks used (%d logical, %d reserved)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.sharpsl_ftl*)* @sharpsl_nand_init_ftl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_nand_init_ftl(%struct.mtd_info* %0, %struct.sharpsl_ftl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.sharpsl_ftl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.sharpsl_ftl* %1, %struct.sharpsl_ftl** %5, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 %15, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %137

23:                                               ; preds = %2
  %24 = load i32, i32* @SHARPSL_FTL_PART_SIZE, align 4
  %25 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %26 = call i32 @mtd_div_by_eb(i32 %24, %struct.mtd_info* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %27, 95
  %29 = udiv i32 %28, 100
  %30 = sub i32 %29, 1
  %31 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %32 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %34 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kmalloc_array(i32 %35, i32 4, i32 %36)
  %38 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %39 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %41 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %23
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %133

47:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %51 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @UINT_MAX, align 4
  %56 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %57 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %48

65:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %119, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %122

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  store i32 %75, i32* %9, align 4
  %76 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @mtd_block_isbad(%struct.mtd_info* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %119

81:                                               ; preds = %70
  %82 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = call i64 @sharpsl_nand_read_oob(%struct.mtd_info* %82, i32 %83, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %119

88:                                               ; preds = %81
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @sharpsl_nand_get_logical_num(i32* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ugt i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %96 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %101 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @UINT_MAX, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %112 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %109, %99
  br label %118

118:                                              ; preds = %117, %93, %88
  br label %119

119:                                              ; preds = %118, %87, %80
  %120 = load i32, i32* %6, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %66

122:                                              ; preds = %66
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %125 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %5, align 8
  %129 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub i32 %127, %130
  %132 = call i32 @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %126, i32 %131)
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %122, %44
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @kfree(i32* %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %20
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mtd_div_by_eb(i32, %struct.mtd_info*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @mtd_block_isbad(%struct.mtd_info*, i32) #1

declare dso_local i64 @sharpsl_nand_read_oob(%struct.mtd_info*, i32, i32*) #1

declare dso_local i32 @sharpsl_nand_get_logical_num(i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
