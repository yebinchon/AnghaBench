; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mtd_ecc_stats = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"read_page\0A\00", align 1
@mtd = common dso_local global %struct.TYPE_4__* null, align 8
@offset = common dso_local global i64 0, align 8
@rbuffer = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"error: read failed at %#llx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.mtd_ecc_stats, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i32 @memcpy(%struct.mtd_ecc_stats* %5, %struct.TYPE_5__* %12, i32 4)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %15 = load i64, i64* @offset, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @rbuffer, align 4
  %20 = call i32 @mtd_read(%struct.TYPE_4__* %14, i64 %15, i64 %18, i64* %4, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @EUCLEAN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %23, %10
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %32, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mtd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39, %36
  %46 = load i64, i64* @offset, align 8
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %3, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %39
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @memcpy(%struct.mtd_ecc_stats*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mtd_read(%struct.TYPE_4__*, i64, i64, i64*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
