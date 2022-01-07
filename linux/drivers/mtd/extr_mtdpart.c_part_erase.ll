; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.erase_info = type { i64, i32 }
%struct.mtd_part = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.erase_info*)* }

@MTD_FAIL_ADDR_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @part_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.erase_info*, align 8
  %5 = alloca %struct.mtd_part*, align 8
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.erase_info* %1, %struct.erase_info** %4, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = call %struct.mtd_part* @mtd_to_part(%struct.mtd_info* %7)
  store %struct.mtd_part* %8, %struct.mtd_part** %5, align 8
  %9 = load %struct.mtd_part*, %struct.mtd_part** %5, align 8
  %10 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %13 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 8
  %18 = load %struct.mtd_part*, %struct.mtd_part** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_2__*, %struct.erase_info*)*, i32 (%struct.TYPE_2__*, %struct.erase_info*)** %21, align 8
  %23 = load %struct.mtd_part*, %struct.mtd_part** %5, align 8
  %24 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %27 = call i32 %22(%struct.TYPE_2__* %25, %struct.erase_info* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %29 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MTD_FAIL_ADDR_UNKNOWN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.mtd_part*, %struct.mtd_part** %5, align 8
  %35 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %38 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %33, %2
  %42 = load %struct.mtd_part*, %struct.mtd_part** %5, align 8
  %43 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %46 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.mtd_part* @mtd_to_part(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
