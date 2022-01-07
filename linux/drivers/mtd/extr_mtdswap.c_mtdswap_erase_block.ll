; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i64, i32, %struct.mtd_info* }
%struct.mtd_info = type { i32, i32 }
%struct.swap_eb = type { i64 }
%struct.erase_info = type { i32, i32 }

@MTDSWAP_ERASE_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"erase of erase block %#llx on %s failed\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot erase erase block %#llx on %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, %struct.swap_eb*)* @mtdswap_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_erase_block(%struct.mtdswap_dev* %0, %struct.swap_eb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca %struct.swap_eb*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.erase_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %5, align 8
  %10 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %10, i32 0, i32 2
  %12 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  store %struct.mtd_info* %12, %struct.mtd_info** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %14 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %18 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %26 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %29 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %2
  br label %31

31:                                               ; preds = %50, %30
  %32 = call i32 @memset(%struct.erase_info* %7, i32 0, i32 8)
  %33 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %34 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %35 = call i32 @mtdswap_eb_offset(%struct.mtdswap_dev* %33, %struct.swap_eb* %34)
  %36 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %7, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %42 = call i32 @mtd_erase(%struct.mtd_info* %41, %struct.erase_info* %7)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @MTDSWAP_ERASE_RETRIES, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = call i32 (...) @yield()
  br label %31

61:                                               ; preds = %45
  %62 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %63 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %72 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %73 = call i32 @mtdswap_handle_badblock(%struct.mtdswap_dev* %71, %struct.swap_eb* %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.erase_info*, i32, i32) #1

declare dso_local i32 @mtdswap_eb_offset(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtd_erase(%struct.mtd_info*, %struct.erase_info*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mtdswap_handle_badblock(%struct.mtdswap_dev*, %struct.swap_eb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
