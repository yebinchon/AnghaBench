; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_read_fbr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_read_fbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i8, i32, i32 }

@SDIO_CLASS_NONE = common dso_local global i8 0, align 1
@SDIO_FBR_STD_IF = common dso_local global i64 0, align 8
@SDIO_FBR_STD_IF_EXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*)* @sdio_read_fbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_read_fbr(%struct.sdio_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %7 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @mmc_card_nonstd_func_interface(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8, i8* @SDIO_CLASS_NONE, align 1
  %13 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %13, i32 0, i32 0
  store i8 %12, i8* %14, align 4
  store i32 0, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %17 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %20 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @SDIO_FBR_BASE(i32 %21)
  %23 = load i64, i64* @SDIO_FBR_STD_IF, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mmc_io_rw_direct(i32 %18, i32 0, i32 0, i64 %24, i32 0, i8* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %56

29:                                               ; preds = %15
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %5, align 1
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 15
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SDIO_FBR_BASE(i32 %43)
  %45 = load i64, i64* @SDIO_FBR_STD_IF_EXT, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @mmc_io_rw_direct(i32 %40, i32 0, i32 0, i64 %46, i32 0, i8* %5)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %56

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i8, i8* %5, align 1
  %54 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %55 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %54, i32 0, i32 0
  store i8 %53, i8* %55, align 4
  br label %56

56:                                               ; preds = %52, %50, %28
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @mmc_card_nonstd_func_interface(i32) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i64, i32, i8*) #1

declare dso_local i64 @SDIO_FBR_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
