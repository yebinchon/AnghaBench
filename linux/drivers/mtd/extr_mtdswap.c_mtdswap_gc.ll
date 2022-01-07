; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_gc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i64 }
%struct.swap_eb = type { i32 }

@MIN_SPARE_EBLOCKS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EBLOCK_FAILED = common dso_local global i32 0, align 4
@EBLOCK_BITFLIP = common dso_local global i32 0, align 4
@EBLOCK_READERR = common dso_local global i32 0, align 4
@MTDSWAP_TYPE_CLEAN = common dso_local global i32 0, align 4
@MTDSWAP_CLEAN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MTDSWAP_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, i32)* @mtdswap_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_gc(%struct.mtdswap_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.swap_eb*, align 8
  %7 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MIN_SPARE_EBLOCKS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %98

14:                                               ; preds = %2
  %15 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.swap_eb* @mtdswap_pick_gc_eblk(%struct.mtdswap_dev* %15, i32 %16)
  store %struct.swap_eb* %17, %struct.swap_eb** %6, align 8
  %18 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %19 = icmp ne %struct.swap_eb* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %98

21:                                               ; preds = %14
  %22 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %23 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %24 = call i32 @mtdswap_gc_eblock(%struct.mtdswap_dev* %22, %struct.swap_eb* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %98

30:                                               ; preds = %21
  %31 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %32 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EBLOCK_FAILED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %39 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %40 = call i32 @mtdswap_handle_badblock(%struct.mtdswap_dev* %38, %struct.swap_eb* %39)
  store i32 0, i32* %3, align 4
  br label %98

41:                                               ; preds = %30
  %42 = load i32, i32* @EBLOCK_BITFLIP, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %45 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %49 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %50 = call i32 @mtdswap_erase_block(%struct.mtdswap_dev* %48, %struct.swap_eb* %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %52 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EBLOCK_READERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %62 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %63 = call i32 @mtdswap_eblk_passes(%struct.mtdswap_dev* %61, %struct.swap_eb* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60, %57
  store i32 0, i32* %3, align 4
  br label %98

66:                                               ; preds = %60, %41
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %71 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %72 = load i32, i32* @MTDSWAP_TYPE_CLEAN, align 4
  %73 = call i32 @mtdswap_write_marker(%struct.mtdswap_dev* %70, %struct.swap_eb* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %79 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %80 = load i32, i32* @MTDSWAP_CLEAN, align 4
  %81 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %78, %struct.swap_eb* %79, i32 %80)
  br label %97

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @mtd_is_eccerr(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %93 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %94 = load i32, i32* @MTDSWAP_DIRTY, align 4
  %95 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %92, %struct.swap_eb* %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %87, %82
  br label %97

97:                                               ; preds = %96, %77
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %65, %37, %29, %20, %13
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.swap_eb* @mtdswap_pick_gc_eblk(%struct.mtdswap_dev*, i32) #1

declare dso_local i32 @mtdswap_gc_eblock(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_handle_badblock(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_erase_block(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_eblk_passes(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_write_marker(%struct.mtdswap_dev*, %struct.swap_eb*, i32) #1

declare dso_local i32 @mtdswap_rb_add(%struct.mtdswap_dev*, %struct.swap_eb*, i32) #1

declare dso_local i32 @mtd_is_eccerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
