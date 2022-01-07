; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64, %struct.docg3* }
%struct.docg3 = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.erase_info = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"doc_erase(from=%lld, len=%lld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @doc_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.docg3*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 2
  %15 = load %struct.docg3*, %struct.docg3** %14, align 8
  store %struct.docg3* %15, %struct.docg3** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %17 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %20 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @doc_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %21)
  %23 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %24 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %27 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.docg3*, %struct.docg3** %6, align 8
  %31 = getelementptr inbounds %struct.docg3, %struct.docg3* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @calc_block_sector(i64 %29, i32* %8, i32* %9, i32* %10, i32* %12, i32 %32)
  %34 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %35 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %38 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48, %45, %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %107

54:                                               ; preds = %48
  %55 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %56 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.docg3*, %struct.docg3** %6, align 8
  %59 = getelementptr inbounds %struct.docg3, %struct.docg3* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @calc_block_sector(i64 %57, i32* %8, i32* %9, i32* %10, i32* %12, i32 %60)
  %62 = load %struct.docg3*, %struct.docg3** %6, align 8
  %63 = getelementptr inbounds %struct.docg3, %struct.docg3* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.docg3*, %struct.docg3** %6, align 8
  %68 = load %struct.docg3*, %struct.docg3** %6, align 8
  %69 = getelementptr inbounds %struct.docg3, %struct.docg3* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @doc_set_device_id(%struct.docg3* %67, i32 %70)
  %72 = load %struct.docg3*, %struct.docg3** %6, align 8
  %73 = call i32 @doc_set_reliable_mode(%struct.docg3* %72)
  %74 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %75 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %94, %54
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %7, align 8
  %82 = icmp sgt i64 %81, 0
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  br i1 %84, label %85, label %100

85:                                               ; preds = %83
  %86 = load %struct.docg3*, %struct.docg3** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @doc_erase_block(%struct.docg3* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = sub nsw i64 %98, %97
  store i64 %99, i64* %7, align 8
  br label %77

100:                                              ; preds = %83
  %101 = load %struct.docg3*, %struct.docg3** %6, align 8
  %102 = getelementptr inbounds %struct.docg3, %struct.docg3* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %51
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @doc_dbg(i8*, i64, i64) #1

declare dso_local i32 @calc_block_sector(i64, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @doc_set_device_id(%struct.docg3*, i32) #1

declare dso_local i32 @doc_set_reliable_mode(%struct.docg3*) #1

declare dso_local i32 @doc_erase_block(%struct.docg3*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
