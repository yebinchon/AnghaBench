; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_clk_csr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_clk_csr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i32, i32 }

@SXGBE_CSR_F_150M = common dso_local global i64 0, align 8
@SXGBE_CSR_100_150M = common dso_local global i32 0, align 4
@SXGBE_CSR_F_250M = common dso_local global i64 0, align 8
@SXGBE_CSR_150_250M = common dso_local global i32 0, align 4
@SXGBE_CSR_F_300M = common dso_local global i64 0, align 8
@SXGBE_CSR_250_300M = common dso_local global i32 0, align 4
@SXGBE_CSR_F_350M = common dso_local global i64 0, align 8
@SXGBE_CSR_300_350M = common dso_local global i32 0, align 4
@SXGBE_CSR_F_400M = common dso_local global i64 0, align 8
@SXGBE_CSR_350_400M = common dso_local global i32 0, align 4
@SXGBE_CSR_F_500M = common dso_local global i64 0, align 8
@SXGBE_CSR_400_500M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_priv_data*)* @sxgbe_clk_csr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_clk_csr_set(%struct.sxgbe_priv_data* %0) #0 {
  %2 = alloca %struct.sxgbe_priv_data*, align 8
  %3 = alloca i64, align 8
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %2, align 8
  %4 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %5 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @clk_get_rate(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @SXGBE_CSR_F_150M, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @SXGBE_CSR_100_150M, align 4
  %13 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %14 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SXGBE_CSR_F_250M, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @SXGBE_CSR_150_250M, align 4
  %21 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %22 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %59

23:                                               ; preds = %15
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @SXGBE_CSR_F_300M, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @SXGBE_CSR_250_300M, align 4
  %29 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %30 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %58

31:                                               ; preds = %23
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @SXGBE_CSR_F_350M, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @SXGBE_CSR_300_350M, align 4
  %37 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %38 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @SXGBE_CSR_F_400M, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @SXGBE_CSR_350_400M, align 4
  %45 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %46 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %56

47:                                               ; preds = %39
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @SXGBE_CSR_F_500M, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @SXGBE_CSR_400_500M, align 4
  %53 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %54 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %27
  br label %59

59:                                               ; preds = %58, %19
  br label %60

60:                                               ; preds = %59, %11
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
