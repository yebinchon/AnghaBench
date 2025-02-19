; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_common.c_iavf_set_mac_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_common.c_iavf_set_mac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@IAVF_MAC_X722_VF = common dso_local global i32 0, align 4
@IAVF_MAC_VF = common dso_local global i32 0, align 4
@IAVF_MAC_GENERIC = common dso_local global i32 0, align 4
@IAVF_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"found mac: %d, returns: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_set_mac_type(%struct.iavf_hw* %0) #0 {
  %2 = alloca %struct.iavf_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.iavf_hw* %0, %struct.iavf_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 130, label %18
    i32 129, label %18
    i32 131, label %18
  ]

13:                                               ; preds = %9
  %14 = load i32, i32* @IAVF_MAC_X722_VF, align 4
  %15 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %16 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  br label %28

18:                                               ; preds = %9, %9, %9
  %19 = load i32, i32* @IAVF_MAC_VF, align 4
  %20 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %21 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  br label %28

23:                                               ; preds = %9
  %24 = load i32, i32* @IAVF_MAC_GENERIC, align 4
  %25 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %26 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %18, %13
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @IAVF_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %33 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %34 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @hw_dbg(%struct.iavf_hw* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @hw_dbg(%struct.iavf_hw*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
