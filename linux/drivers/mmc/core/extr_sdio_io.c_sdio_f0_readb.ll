; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_f0_readb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_f0_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @sdio_f0_readb(%struct.sdio_func* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.sdio_func* %0, %struct.sdio_func** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %11 = icmp ne %struct.sdio_func* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %12
  store i8 -1, i8* %4, align 1
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %22 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mmc_io_rw_direct(i32 %23, i32 0, i32 0, i32 %24, i32 0, i8* %9)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8 -1, i8* %4, align 1
  br label %37

35:                                               ; preds = %31
  %36 = load i8, i8* %9, align 1
  store i8 %36, i8* %4, align 1
  br label %37

37:                                               ; preds = %35, %34, %19
  %38 = load i8, i8* %4, align 1
  ret i8 %38
}

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
