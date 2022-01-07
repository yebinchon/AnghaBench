; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i64, i32, i64, i32, %struct.TYPE_2__*, %struct.ftl_zone* }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }
%struct.ftl_zone = type { i32 }
%struct.erase_info = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"attempted to erase the CIS!\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"erase of block %d in zone %d failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, i32, i64, i32)* @sm_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_erase_block(%struct.sm_ftl* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm_ftl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ftl_zone*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca %struct.erase_info, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %14 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %13, i32 0, i32 5
  %15 = load %struct.ftl_zone*, %struct.ftl_zone** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %15, i64 %17
  store %struct.ftl_zone* %18, %struct.ftl_zone** %10, align 8
  %19 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %20 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.mtd_info*, %struct.mtd_info** %22, align 8
  store %struct.mtd_info* %23, %struct.mtd_info** %11, align 8
  %24 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @sm_mkoffset(%struct.sm_ftl* %24, i32 %25, i64 %26, i32 0)
  %28 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %30 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %34 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %84

40:                                               ; preds = %4
  %41 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %42 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %50 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %47
  %57 = call i32 (i8*, ...) @sm_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %84

60:                                               ; preds = %53, %40
  %61 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %62 = call i64 @mtd_erase(%struct.mtd_info* %61, %struct.erase_info* %12)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @sm_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %66)
  br label %77

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.ftl_zone*, %struct.ftl_zone** %10, align 8
  %73 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %72, i32 0, i32 0
  %74 = bitcast i64* %8 to i8*
  %75 = call i32 @kfifo_in(i32* %73, i8* %74, i32 8)
  br label %76

76:                                               ; preds = %71, %68
  store i32 0, i32* %5, align 4
  br label %84

77:                                               ; preds = %64
  %78 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @sm_mark_block_bad(%struct.sm_ftl* %78, i32 %79, i64 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %77, %76, %56, %37
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @sm_mkoffset(%struct.sm_ftl*, i32, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sm_printk(i8*, ...) #1

declare dso_local i64 @mtd_erase(%struct.mtd_info*, %struct.erase_info*) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @sm_mark_block_bad(%struct.sm_ftl*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
