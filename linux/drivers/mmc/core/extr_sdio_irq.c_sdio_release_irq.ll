; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_release_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SDIO: Disabling IRQ for %s...\0A\00", align 1
@SDIO_CCCR_IENx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_release_irq(%struct.sdio_func* %0) #0 {
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
  br label %67

11:                                               ; preds = %1
  %12 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %13 = call i32 @sdio_func_id(%struct.sdio_func* %12)
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %16 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %21 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %23 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sdio_card_irq_put(i32 %24)
  %26 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %27 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sdio_single_irq_set(i32 %28)
  br label %30

30:                                               ; preds = %19, %11
  %31 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %32 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %35 = call i32 @mmc_io_rw_direct(i32 %33, i32 0, i32 0, i32 %34, i8 zeroext 0, i8* %5)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %67

40:                                               ; preds = %30
  %41 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %5, align 1
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, 254
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  store i8 0, i8* %5, align 1
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %57 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %60 = load i8, i8* %5, align 1
  %61 = call i32 @mmc_io_rw_direct(i32 %58, i32 1, i32 0, i32 %59, i8 zeroext %60, i8* null)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %64, %38, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @sdio_card_irq_put(i32) #1

declare dso_local i32 @sdio_single_irq_set(i32) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
