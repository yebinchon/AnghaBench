; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_ftl.c_erase_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_ftl.c_erase_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.xfer_info_t* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xfer_info_t = type { i32, i32, i32 }
%struct.erase_info = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ftl_cs: erasing xfer unit at 0x%x\0A\00", align 1
@XFER_ERASING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFER_ERASED = common dso_local global i32 0, align 4
@XFER_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ftl_cs: erase failed: err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64)* @erase_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_xfer(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfer_info_t*, align 8
  %8 = alloca %struct.erase_info*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = load %struct.xfer_info_t*, %struct.xfer_info_t** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %11, i64 %12
  store %struct.xfer_info_t* %13, %struct.xfer_info_t** %7, align 8
  %14 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %15 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @XFER_ERASING, align 4
  %19 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %20 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.erase_info* @kmalloc(i32 8, i32 %21)
  store %struct.erase_info* %22, %struct.erase_info** %8, align 8
  %23 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %24 = icmp ne %struct.erase_info* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %2
  %29 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %30 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %33 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %40 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %46 = call i32 @mtd_erase(i32 %44, %struct.erase_info* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %28
  %50 = load i32, i32* @XFER_ERASED, align 4
  %51 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %52 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %54 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %63

57:                                               ; preds = %28
  %58 = load i32, i32* @XFER_FAILED, align 4
  %59 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %60 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pr_notice(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %49
  %64 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %65 = call i32 @kfree(%struct.erase_info* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %25
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.erase_info* @kmalloc(i32, i32) #1

declare dso_local i32 @mtd_erase(i32, %struct.erase_info*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @kfree(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
