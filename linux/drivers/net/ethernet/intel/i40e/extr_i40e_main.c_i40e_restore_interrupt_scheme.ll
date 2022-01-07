; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_restore_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_restore_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i64* }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_IWARP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_restore_interrupt_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_restore_interrupt_scheme(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %6 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %7 = load i32, i32* @I40E_FLAG_MSI_ENABLED, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %14 = call i32 @i40e_init_interrupt_scheme(%struct.i40e_pf* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %103

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @i40e_vsi_alloc_q_vectors(i64 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %77

47:                                               ; preds = %35
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @i40e_vsi_map_rings_to_vectors(i64 %54)
  br label %56

56:                                               ; preds = %47, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %20

60:                                               ; preds = %20
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %62 = call i32 @i40e_setup_misc_vector(%struct.i40e_pf* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %77

66:                                               ; preds = %60
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @I40E_FLAG_IWARP_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %75 = call i32 @i40e_client_update_msix_info(%struct.i40e_pf* %74)
  br label %76

76:                                               ; preds = %73, %66
  store i32 0, i32* %2, align 4
  br label %103

77:                                               ; preds = %65, %46
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %5, align 4
  %81 = icmp ne i32 %79, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %93 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @i40e_vsi_free_q_vectors(i64 %98)
  br label %100

100:                                              ; preds = %91, %82
  br label %78

101:                                              ; preds = %78
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %76, %17
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @i40e_init_interrupt_scheme(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_vsi_alloc_q_vectors(i64) #1

declare dso_local i32 @i40e_vsi_map_rings_to_vectors(i64) #1

declare dso_local i32 @i40e_setup_misc_vector(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_client_update_msix_info(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_vsi_free_q_vectors(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
