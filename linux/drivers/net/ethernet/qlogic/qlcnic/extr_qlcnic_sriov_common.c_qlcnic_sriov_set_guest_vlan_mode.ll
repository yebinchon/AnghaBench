; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_set_guest_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_set_guest_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, i32, i32* }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"Number of allowed Guest VLANs = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_set_guest_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_set_guest_vlan_mode(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_sriov*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %13, align 8
  store %struct.qlcnic_sriov* %14, %struct.qlcnic_sriov** %6, align 8
  %15 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %22 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 15
  %28 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 16
  %37 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %48 = call i32 @qlcnic_sriov_alloc_vlans(%struct.qlcnic_adapter* %47)
  %49 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %50 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %96

54:                                               ; preds = %20
  %55 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %56 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32* @kcalloc(i32 %58, i32 4, i32 %59)
  %61 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %64 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %96

70:                                               ; preds = %54
  %71 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %72 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32* %75, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %92, %70
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %87 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %76

95:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %67, %53, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_sriov_alloc_vlans(%struct.qlcnic_adapter*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
