; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_offload_txtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_offload_txtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tc_etf_qopt_offload = type { i32, i32 }

@e1000_i210 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, %struct.tc_etf_qopt_offload*)* @igb_offload_txtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_offload_txtime(%struct.igb_adapter* %0, %struct.tc_etf_qopt_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca %struct.tc_etf_qopt_offload*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store %struct.tc_etf_qopt_offload* %1, %struct.tc_etf_qopt_offload** %5, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 0
  store %struct.e1000_hw* %9, %struct.e1000_hw** %6, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_i210, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.tc_etf_qopt_offload*, %struct.tc_etf_qopt_offload** %5, align 8
  %21 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.tc_etf_qopt_offload*, %struct.tc_etf_qopt_offload** %5, align 8
  %26 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %24
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %34 = load %struct.tc_etf_qopt_offload*, %struct.tc_etf_qopt_offload** %5, align 8
  %35 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tc_etf_qopt_offload*, %struct.tc_etf_qopt_offload** %5, align 8
  %38 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @igb_save_txtime_params(%struct.igb_adapter* %33, i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %32
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %47 = load %struct.tc_etf_qopt_offload*, %struct.tc_etf_qopt_offload** %5, align 8
  %48 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @igb_offload_apply(%struct.igb_adapter* %46, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %43, %29, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @igb_save_txtime_params(%struct.igb_adapter*, i32, i32) #1

declare dso_local i32 @igb_offload_apply(%struct.igb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
