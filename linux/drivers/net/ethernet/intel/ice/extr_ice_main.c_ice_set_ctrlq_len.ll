; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_ctrlq_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_ctrlq_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@ICE_AQ_LEN = common dso_local global i8* null, align 8
@ICE_AQ_MAX_BUF_LEN = common dso_local global i8* null, align 8
@ICE_MBXRQ_LEN = common dso_local global i32 0, align 4
@ICE_MBXSQ_LEN = common dso_local global i32 0, align 4
@ICE_MBXQ_MAX_BUF_LEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*)* @ice_set_ctrlq_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_set_ctrlq_len(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  %3 = load i8*, i8** @ICE_AQ_LEN, align 8
  %4 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i8* %3, i8** %6, align 8
  %7 = load i8*, i8** @ICE_AQ_LEN, align 8
  %8 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i8* %7, i8** %10, align 8
  %11 = load i8*, i8** @ICE_AQ_MAX_BUF_LEN, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** @ICE_AQ_MAX_BUF_LEN, align 8
  %16 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* @ICE_MBXRQ_LEN, align 4
  %20 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @ICE_MBXSQ_LEN, align 4
  %24 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @ICE_MBXQ_MAX_BUF_LEN, align 8
  %28 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @ICE_MBXQ_MAX_BUF_LEN, align 8
  %32 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
