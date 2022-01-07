; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_read_markers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_read_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.swap_eb = type { i32, i32 }
%struct.mtdswap_oobdata = type { i32, i32 }
%struct.mtd_oob_ops = type { i32, i32, i32*, i64, i64 }

@MTDSWAP_SCANNED_BAD = common dso_local global i32 0, align 4
@MTD_OPS_AUTO_OOB = common dso_local global i32 0, align 4
@MTDSWAP_MAGIC_CLEAN = common dso_local global i64 0, align 8
@MTDSWAP_SCANNED_BITFLIP = common dso_local global i32 0, align 4
@MTDSWAP_MAGIC_DIRTY = common dso_local global i64 0, align 8
@MTDSWAP_SCANNED_DIRTY = common dso_local global i32 0, align 4
@MTDSWAP_SCANNED_CLEAN = common dso_local global i32 0, align 4
@EBLOCK_NOMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, %struct.swap_eb*)* @mtdswap_read_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_read_markers(%struct.mtdswap_dev* %0, %struct.swap_eb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca %struct.swap_eb*, align 8
  %6 = alloca %struct.mtdswap_oobdata*, align 8
  %7 = alloca %struct.mtdswap_oobdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_oob_ops, align 8
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %5, align 8
  %11 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %12 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %13 = call i32 @mtdswap_eb_offset(%struct.mtdswap_dev* %11, %struct.swap_eb* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i64 @mtd_can_have_bb(%struct.TYPE_3__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @mtd_block_isbad(%struct.TYPE_3__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @MTDSWAP_SCANNED_BAD, align 4
  store i32 %27, i32* %3, align 4
  br label %111

28:                                               ; preds = %19, %2
  %29 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 2, %33
  %35 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %37 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %10, i32 0, i32 4
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %10, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %10, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @MTD_OPS_AUTO_OOB, align 4
  %43 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %10, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mtdswap_read_oob(%struct.mtdswap_dev* %44, i32 %45, %struct.mtd_oob_ops* %10)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %28
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @mtd_is_bitflip(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %111

55:                                               ; preds = %49, %28
  %56 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.mtdswap_oobdata*
  store %struct.mtdswap_oobdata* %59, %struct.mtdswap_oobdata** %6, align 8
  %60 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %61 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %64 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = inttoptr i64 %69 to %struct.mtdswap_oobdata*
  store %struct.mtdswap_oobdata* %70, %struct.mtdswap_oobdata** %7, align 8
  %71 = load %struct.mtdswap_oobdata*, %struct.mtdswap_oobdata** %6, align 8
  %72 = getelementptr inbounds %struct.mtdswap_oobdata, %struct.mtdswap_oobdata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le16_to_cpu(i32 %73)
  %75 = load i64, i64* @MTDSWAP_MAGIC_CLEAN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %55
  %78 = load %struct.mtdswap_oobdata*, %struct.mtdswap_oobdata** %6, align 8
  %79 = getelementptr inbounds %struct.mtdswap_oobdata, %struct.mtdswap_oobdata* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %83 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @mtd_is_bitflip(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @MTDSWAP_SCANNED_BITFLIP, align 4
  store i32 %88, i32* %8, align 4
  br label %101

89:                                               ; preds = %77
  %90 = load %struct.mtdswap_oobdata*, %struct.mtdswap_oobdata** %7, align 8
  %91 = getelementptr inbounds %struct.mtdswap_oobdata, %struct.mtdswap_oobdata* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le16_to_cpu(i32 %92)
  %94 = load i64, i64* @MTDSWAP_MAGIC_DIRTY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @MTDSWAP_SCANNED_DIRTY, align 4
  store i32 %97, i32* %8, align 4
  br label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @MTDSWAP_SCANNED_CLEAN, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %87
  br label %109

102:                                              ; preds = %55
  %103 = load i32, i32* @EBLOCK_NOMAGIC, align 4
  %104 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %105 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @MTDSWAP_SCANNED_DIRTY, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %102, %101
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %53, %26
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @mtdswap_eb_offset(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i64 @mtd_can_have_bb(%struct.TYPE_3__*) #1

declare dso_local i64 @mtd_block_isbad(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mtdswap_read_oob(%struct.mtdswap_dev*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
