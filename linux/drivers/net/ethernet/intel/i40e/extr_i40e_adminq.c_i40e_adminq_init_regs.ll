; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_adminq_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_adminq_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@I40E_VF_ATQT1 = common dso_local global i32 0, align 4
@I40E_VF_ATQH1 = common dso_local global i32 0, align 4
@I40E_VF_ATQLEN1 = common dso_local global i32 0, align 4
@I40E_VF_ATQBAL1 = common dso_local global i32 0, align 4
@I40E_VF_ATQBAH1 = common dso_local global i32 0, align 4
@I40E_VF_ARQT1 = common dso_local global i32 0, align 4
@I40E_VF_ARQH1 = common dso_local global i32 0, align 4
@I40E_VF_ARQLEN1 = common dso_local global i32 0, align 4
@I40E_VF_ARQBAL1 = common dso_local global i32 0, align 4
@I40E_VF_ARQBAH1 = common dso_local global i32 0, align 4
@I40E_PF_ATQT = common dso_local global i32 0, align 4
@I40E_PF_ATQH = common dso_local global i32 0, align 4
@I40E_PF_ATQLEN = common dso_local global i32 0, align 4
@I40E_PF_ATQBAL = common dso_local global i32 0, align 4
@I40E_PF_ATQBAH = common dso_local global i32 0, align 4
@I40E_PF_ARQT = common dso_local global i32 0, align 4
@I40E_PF_ARQH = common dso_local global i32 0, align 4
@I40E_PF_ARQLEN = common dso_local global i32 0, align 4
@I40E_PF_ARQBAL = common dso_local global i32 0, align 4
@I40E_PF_ARQBAH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_hw*)* @i40e_adminq_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_adminq_init_regs(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %3 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %4 = call i64 @i40e_is_vf(%struct.i40e_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %1
  %7 = load i32, i32* @I40E_VF_ATQT1, align 4
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* @I40E_VF_ATQH1, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @I40E_VF_ATQLEN1, align 4
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @I40E_VF_ATQBAL1, align 4
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @I40E_VF_ATQBAH1, align 4
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @I40E_VF_ARQT1, align 4
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @I40E_VF_ARQH1, align 4
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %39 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @I40E_VF_ARQLEN1, align 4
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @I40E_VF_ARQBAL1, align 4
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @I40E_VF_ARQBAH1, align 4
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %54 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %108

57:                                               ; preds = %1
  %58 = load i32, i32* @I40E_PF_ATQT, align 4
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @I40E_PF_ATQH, align 4
  %64 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %65 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @I40E_PF_ATQLEN, align 4
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %70 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @I40E_PF_ATQBAL, align 4
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %75 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @I40E_PF_ATQBAH, align 4
  %79 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %80 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @I40E_PF_ARQT, align 4
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %85 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @I40E_PF_ARQH, align 4
  %89 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %90 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* @I40E_PF_ARQLEN, align 4
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %95 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @I40E_PF_ARQBAL, align 4
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %100 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @I40E_PF_ARQBAH, align 4
  %104 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %105 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %57, %6
  ret void
}

declare dso_local i64 @i40e_is_vf(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
