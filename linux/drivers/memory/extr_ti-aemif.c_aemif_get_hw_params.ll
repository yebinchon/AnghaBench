; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_ti-aemif.c_aemif_get_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_ti-aemif.c_aemif_get_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.aemif_device = type { i64, i32, i32, %struct.aemif_cs_data* }
%struct.aemif_cs_data = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@A1CR_OFFSET = common dso_local global i32 0, align 4
@ASIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @aemif_get_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aemif_get_hw_params(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aemif_device*, align 8
  %6 = alloca %struct.aemif_cs_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.aemif_device* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.aemif_device* %11, %struct.aemif_device** %5, align 8
  %12 = load %struct.aemif_device*, %struct.aemif_device** %5, align 8
  %13 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %12, i32 0, i32 3
  %14 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %14, i64 %16
  store %struct.aemif_cs_data* %17, %struct.aemif_cs_data** %6, align 8
  %18 = load %struct.aemif_device*, %struct.aemif_device** %5, align 8
  %19 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @A1CR_OFFSET, align 4
  %22 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %23 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.aemif_device*, %struct.aemif_device** %5, align 8
  %26 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = mul nsw i32 %28, 4
  %30 = add nsw i32 %21, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.aemif_device*, %struct.aemif_device** %5, align 8
  %32 = getelementptr inbounds %struct.aemif_device, %struct.aemif_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @readl(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @TA_VAL(i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = call i8* @aemif_cycles_to_nsec(i32 %38, i64 %39)
  %41 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %42 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @RHOLD_VAL(i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i8* @aemif_cycles_to_nsec(i32 %44, i64 %45)
  %47 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %48 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @RSTROBE_VAL(i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i8* @aemif_cycles_to_nsec(i32 %50, i64 %51)
  %53 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %54 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @RSETUP_VAL(i32 %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i8* @aemif_cycles_to_nsec(i32 %56, i64 %57)
  %59 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %60 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @WHOLD_VAL(i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = call i8* @aemif_cycles_to_nsec(i32 %62, i64 %63)
  %65 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %66 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @WSTROBE_VAL(i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = call i8* @aemif_cycles_to_nsec(i32 %68, i64 %69)
  %71 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %72 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @WSETUP_VAL(i32 %73)
  %75 = load i64, i64* %7, align 8
  %76 = call i8* @aemif_cycles_to_nsec(i32 %74, i64 %75)
  %77 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %78 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @EW_VAL(i32 %79)
  %81 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %82 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @SS_VAL(i32 %83)
  %85 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %86 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @ASIZE_MAX, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.aemif_cs_data*, %struct.aemif_cs_data** %6, align 8
  %91 = getelementptr inbounds %struct.aemif_cs_data, %struct.aemif_cs_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  ret void
}

declare dso_local %struct.aemif_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i8* @aemif_cycles_to_nsec(i32, i64) #1

declare dso_local i32 @TA_VAL(i32) #1

declare dso_local i32 @RHOLD_VAL(i32) #1

declare dso_local i32 @RSTROBE_VAL(i32) #1

declare dso_local i32 @RSETUP_VAL(i32) #1

declare dso_local i32 @WHOLD_VAL(i32) #1

declare dso_local i32 @WSTROBE_VAL(i32) #1

declare dso_local i32 @WSETUP_VAL(i32) #1

declare dso_local i32 @EW_VAL(i32) #1

declare dso_local i32 @SS_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
