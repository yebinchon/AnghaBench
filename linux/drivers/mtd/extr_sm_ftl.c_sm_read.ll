; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { %struct.sm_ftl* }
%struct.sm_ftl = type { i32, i32, i32 }
%struct.ftl_zone = type { i32* }

@SM_SECTOR_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i8*)* @sm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_read(%struct.mtd_blktrans_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.mtd_blktrans_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sm_ftl*, align 8
  %8 = alloca %struct.ftl_zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %14, i32 0, i32 0
  %16 = load %struct.sm_ftl*, %struct.sm_ftl** %15, align 8
  store %struct.sm_ftl* %16, %struct.sm_ftl** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = shl i64 %18, 9
  %20 = call i32 @sm_break_offset(%struct.sm_ftl* %17, i64 %19, i32* %11, i32* %12, i32* %13)
  %21 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %22 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.ftl_zone* @sm_get_zone(%struct.sm_ftl* %24, i32 %25)
  store %struct.ftl_zone* %26, %struct.ftl_zone** %8, align 8
  %27 = load %struct.ftl_zone*, %struct.ftl_zone** %8, align 8
  %28 = call i64 @IS_ERR(%struct.ftl_zone* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.ftl_zone*, %struct.ftl_zone** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.ftl_zone* %31)
  store i32 %32, i32* %9, align 4
  br label %87

33:                                               ; preds = %3
  %34 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %35 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %41 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  %46 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @sm_cache_get(%struct.sm_ftl* %46, i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %87

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %39, %33
  %54 = load %struct.ftl_zone*, %struct.ftl_zone** %8, align 8
  %55 = getelementptr inbounds %struct.ftl_zone, %struct.ftl_zone* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %66 = call i32 @memset(i8* %64, i32 255, i32 %65)
  br label %87

67:                                               ; preds = %53
  %68 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 @sm_read_sector(%struct.sm_ftl* %68, i32 %69, i32 %70, i32 %71, i8* %72, i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %87

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @sm_cache_put(%struct.sm_ftl* %82, i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %78
  br label %87

87:                                               ; preds = %86, %75, %63, %51, %30
  %88 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %89 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @sm_break_offset(%struct.sm_ftl*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ftl_zone* @sm_get_zone(%struct.sm_ftl*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ftl_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.ftl_zone*) #1

declare dso_local i32 @sm_cache_get(%struct.sm_ftl*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @sm_read_sector(%struct.sm_ftl*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @sm_cache_put(%struct.sm_ftl*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
