; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_aq_get_dcb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_aq_get_dcb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_dcbx_config = type { i32 }
%struct.i40e_virt_mem = type { i64 }

@I40E_LLDPDU_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_aq_get_dcb_config(%struct.i40e_hw* %0, i32 %1, i32 %2, %struct.i40e_dcbx_config* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_dcbx_config*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_virt_mem, align 8
  %12 = alloca i32*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.i40e_dcbx_config* %3, %struct.i40e_dcbx_config** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %14 = load i32, i32* @I40E_LLDPDU_SIZE, align 4
  %15 = call i64 @i40e_allocate_virt_mem(%struct.i40e_hw* %13, %struct.i40e_virt_mem* %11, i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %5, align 8
  br label %42

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.i40e_virt_mem, %struct.i40e_virt_mem* %11, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* @I40E_LLDPDU_SIZE, align 4
  %30 = call i64 @i40e_aq_get_lldp_mib(%struct.i40e_hw* %24, i32 %25, i32 %26, i8* %28, i32 %29, i32* null, i32* null, i32* null)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %38

34:                                               ; preds = %20
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %9, align 8
  %37 = call i64 @i40e_lldp_to_dcb_config(i32* %35, %struct.i40e_dcbx_config* %36)
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %34, %33
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %40 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %39, %struct.i40e_virt_mem* %11)
  %41 = load i64, i64* %10, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %38, %18
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i64 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*, i32) #1

declare dso_local i64 @i40e_aq_get_lldp_mib(%struct.i40e_hw*, i32, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @i40e_lldp_to_dcb_config(i32*, %struct.i40e_dcbx_config*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, %struct.i40e_virt_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
