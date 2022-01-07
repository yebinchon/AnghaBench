; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_create_pinned_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_create_pinned_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_pinned_pages = type { i32, i32, i8* }

@SCIFEP_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scif_pinned_pages* (i32, i32)* @scif_create_pinned_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scif_pinned_pages* @scif_create_pinned_pages(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.scif_pinned_pages*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scif_pinned_pages*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = call i8* @scif_zalloc(i32 16)
  %9 = bitcast i8* %8 to %struct.scif_pinned_pages*
  store %struct.scif_pinned_pages* %9, %struct.scif_pinned_pages** %6, align 8
  %10 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %6, align 8
  %11 = icmp ne %struct.scif_pinned_pages* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %37

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = call i8* @scif_zalloc(i32 %17)
  %19 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %6, align 8
  %20 = getelementptr inbounds %struct.scif_pinned_pages, %struct.scif_pinned_pages* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %6, align 8
  %22 = getelementptr inbounds %struct.scif_pinned_pages, %struct.scif_pinned_pages* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %34

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %6, align 8
  %29 = getelementptr inbounds %struct.scif_pinned_pages, %struct.scif_pinned_pages* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @SCIFEP_MAGIC, align 4
  %31 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %6, align 8
  %32 = getelementptr inbounds %struct.scif_pinned_pages, %struct.scif_pinned_pages* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %6, align 8
  store %struct.scif_pinned_pages* %33, %struct.scif_pinned_pages** %3, align 8
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %6, align 8
  %36 = call i32 @scif_free(%struct.scif_pinned_pages* %35, i32 16)
  br label %37

37:                                               ; preds = %34, %12
  store %struct.scif_pinned_pages* null, %struct.scif_pinned_pages** %3, align 8
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.scif_pinned_pages*, %struct.scif_pinned_pages** %3, align 8
  ret %struct.scif_pinned_pages* %39
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i8* @scif_zalloc(i32) #1

declare dso_local i32 @scif_free(%struct.scif_pinned_pages*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
