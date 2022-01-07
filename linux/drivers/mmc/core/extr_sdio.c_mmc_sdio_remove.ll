; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_sdio_remove(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %43, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %5, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %4
  %13 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %12
  %24 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sdio_remove_func(i32* %32)
  %34 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %23, %12
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %4

46:                                               ; preds = %4
  %47 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @mmc_remove_card(%struct.TYPE_2__* %49)
  %51 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %52, align 8
  ret void
}

declare dso_local i32 @sdio_remove_func(i32*) #1

declare dso_local i32 @mmc_remove_card(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
