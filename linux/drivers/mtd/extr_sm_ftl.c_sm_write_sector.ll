; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_write_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_write_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.sm_oob = type { i32 }
%struct.mtd_oob_ops = type { i64, i64, i8*, i64, i64, i32*, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"attempted to write the CIS!\00", align 1
@EIO = common dso_local global i32 0, align 4
@MTD_OPS_RAW = common dso_local global i32 0, align 4
@MTD_OPS_PLACE_OOB = common dso_local global i32 0, align 4
@SM_SECTOR_SIZE = common dso_local global i64 0, align 8
@SM_OOB_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"write to block %d at zone %d, failed with error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, i32, i32, i32, i32*, %struct.sm_oob*)* @sm_write_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_write_sector(%struct.sm_ftl* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.sm_oob* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sm_ftl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sm_oob*, align 8
  %14 = alloca %struct.mtd_oob_ops, align 8
  %15 = alloca %struct.mtd_info*, align 8
  %16 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.sm_oob* %5, %struct.sm_oob** %13, align 8
  %17 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %18 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mtd_info*, %struct.mtd_info** %20, align 8
  store %struct.mtd_info* %21, %struct.mtd_info** %15, align 8
  %22 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %23 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %31 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %28
  %38 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %106

41:                                               ; preds = %34, %6
  %42 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %43 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %106

49:                                               ; preds = %41
  %50 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %51 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @MTD_OPS_RAW, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @MTD_OPS_PLACE_OOB, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 7
  store i32 %59, i32* %60, align 8
  %61 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %62 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 6
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 5
  store i32* %63, i32** %64, align 8
  %65 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load i64, i64* @SM_OOB_SIZE, align 8
  %67 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 3
  store i64 %66, i64* %67, align 8
  %68 = load %struct.sm_oob*, %struct.sm_oob** %13, align 8
  %69 = bitcast %struct.sm_oob* %68 to i8*
  %70 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %72 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @sm_mkoffset(%struct.sm_ftl* %72, i32 %73, i32 %74, i32 %75)
  %77 = call i32 @mtd_write_oob(%struct.mtd_info* %71, i32 %76, %struct.mtd_oob_ops* %14)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %58
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  %85 = load %struct.sm_ftl*, %struct.sm_ftl** %8, align 8
  %86 = call i32 @sm_recheck_media(%struct.sm_ftl* %85)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %7, align 4
  br label %106

88:                                               ; preds = %58
  %89 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SM_OOB_SIZE, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON(i32 %93)
  %95 = load i32*, i32** %12, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %101 = icmp ne i64 %99, %100
  br label %102

102:                                              ; preds = %97, %88
  %103 = phi i1 [ false, %88 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @WARN_ON(i32 %104)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %80, %46, %37
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @mtd_write_oob(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @sm_mkoffset(%struct.sm_ftl*, i32, i32, i32) #1

declare dso_local i32 @sm_recheck_media(%struct.sm_ftl*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
