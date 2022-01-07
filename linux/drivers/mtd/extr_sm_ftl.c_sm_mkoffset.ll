; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_mkoffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_mkoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_ftl = type { i32, i32, i32 }

@SM_SECTOR_SIZE = common dso_local global i32 0, align 4
@SM_MAX_ZONE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm_ftl*, i32, i32, i32)* @sm_mkoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_mkoffset(%struct.sm_ftl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm_ftl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sm_ftl* %0, %struct.sm_ftl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SM_SECTOR_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %20 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br label %23

23:                                               ; preds = %17, %4
  %24 = phi i1 [ true, %4 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %29 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %36 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %56

44:                                               ; preds = %23
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SM_MAX_ZONE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  %51 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %44, %43
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
