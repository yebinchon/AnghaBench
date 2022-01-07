; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_readfrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_readfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [73 x i8] c"SCIFAPI readfrom: ep %p loffset 0x%lx len 0x%lx offset 0x%lx flags 0x%x\0A\00", align 1
@SCIF_MAX_UNALIGNED_BUF_SIZE = common dso_local global i64 0, align 8
@SCIF_REMOTE_TO_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_readfrom(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0, i32 0), align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14, i64 %15, i64 %16, i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i64 @scif_unaligned(i64 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @SCIF_MAX_UNALIGNED_BUF_SIZE, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SCIF_MAX_UNALIGNED_BUF_SIZE, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @SCIF_REMOTE_TO_LOCAL, align 4
  %35 = call i32 @scif_rma_copy(i32 %29, i64 %30, i32 0, i64 %31, i64 %32, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %58

39:                                               ; preds = %28
  %40 = load i64, i64* @SCIF_MAX_UNALIGNED_BUF_SIZE, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @SCIF_MAX_UNALIGNED_BUF_SIZE, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* @SCIF_MAX_UNALIGNED_BUF_SIZE, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %24

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49, %5
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @SCIF_REMOTE_TO_LOCAL, align 4
  %57 = call i32 @scif_rma_copy(i32 %51, i64 %52, i32 0, i64 %53, i64 %54, i32 %55, i32 %56, i32 1)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %38
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64, i64, i32) #1

declare dso_local i64 @scif_unaligned(i64, i64) #1

declare dso_local i32 @scif_rma_copy(i32, i64, i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
