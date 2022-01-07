; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_write_marker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_write_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.swap_eb = type { i32 }
%struct.mtdswap_oobdata = type { i8*, i32 }
%struct.mtd_oob_ops = type { i32, i32, i32*, i32, i32*, i64 }

@MTD_OPS_AUTO_OOB = common dso_local global i32 0, align 4
@MTDSWAP_TYPE_CLEAN = common dso_local global i64 0, align 8
@MTDSWAP_MAGIC_CLEAN = common dso_local global i32 0, align 4
@MTDSWAP_OOBSIZE = common dso_local global i32 0, align 4
@MTDSWAP_MAGIC_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Write OOB failed for block at %08llx error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Short OOB write for block at %08llx: %zd not %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, %struct.swap_eb*, i64)* @mtdswap_write_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_write_marker(%struct.mtdswap_dev* %0, %struct.swap_eb* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtdswap_dev*, align 8
  %6 = alloca %struct.swap_eb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtdswap_oobdata, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mtd_oob_ops, align 8
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %5, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = bitcast %struct.mtdswap_oobdata* %8 to i32*
  %14 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 4
  store i32* %13, i32** %14, align 8
  %15 = load i32, i32* @MTD_OPS_AUTO_OOB, align 4
  %16 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MTDSWAP_TYPE_CLEAN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load i32, i32* @MTDSWAP_MAGIC_CLEAN, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.mtdswap_oobdata, %struct.mtdswap_oobdata* %8, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %26 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.mtdswap_oobdata, %struct.mtdswap_oobdata* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* @MTDSWAP_OOBSIZE, align 4
  %31 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %33 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %34 = call i64 @mtdswap_eb_offset(%struct.mtdswap_dev* %32, %struct.swap_eb* %33)
  store i64 %34, i64* %10, align 8
  br label %49

35:                                               ; preds = %3
  %36 = load i32, i32* @MTDSWAP_MAGIC_DIRTY, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.mtdswap_oobdata, %struct.mtdswap_oobdata* %8, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 0
  store i32 8, i32* %39, align 8
  %40 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %41 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %42 = call i64 @mtdswap_eb_offset(%struct.mtdswap_dev* %40, %struct.swap_eb* %41)
  %43 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %42, %47
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %35, %21
  %50 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @mtd_write_oob(%struct.TYPE_2__* %52, i64 %53, %struct.mtd_oob_ops* %11)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %49
  %58 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %59 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32, i8*, i64, i32, ...) @dev_warn(i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @mtd_is_eccerr(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %57
  %73 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %74 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %75 = call i32 @mtdswap_handle_write_error(%struct.mtdswap_dev* %73, %struct.swap_eb* %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %96

78:                                               ; preds = %49
  %79 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %5, align 8
  %86 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, i64, i32, ...) @dev_warn(i32 %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %88, i32 %90, i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %84, %76
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @mtdswap_eb_offset(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtd_write_oob(%struct.TYPE_2__*, i64, %struct.mtd_oob_ops*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i32, ...) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i32 @mtdswap_handle_write_error(%struct.mtdswap_dev*, %struct.swap_eb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
