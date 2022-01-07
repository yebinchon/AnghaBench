; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c__i40e_read_lldp_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c__i40e_read_lldp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_lldp_variables = type { i32 }

@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@I40E_PTR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, %struct.i40e_lldp_variables*, i32, i32)* @_i40e_read_lldp_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_i40e_read_lldp_cfg(%struct.i40e_hw* %0, %struct.i40e_lldp_variables* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_lldp_variables*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.i40e_lldp_variables, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store %struct.i40e_lldp_variables* %1, %struct.i40e_lldp_variables** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 2, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %18 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %19 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %17, i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %12, align 8
  store i64 %23, i64* %5, align 8
  br label %95

24:                                               ; preds = %4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 2
  %28 = call i64 @i40e_aq_read_nvm(%struct.i40e_hw* %25, i32 0, i32 %27, i32 4, %struct.i40e_lldp_variables* %13, i32 1, i32* null)
  store i64 %28, i64* %12, align 8
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %30 = call i32 @i40e_release_nvm(%struct.i40e_hw* %29)
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %5, align 8
  br label %95

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.i40e_lldp_variables, %struct.i40e_lldp_variables* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @I40E_PTR_TYPE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  %45 = and i32 32767, %44
  %46 = mul nsw i32 %45, 4096
  store i32 %46, i32* %10, align 4
  br label %51

47:                                               ; preds = %35
  %48 = load i32, i32* %14, align 4
  %49 = and i32 32767, %48
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %53 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %54 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %52, i32 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %93

58:                                               ; preds = %51
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @i40e_aq_read_nvm(%struct.i40e_hw* %59, i32 %60, i32 %61, i32 4, %struct.i40e_lldp_variables* %13, i32 1, i32* null)
  store i64 %62, i64* %12, align 8
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %64 = call i32 @i40e_release_nvm(%struct.i40e_hw* %63)
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %5, align 8
  br label %95

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.i40e_lldp_variables, %struct.i40e_lldp_variables* %13, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %76, 2
  store i32 %77, i32* %11, align 4
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %79 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %80 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %78, i32 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %93

84:                                               ; preds = %69
  %85 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.i40e_lldp_variables*, %struct.i40e_lldp_variables** %7, align 8
  %90 = call i64 @i40e_aq_read_nvm(%struct.i40e_hw* %85, i32 0, i32 %88, i32 4, %struct.i40e_lldp_variables* %89, i32 1, i32* null)
  store i64 %90, i64* %12, align 8
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %92 = call i32 @i40e_release_nvm(%struct.i40e_hw* %91)
  br label %93

93:                                               ; preds = %84, %83, %57
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %93, %67, %33, %22
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i64 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i64 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, %struct.i40e_lldp_variables*, i32, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
