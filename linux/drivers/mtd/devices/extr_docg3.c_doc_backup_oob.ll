; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_backup_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_backup_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32, i32, i32 }
%struct.mtd_oob_ops = type { i32, i64, i32, i32 }

@DOC_LAYOUT_OOB_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTD_OPS_AUTO_OOB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i32, %struct.mtd_oob_ops*)* @doc_backup_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_backup_oob(%struct.docg3* %0, i32 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.docg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %10 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %11 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @DOC_LAYOUT_OOB_SIZE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %21 = call i32 @doc_guess_autoecc(%struct.mtd_oob_ops* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %61

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.docg3*, %struct.docg3** %5, align 8
  %29 = getelementptr inbounds %struct.docg3, %struct.docg3* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.docg3*, %struct.docg3** %5, align 8
  %32 = getelementptr inbounds %struct.docg3, %struct.docg3* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %34 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MTD_OPS_AUTO_OOB, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.docg3*, %struct.docg3** %5, align 8
  %40 = getelementptr inbounds %struct.docg3, %struct.docg3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %43 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @doc_fill_autooob(i32 %41, i32 %44)
  %46 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %46, i32 0, i32 2
  store i32 8, i32* %47, align 8
  br label %60

48:                                               ; preds = %26
  %49 = load %struct.docg3*, %struct.docg3** %5, align 8
  %50 = getelementptr inbounds %struct.docg3, %struct.docg3* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %53 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DOC_LAYOUT_OOB_SIZE, align 4
  %56 = call i32 @memcpy(i32 %51, i32 %54, i32 %55)
  %57 = load i32, i32* @DOC_LAYOUT_OOB_SIZE, align 4
  %58 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %59 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %48, %38
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %24, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @doc_guess_autoecc(%struct.mtd_oob_ops*) #1

declare dso_local i32 @doc_fill_autooob(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
