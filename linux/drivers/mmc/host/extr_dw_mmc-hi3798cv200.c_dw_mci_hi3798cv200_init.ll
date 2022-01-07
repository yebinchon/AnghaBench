; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-hi3798cv200.c_dw_mci_hi3798cv200_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-hi3798cv200.c_dw_mci_hi3798cv200_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.hi3798cv200_priv*, i32 }
%struct.hi3798cv200_priv = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ciu-sample\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get ciu-sample clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ciu-drive\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to get ciu-drive clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to enable ciu-sample clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to enable ciu-drive clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_hi3798cv200_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_hi3798cv200_init(%struct.dw_mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.hi3798cv200_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  %6 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %7 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hi3798cv200_priv* @devm_kzalloc(i32 %8, i32 16, i32 %9)
  store %struct.hi3798cv200_priv* %10, %struct.hi3798cv200_priv** %4, align 8
  %11 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %12 = icmp ne %struct.hi3798cv200_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %93

16:                                               ; preds = %1
  %17 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %18 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @devm_clk_get(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %22 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %24 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %30 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %34 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %2, align 4
  br label %93

37:                                               ; preds = %16
  %38 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %39 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @devm_clk_get(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %43 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %45 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %37
  %50 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %51 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %55 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %2, align 4
  br label %93

58:                                               ; preds = %37
  %59 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %60 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @clk_prepare_enable(i8* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %67 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %93

71:                                               ; preds = %58
  %72 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %73 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @clk_prepare_enable(i8* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %80 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %87

83:                                               ; preds = %71
  %84 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %85 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %86 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %85, i32 0, i32 0
  store %struct.hi3798cv200_priv* %84, %struct.hi3798cv200_priv** %86, align 8
  store i32 0, i32* %2, align 4
  br label %93

87:                                               ; preds = %78
  %88 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %4, align 8
  %89 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @clk_disable_unprepare(i8* %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %87, %83, %65, %49, %28, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.hi3798cv200_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
