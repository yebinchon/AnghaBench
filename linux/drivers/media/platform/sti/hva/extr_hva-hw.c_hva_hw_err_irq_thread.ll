; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_err_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_err_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_dev = type { i32, i32, i32, i32, i32, i32, %struct.hva_ctx** }
%struct.hva_ctx = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s     status: 0x%02x fifo level: 0x%02x\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@HVA_MAX_INSTANCES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s     bad context identifier: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s     local memory interface error: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s     external memory interface error: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s     hec memory interface error: 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hva_hw_err_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_hw_err_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hva_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hva_ctx*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hva_dev*
  store %struct.hva_dev* %10, %struct.hva_dev** %5, align 8
  %11 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %12 = call %struct.device* @hva_to_dev(%struct.hva_dev* %11)
  store %struct.device* %12, %struct.device** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @HVA_PREFIX, align 4
  %15 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 255
  %19 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %20 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  %23 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22)
  %24 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %25 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 65280
  %28 = ashr i32 %27, 8
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @HVA_MAX_INSTANCES, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* @HVA_PREFIX, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %36)
  br label %100

38:                                               ; preds = %2
  %39 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %40 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %39, i32 0, i32 6
  %41 = load %struct.hva_ctx**, %struct.hva_ctx*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.hva_ctx*, %struct.hva_ctx** %41, i64 %42
  %44 = load %struct.hva_ctx*, %struct.hva_ctx** %43, align 8
  store %struct.hva_ctx* %44, %struct.hva_ctx** %8, align 8
  %45 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %46 = icmp ne %struct.hva_ctx* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %100

48:                                               ; preds = %38
  %49 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %50 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %59 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %61)
  %63 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %67 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %76 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %74, i64 %78)
  %80 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %70, %65
  %83 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %84 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %93 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %91, i64 %95)
  %97 = load %struct.hva_ctx*, %struct.hva_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %87, %82
  br label %100

100:                                              ; preds = %99, %47, %33
  %101 = load %struct.hva_dev*, %struct.hva_dev** %5, align 8
  %102 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %101, i32 0, i32 5
  %103 = call i32 @complete(i32* %102)
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %104
}

declare dso_local %struct.device* @hva_to_dev(%struct.hva_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
