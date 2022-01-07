; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_adminq_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_adminq_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@IAVF_VF_ATQT1 = common dso_local global i32 0, align 4
@IAVF_VF_ATQH1 = common dso_local global i32 0, align 4
@IAVF_VF_ATQLEN1 = common dso_local global i32 0, align 4
@IAVF_VF_ATQBAL1 = common dso_local global i32 0, align 4
@IAVF_VF_ATQBAH1 = common dso_local global i32 0, align 4
@IAVF_VF_ARQT1 = common dso_local global i32 0, align 4
@IAVF_VF_ARQH1 = common dso_local global i32 0, align 4
@IAVF_VF_ARQLEN1 = common dso_local global i32 0, align 4
@IAVF_VF_ARQBAL1 = common dso_local global i32 0, align 4
@IAVF_VF_ARQBAH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_hw*)* @iavf_adminq_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_adminq_init_regs(%struct.iavf_hw* %0) #0 {
  %2 = alloca %struct.iavf_hw*, align 8
  store %struct.iavf_hw* %0, %struct.iavf_hw** %2, align 8
  %3 = load i32, i32* @IAVF_VF_ATQT1, align 4
  %4 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* @IAVF_VF_ATQH1, align 4
  %9 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @IAVF_VF_ATQLEN1, align 4
  %14 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %15 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @IAVF_VF_ATQBAL1, align 4
  %19 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @IAVF_VF_ATQBAH1, align 4
  %24 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %25 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @IAVF_VF_ARQT1, align 4
  %29 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %30 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @IAVF_VF_ARQH1, align 4
  %34 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %35 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @IAVF_VF_ARQLEN1, align 4
  %39 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %40 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @IAVF_VF_ARQBAL1, align 4
  %44 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %45 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @IAVF_VF_ARQBAH1, align 4
  %49 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %50 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
