; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_f0_writeb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_f0_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdio_f0_writeb(%struct.sdio_func* %0, i8 zeroext %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %11 = icmp ne %struct.sdio_func* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %12
  br label %52

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %21, 240
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %26, label %40

26:                                               ; preds = %23, %20
  %27 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %28 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mmc_card_lenient_fn0(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %32
  br label %52

40:                                               ; preds = %26, %23
  %41 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i8, i8* %6, align 1
  %46 = call i32 @mmc_io_rw_direct(i32 %43, i32 1, i32 0, i32 %44, i8 zeroext %45, i32* null)
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %19, %39, %49, %40
  ret void
}

declare dso_local i32 @mmc_card_lenient_fn0(i32) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
