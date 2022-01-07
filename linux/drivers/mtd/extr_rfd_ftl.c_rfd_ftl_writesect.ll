; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_rfd_ftl.c_rfd_ftl_writesect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_rfd_ftl.c_rfd_ftl_writesect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.partition = type { i32, i64, i64* }

@.str = private unnamed_addr constant [33 x i8] c"rfd_ftl_writesect(sector=0x%lx)\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i8*)* @rfd_ftl_writesect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfd_ftl_writesect(%struct.mtd_blktrans_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.mtd_blktrans_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.partition*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %4, align 8
  %12 = bitcast %struct.mtd_blktrans_dev* %11 to %struct.partition*
  store %struct.partition* %12, %struct.partition** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.partition*, %struct.partition** %7, align 8
  %16 = getelementptr inbounds %struct.partition, %struct.partition* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %80

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.partition*, %struct.partition** %7, align 8
  %25 = getelementptr inbounds %struct.partition, %struct.partition* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %80

31:                                               ; preds = %22
  %32 = load %struct.partition*, %struct.partition** %7, align 8
  %33 = getelementptr inbounds %struct.partition, %struct.partition* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %59, %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SECTOR_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %59

50:                                               ; preds = %42
  %51 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @do_writesect(%struct.mtd_blktrans_dev* %51, i64 %52, i8* %53, i64* %8)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %80

58:                                               ; preds = %50
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %38

62:                                               ; preds = %58, %38
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SECTOR_SIZE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.partition*, %struct.partition** %7, align 8
  %68 = getelementptr inbounds %struct.partition, %struct.partition* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 -1, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.partition*, %struct.partition** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @mark_sector_deleted(%struct.partition* %76, i64 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %57, %28, %19
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @do_writesect(%struct.mtd_blktrans_dev*, i64, i8*, i64*) #1

declare dso_local i32 @mark_sector_deleted(%struct.partition*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
