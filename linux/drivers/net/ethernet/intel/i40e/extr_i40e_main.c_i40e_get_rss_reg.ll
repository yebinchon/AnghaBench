; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_rss_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_rss_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_PFQF_HKEY_MAX_INDEX = common dso_local global i64 0, align 8
@I40E_HLUT_ARRAY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@I40E_PFQF_HLUT_MAX_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i32*, i32*, i64)* @i40e_get_rss_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_rss_reg(%struct.i40e_vsi* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40e_pf*, align 8
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %10, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 0
  store %struct.i40e_hw* %19, %struct.i40e_hw** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  store i32* %23, i32** %13, align 8
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %36, %22
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @I40E_PFQF_HKEY_MAX_INDEX, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @I40E_PFQF_HKEY(i64 %30)
  %32 = call i32 @i40e_read_rx_ctl(%struct.i40e_hw* %29, i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %12, align 8
  br label %24

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load i32*, i32** %8, align 8
  store i32* %44, i32** %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %69

51:                                               ; preds = %43
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @I40E_PFQF_HLUT_MAX_INDEX, align 8
  %55 = icmp ule i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @I40E_PFQF_HLUT(i64 %58)
  %60 = call i32 @rd32(%struct.i40e_hw* %57, i32 %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %56
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  br label %52

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %40
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @i40e_read_rx_ctl(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_PFQF_HKEY(i64) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_PFQF_HLUT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
