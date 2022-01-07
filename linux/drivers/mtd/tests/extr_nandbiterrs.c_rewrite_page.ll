; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_rewrite_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_rewrite_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.mtd_oob_ops = type { i64, i64, i32*, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"rewrite page\0A\00", align 1
@MTD_OPS_RAW = common dso_local global i32 0, align 4
@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@wbuffer = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error: write_oob failed (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rewrite_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rewrite_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_oob_ops, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @MTD_OPS_RAW, align 4
  %11 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 7
  store i32 %10, i32* %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @wbuffer, align 4
  %21 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %24 = load i32, i32* @offset, align 4
  %25 = call i32 @mtd_write_oob(%struct.TYPE_3__* %23, i32 %24, %struct.mtd_oob_ops* %4)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28, %9
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mtd_write_oob(%struct.TYPE_3__*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
