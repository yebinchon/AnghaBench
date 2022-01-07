; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_disable_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_disable_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SDIO: Disabling device %s...\0A\00", align 1
@SDIO_CCCR_IOEx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SDIO: Disabled device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SDIO: Failed to disable device %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_disable_func(%struct.sdio_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %7 = icmp ne %struct.sdio_func* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %13 = call i32 @sdio_func_id(%struct.sdio_func* %12)
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SDIO_CCCR_IOEx, align 4
  %19 = call i32 @mmc_io_rw_direct(i32 %17, i32 0, i32 0, i32 %18, i8 zeroext 0, i8* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %46

23:                                               ; preds = %11
  %24 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %25 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %5, align 1
  %33 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %34 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SDIO_CCCR_IOEx, align 4
  %37 = load i8, i8* %5, align 1
  %38 = call i32 @mmc_io_rw_direct(i32 %35, i32 1, i32 0, i32 %36, i8 zeroext %37, i8* null)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %46

42:                                               ; preds = %23
  %43 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %44 = call i32 @sdio_func_id(%struct.sdio_func* %43)
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 0, i32* %2, align 4
  br label %52

46:                                               ; preds = %41, %22
  %47 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %48 = call i32 @sdio_func_id(%struct.sdio_func* %47)
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %42, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
