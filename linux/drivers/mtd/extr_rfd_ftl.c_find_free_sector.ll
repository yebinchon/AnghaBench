; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_rfd_ftl.c_find_free_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_rfd_ftl.c_find_free_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition = type { i32, i32* }
%struct.block = type { i32 }

@HEADER_MAP_OFFSET = common dso_local global i32 0, align 4
@SECTOR_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.partition*, %struct.block*)* @find_free_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_sector(%struct.partition* %0, %struct.block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.partition*, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.partition* %0, %struct.partition** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  %8 = load %struct.partition*, %struct.partition** %4, align 8
  %9 = getelementptr inbounds %struct.partition, %struct.partition* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.block*, %struct.block** %5, align 8
  %12 = getelementptr inbounds %struct.block, %struct.block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %7, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %39, %2
  %16 = load %struct.partition*, %struct.partition** %4, align 8
  %17 = getelementptr inbounds %struct.partition, %struct.partition* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @HEADER_MAP_OFFSET, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le16_to_cpu(i32 %24)
  %26 = load i64, i64* @SECTOR_FREE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %15
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.partition*, %struct.partition** %4, align 8
  %34 = getelementptr inbounds %struct.partition, %struct.partition* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %30
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %15, label %43

43:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
