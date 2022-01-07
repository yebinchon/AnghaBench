; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_multiblock_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_multiblock_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.erase_info = type { i32, i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"error %d while erasing EB %d, blocks %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @multiblock_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiblock_erase(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.erase_info, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %8, align 4
  %14 = call i32 @memset(%struct.erase_info* %7, i32 0, i32 8)
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %24 = call i32 @mtd_erase(%struct.TYPE_3__* %23, %struct.erase_info* %7)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.erase_info*, i32, i32) #1

declare dso_local i32 @mtd_erase(%struct.TYPE_3__*, %struct.erase_info*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
