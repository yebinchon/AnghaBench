; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_read_laddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_sharpslpart.c_sharpsl_nand_read_laddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sharpsl_ftl = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"sharpslpart: error, read failed at %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i8*, %struct.sharpsl_ftl*)* @sharpsl_nand_read_laddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharpsl_nand_read_laddr(%struct.mtd_info* %0, i32 %1, i64 %2, i8* %3, %struct.sharpsl_ftl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sharpsl_ftl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.sharpsl_ftl* %4, %struct.sharpsl_ftl** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %22 = call i32 @mtd_div_by_eb(i64 %20, %struct.mtd_info* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %24, %25
  %27 = sub i64 %26, 1
  %28 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %29 = call i32 @mtd_div_by_eb(i64 %27, %struct.mtd_info* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %9, align 8
  %31 = icmp ule i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %11, align 8
  %35 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %33, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %32, %5
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %93

45:                                               ; preds = %38
  %46 = load %struct.sharpsl_ftl*, %struct.sharpsl_ftl** %11, align 8
  %47 = getelementptr inbounds %struct.sharpsl_ftl, %struct.sharpsl_ftl* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %61 = call i32 @mtd_mod_by_eb(i64 %59, %struct.mtd_info* %60)
  store i32 %61, i32* %16, align 4
  %62 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i64, i64* %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @mtd_read(%struct.mtd_info* %62, i32 %65, i64 %66, i64* %17, i8* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call i64 @mtd_is_bitflip(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  store i32 0, i32* %18, align 4
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %80, %76, %73
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %42
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @mtd_div_by_eb(i64, %struct.mtd_info*) #1

declare dso_local i32 @mtd_mod_by_eb(i64, %struct.mtd_info*) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
