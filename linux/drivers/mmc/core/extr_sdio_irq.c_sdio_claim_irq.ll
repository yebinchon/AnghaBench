; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_claim_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_claim_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SDIO: Enabling IRQ for %s...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SDIO: IRQ for %s already in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SDIO_CCCR_IENx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_claim_irq(%struct.sdio_func* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %9 = icmp ne %struct.sdio_func* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %79

13:                                               ; preds = %2
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = call i32 @sdio_func_id(%struct.sdio_func* %14)
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %18 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %23 = call i32 @sdio_func_id(%struct.sdio_func* %22)
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %13
  %28 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %29 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %32 = call i32 @mmc_io_rw_direct(i32 %30, i32 0, i32 0, i32 %31, i8 zeroext 0, i8* %7)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %79

37:                                               ; preds = %27
  %38 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %7, align 1
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, 1
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  %50 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %51 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %54 = load i8, i8* %7, align 1
  %55 = call i32 @mmc_io_rw_direct(i32 %52, i32 1, i32 0, i32 %53, i8 zeroext %54, i8* null)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %37
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %79

60:                                               ; preds = %37
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %63 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %65 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sdio_card_irq_get(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %72 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %71, i32 0, i32 2
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %60
  %74 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %75 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sdio_single_irq_set(i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %58, %35, %21, %10
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i8*) #1

declare dso_local i32 @sdio_card_irq_get(i32) #1

declare dso_local i32 @sdio_single_irq_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
