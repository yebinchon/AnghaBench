; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }

@HIF_WRITE = common dso_local global i32 0, align 4
@HIF_MBOX_BASE_ADDR = common dso_local global i32 0, align 4
@HIF_MBOX_END_ADDR = common dso_local global i32 0, align 4
@HIF_MBOX_WIDTH = common dso_local global i32 0, align 4
@HIF_MBOX0_EXT_BASE_ADDR = common dso_local global i32 0, align 4
@HIF_MBOX0_EXT_WIDTH = common dso_local global i32 0, align 4
@HIF_FIXED_ADDRESS = common dso_local global i32 0, align 4
@ATH6KL_DBG_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s addr 0x%x%s buf 0x%p len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wr\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rd\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (fixed)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATH6KL_DBG_SDIO_DUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"sdio \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, i32, i32, i32*, i32)* @ath6kl_sdio_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_io(%struct.sdio_func* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.sdio_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %13 = call i32 @sdio_claim_host(%struct.sdio_func* %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @HIF_WRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @HIF_MBOX_BASE_ADDR, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @HIF_MBOX_END_ADDR, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @HIF_MBOX_WIDTH, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %22, %18
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @HIF_MBOX0_EXT_BASE_ADDR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @HIF_MBOX0_EXT_WIDTH, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @HIF_FIXED_ADDRESS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @sdio_writesb(%struct.sdio_func* %48, i32 %49, i32* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %59

53:                                               ; preds = %42
  %54 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @sdio_memcpy_toio(%struct.sdio_func* %54, i32 %55, i32* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %53, %47
  br label %78

60:                                               ; preds = %5
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @HIF_FIXED_ADDRESS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @sdio_readsb(%struct.sdio_func* %66, i32* %67, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @sdio_memcpy_fromio(%struct.sdio_func* %72, i32* %73, i32 %74, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %80 = call i32 @sdio_release_host(%struct.sdio_func* %79)
  %81 = load i32, i32* @ATH6KL_DBG_SDIO, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @HIF_WRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @HIF_FIXED_ADDRESS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @ath6kl_dbg(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %87, i32 %88, i8* %94, i32* %95, i32 %96)
  %98 = load i32, i32* @ATH6KL_DBG_SDIO_DUMP, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @ath6kl_dbg_dump(i32 %98, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @trace_ath6kl_sdio(i32 %102, i32 %103, i32* %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_writesb(%struct.sdio_func*, i32, i32*, i32) #1

declare dso_local i32 @sdio_memcpy_toio(%struct.sdio_func*, i32, i32*, i32) #1

declare dso_local i32 @sdio_readsb(%struct.sdio_func*, i32*, i32, i32) #1

declare dso_local i32 @sdio_memcpy_fromio(%struct.sdio_func*, i32*, i32, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i8*, i32, i8*, i32*, i32) #1

declare dso_local i32 @ath6kl_dbg_dump(i32, i32*, i8*, i32*, i32) #1

declare dso_local i32 @trace_ath6kl_sdio(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
