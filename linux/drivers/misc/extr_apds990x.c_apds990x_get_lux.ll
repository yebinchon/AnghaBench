; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_get_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_get_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@APDS_PARAM_SCALE = common dso_local global i32 0, align 4
@APDS990X_LUX_OUTPUT_SCALE = common dso_local global i32 0, align 4
@again = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*, i32, i32)* @apds990x_get_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_get_lux(%struct.apds990x_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.apds990x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %12 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %18 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sub nsw i32 %16, %22
  %24 = load i32, i32* @APDS_PARAM_SCALE, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %27 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %33 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sub nsw i32 %31, %37
  %39 = load i32, i32* @APDS_PARAM_SCALE, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @max(i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @max(i32 %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @APDS990X_LUX_OUTPUT_SCALE, align 4
  %47 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %48 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %52 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %50, %54
  %56 = mul nsw i32 %46, %55
  %57 = load i32*, i32** @again, align 8
  %58 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %59 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %64 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = mul nsw i32 %62, %66
  %68 = sdiv i32 %56, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* @APDS_PARAM_SCALE, align 4
  %73 = sdiv i32 %71, %72
  ret i32 %73
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
