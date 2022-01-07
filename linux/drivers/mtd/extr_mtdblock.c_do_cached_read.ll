; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdblock.c_do_cached_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdblock.c_do_cached_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i32, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"mtdblock: read on \22%s\22 at 0x%lx, size 0x%x\0A\00", align 1
@STATE_EMPTY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdblk_dev*, i64, i32, i8*)* @do_cached_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cached_read(%struct.mtdblk_dev* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtdblk_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtdblk_dev* %0, %struct.mtdblk_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  store %struct.mtd_info* %20, %struct.mtd_info** %10, align 8
  %21 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %22 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @mtd_read(%struct.mtd_info* %33, i64 %34, i32 %35, i64* %12, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %116

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %103, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %115

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = udiv i64 %43, %45
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %46, %48
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %14, align 8
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %60, %42
  %63 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %64 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @STATE_EMPTY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %70 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %14, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %77 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @memcpy(i8* %75, i64 %81, i32 %82)
  br label %103

84:                                               ; preds = %68, %62
  %85 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @mtd_read(%struct.mtd_info* %85, i64 %86, i32 %87, i64* %12, i8* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %116

94:                                               ; preds = %84
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %16, align 4
  %97 = zext i32 %96 to i64
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %116

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %74
  %104 = load i32, i32* %16, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %9, align 8
  %108 = load i32, i32* %16, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %7, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sub i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %39

115:                                              ; preds = %39
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %99, %92, %32
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
