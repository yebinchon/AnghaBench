; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_mark_block_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_mark_block_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32, i64 }
%struct.sm_oob = type { i32 }

@SM_OOB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"marking block %d of zone %d as bad\00", align 1
@SM_SECTOR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm_ftl*, i32, i32)* @sm_mark_block_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_mark_block_bad(%struct.sm_ftl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sm_ftl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sm_oob, align 4
  %8 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @SM_OOB_SIZE, align 4
  %10 = call i32 @memset(%struct.sm_oob* %7, i32 255, i32 %9)
  %11 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %7, i32 0, i32 0
  store i32 240, i32* %11, align 4
  %12 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %13 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %19 = call i64 @sm_recheck_media(%struct.sm_ftl* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %44

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sm_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %38, %22
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %29 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.sm_ftl*, %struct.sm_ftl** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @sm_write_sector(%struct.sm_ftl* %33, i32 %34, i32 %35, i32 %36, i32* null, %struct.sm_oob* %7)
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* @SM_SECTOR_SIZE, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  br label %26

44:                                               ; preds = %16, %21, %26
  ret void
}

declare dso_local i32 @memset(%struct.sm_oob*, i32, i32) #1

declare dso_local i64 @sm_recheck_media(%struct.sm_ftl*) #1

declare dso_local i32 @sm_printk(i8*, i32, i32) #1

declare dso_local i32 @sm_write_sector(%struct.sm_ftl*, i32, i32, i32, i32*, %struct.sm_oob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
