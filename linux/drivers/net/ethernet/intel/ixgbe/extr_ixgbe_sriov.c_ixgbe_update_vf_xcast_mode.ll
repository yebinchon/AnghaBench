; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_update_vf_xcast_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_update_vf_xcast_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IXGBE_VMOLR_BAM = common dso_local global i64 0, align 8
@IXGBE_VMOLR_ROMPE = common dso_local global i64 0, align 8
@IXGBE_VMOLR_MPE = common dso_local global i64 0, align 8
@IXGBE_VMOLR_UPE = common dso_local global i64 0, align 8
@IXGBE_VMOLR_VPE = common dso_local global i64 0, align 8
@ixgbe_mac_82599EB = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_UPE = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Enabling VF promisc requires PF in promisc\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_update_vf_xcast_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_update_vf_xcast_mode(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 1
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %8, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %35 [
    i32 130, label %27
    i32 129, label %34
    i32 128, label %34
  ]

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %157

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %3, %3, %33
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %157

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 133
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 133, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %41, %38
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %152

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  switch i32 %63, label %125 [
    i32 132, label %64
    i32 133, label %74
    i32 134, label %83
    i32 131, label %92
  ]

64:                                               ; preds = %62
  %65 = load i64, i64* @IXGBE_VMOLR_BAM, align 8
  %66 = load i64, i64* @IXGBE_VMOLR_ROMPE, align 8
  %67 = or i64 %65, %66
  %68 = load i64, i64* @IXGBE_VMOLR_MPE, align 8
  %69 = or i64 %67, %68
  %70 = load i64, i64* @IXGBE_VMOLR_UPE, align 8
  %71 = or i64 %69, %70
  %72 = load i64, i64* @IXGBE_VMOLR_VPE, align 8
  %73 = or i64 %71, %72
  store i64 %73, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %128

74:                                               ; preds = %62
  %75 = load i64, i64* @IXGBE_VMOLR_MPE, align 8
  %76 = load i64, i64* @IXGBE_VMOLR_UPE, align 8
  %77 = or i64 %75, %76
  %78 = load i64, i64* @IXGBE_VMOLR_VPE, align 8
  %79 = or i64 %77, %78
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* @IXGBE_VMOLR_BAM, align 8
  %81 = load i64, i64* @IXGBE_VMOLR_ROMPE, align 8
  %82 = or i64 %80, %81
  store i64 %82, i64* %13, align 8
  br label %128

83:                                               ; preds = %62
  %84 = load i64, i64* @IXGBE_VMOLR_UPE, align 8
  %85 = load i64, i64* @IXGBE_VMOLR_VPE, align 8
  %86 = or i64 %84, %85
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* @IXGBE_VMOLR_BAM, align 8
  %88 = load i64, i64* @IXGBE_VMOLR_ROMPE, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* @IXGBE_VMOLR_MPE, align 8
  %91 = or i64 %89, %90
  store i64 %91, i64* %13, align 8
  br label %128

92:                                               ; preds = %62
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ixgbe_mac_82599EB, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @EOPNOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %157

102:                                              ; preds = %92
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %104 = load i32, i32* @IXGBE_FCTRL, align 4
  %105 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %103, i32 %104)
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @IXGBE_FCTRL_UPE, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @drv, align 4
  %112 = call i32 @e_warn(i32 %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @EPERM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %157

115:                                              ; preds = %102
  store i64 0, i64* %12, align 8
  %116 = load i64, i64* @IXGBE_VMOLR_BAM, align 8
  %117 = load i64, i64* @IXGBE_VMOLR_ROMPE, align 8
  %118 = or i64 %116, %117
  %119 = load i64, i64* @IXGBE_VMOLR_MPE, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* @IXGBE_VMOLR_UPE, align 8
  %122 = or i64 %120, %121
  %123 = load i64, i64* @IXGBE_VMOLR_VPE, align 8
  %124 = or i64 %122, %123
  store i64 %124, i64* %13, align 8
  br label %128

125:                                              ; preds = %62
  %126 = load i32, i32* @EOPNOTSUPP, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %157

128:                                              ; preds = %115, %83, %74, %64
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @IXGBE_VMOLR(i64 %130)
  %132 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %129, i32 %131)
  store i64 %132, i64* %10, align 8
  %133 = load i64, i64* %12, align 8
  %134 = xor i64 %133, -1
  %135 = load i64, i64* %10, align 8
  %136 = and i64 %135, %134
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %10, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %10, align 8
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @IXGBE_VMOLR(i64 %141)
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %140, i32 %142, i64 %143)
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %147 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i32 %145, i32* %151, align 4
  br label %152

152:                                              ; preds = %128, %61
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64*, i64** %6, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  store i64 %154, i64* %156, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %152, %125, %110, %99, %35, %30
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @e_warn(i32, i8*) #1

declare dso_local i32 @IXGBE_VMOLR(i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
