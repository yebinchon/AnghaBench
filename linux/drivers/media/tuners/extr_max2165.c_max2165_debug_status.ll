; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_max2165_debug_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_max2165_debug_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2165_priv = type { i32 }

@REG_STATUS = common dso_local global i32 0, align 4
@REG_AUTOTUNE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"auto VCO active: %d, auto VCO success: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"PLL locked: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"DC offset low: %d, DC offset high: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Signal lvl over threshold: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"VCO: %d, VCO Sub-band: %d, ADC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max2165_priv*)* @max2165_debug_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2165_debug_status(%struct.max2165_priv* %0) #0 {
  %2 = alloca %struct.max2165_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.max2165_priv* %0, %struct.max2165_priv** %2, align 8
  %14 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %15 = load i32, i32* @REG_STATUS, align 4
  %16 = call i32 @max2165_read_reg(%struct.max2165_priv* %14, i32 %15, i32* %3)
  %17 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %18 = load i32, i32* @REG_AUTOTUNE, align 4
  %19 = call i32 @max2165_read_reg(%struct.max2165_priv* %17, i32 %18, i32* %4)
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 6
  %22 = and i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 5
  %25 = and i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 3
  %31 = and i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 2
  %34 = and i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 6
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 3
  %41 = and i32 %40, 7
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 7
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @max2165_read_reg(%struct.max2165_priv*, i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
