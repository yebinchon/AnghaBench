; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_scan_eblks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_scan_eblks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, %struct.swap_eb* }
%struct.swap_eb = type { i32 }

@EBLOCK_READERR = common dso_local global i32 0, align 4
@MTDSWAP_SCANNED_BAD = common dso_local global i32 0, align 4
@EBLOCK_BAD = common dso_local global i32 0, align 4
@MTDSWAP_CLEAN = common dso_local global i32 0, align 4
@MTDSWAP_DIRTY = common dso_local global i32 0, align 4
@MTDSWAP_FAILING = common dso_local global i32 0, align 4
@EBLOCK_IDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtdswap_dev*)* @mtdswap_scan_eblks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtdswap_scan_eblks(%struct.mtdswap_dev* %0) #0 {
  %2 = alloca %struct.mtdswap_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.swap_eb*, align 8
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %7
  %14 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %14, i32 0, i32 1
  %16 = load %struct.swap_eb*, %struct.swap_eb** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %16, i64 %18
  store %struct.swap_eb* %19, %struct.swap_eb** %6, align 8
  %20 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %2, align 8
  %21 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %22 = call i32 @mtdswap_read_markers(%struct.mtdswap_dev* %20, %struct.swap_eb* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load i32, i32* @EBLOCK_READERR, align 4
  %27 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %28 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %42

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MTDSWAP_SCANNED_BAD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @EBLOCK_BAD, align 4
  %37 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %38 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %58

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %3, align 4
  switch i32 %43, label %48 [
    i32 129, label %44
    i32 128, label %46
    i32 130, label %46
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @MTDSWAP_CLEAN, align 4
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %42, %42
  %47 = load i32, i32* @MTDSWAP_DIRTY, align 4
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @MTDSWAP_FAILING, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %46, %44
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @EBLOCK_IDX_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %55 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %35
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %7

61:                                               ; preds = %7
  %62 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %2, align 8
  %63 = call i32 @mtdswap_check_counts(%struct.mtdswap_dev* %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %94, %61
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %2, align 8
  %67 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %2, align 8
  %72 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %71, i32 0, i32 1
  %73 = load %struct.swap_eb*, %struct.swap_eb** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %73, i64 %75
  store %struct.swap_eb* %76, %struct.swap_eb** %6, align 8
  %77 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %78 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EBLOCK_BAD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %94

84:                                               ; preds = %70
  %85 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %86 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EBLOCK_IDX_SHIFT, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %2, align 8
  %91 = load %struct.swap_eb*, %struct.swap_eb** %6, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @mtdswap_rb_add(%struct.mtdswap_dev* %90, %struct.swap_eb* %91, i32 %92)
  br label %94

94:                                               ; preds = %84, %83
  %95 = load i32, i32* %4, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %64

97:                                               ; preds = %64
  ret void
}

declare dso_local i32 @mtdswap_read_markers(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_check_counts(%struct.mtdswap_dev*) #1

declare dso_local i32 @mtdswap_rb_add(%struct.mtdswap_dev*, %struct.swap_eb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
