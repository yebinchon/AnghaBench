; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_part_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_part_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*, i32, i32, i8*, i32, i32, i32)* @mmc_part_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_part_add(%struct.mmc_card* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mmc_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %15, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %29 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %24, i32* %32, align 4
  %33 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %34 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %37 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @sprintf(i32 %41, i8* %42, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %50 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %45, i32* %53, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %56 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %54, i32* %62, align 4
  %63 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
