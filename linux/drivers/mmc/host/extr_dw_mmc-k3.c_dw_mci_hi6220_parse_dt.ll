; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi6220_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi6220_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.k3_priv*, %struct.TYPE_2__* }
%struct.k3_priv = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hisilicon,peripheral-syscon\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mshc\00", align 1
@TIMING_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_hi6220_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_hi6220_parse_dt(%struct.dw_mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.k3_priv*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  %5 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %6 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.k3_priv* @devm_kzalloc(%struct.TYPE_2__* %7, i32 16, i32 %8)
  store %struct.k3_priv* %9, %struct.k3_priv** %4, align 8
  %10 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %11 = icmp ne %struct.k3_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %17 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @syscon_regmap_lookup_by_phandle(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %23 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %25 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %31 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %15
  %33 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %34 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @of_alias_get_id(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %40 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %42 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %47 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %50 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TIMING_MODE, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.k3_priv*, %struct.k3_priv** %4, align 8
  %59 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %60 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %59, i32 0, i32 0
  store %struct.k3_priv* %58, %struct.k3_priv** %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %54, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.k3_priv* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i64 @of_alias_get_id(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
