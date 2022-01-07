; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000e_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000e_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FLAG2_HAS_EEE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I82579_EEE_CAPABILITY = common dso_local global i32 0, align 4
@I82579_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I82579_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@I217_EEE_CAPABILITY = common dso_local global i32 0, align 4
@I217_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I217_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@E1000_EEE_TX_LPI_RCVD = common dso_local global i32 0, align 4
@E1000_EEE_RX_LPI_RCVD = common dso_local global i32 0, align 4
@LPIC = common dso_local global i32 0, align 4
@E1000_LPIC_LPIET_SHIFT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @e1000e_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000e_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.e1000_adapter* %14, %struct.e1000_adapter** %6, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 2
  store %struct.e1000_hw* %16, %struct.e1000_hw** %7, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FLAG2_HAS_EEE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %160

26:                                               ; preds = %2
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %39 [
    i32 129, label %31
    i32 128, label %35
  ]

31:                                               ; preds = %26
  %32 = load i32, i32* @I82579_EEE_CAPABILITY, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @I82579_EEE_LP_ABILITY, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @I82579_EEE_PCS_STATUS, align 4
  store i32 %34, i32* %10, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* @I217_EEE_CAPABILITY, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @I217_EEE_LP_ABILITY, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @I217_EEE_PCS_STATUS, align 4
  store i32 %38, i32* %10, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %160

42:                                               ; preds = %35, %31
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pm_runtime_get_sync(i32 %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %51, align 8
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %54 = bitcast %struct.e1000_hw* %53 to %struct.e1000_hw.0*
  %55 = call i32 %52(%struct.e1000_hw.0* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %42
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pm_runtime_put_sync(i32 %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %160

66:                                               ; preds = %42
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @e1000_read_emi_reg_locked(%struct.e1000_hw* %67, i32 %68, i32* %11)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %139

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %74)
  %76 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %80)
  %82 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @e1000_read_emi_reg_locked(%struct.e1000_hw* %84, i32 %85, i32* %11)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  br label %139

90:                                               ; preds = %73
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %91)
  %93 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @e1000_read_emi_reg_locked(%struct.e1000_hw* %95, i32 %96, i32* %11)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %139

101:                                              ; preds = %90
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 129
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 8
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %101
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @E1000_EEE_TX_LPI_RCVD, align 4
  %113 = load i32, i32* @E1000_EEE_RX_LPI_RCVD, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %130 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %131, i32 0, i32 2
  store i32 1, i32* %132, align 8
  %133 = load i32, i32* @LPIC, align 4
  %134 = call i32 @er32(i32 %133)
  %135 = load i32, i32* @E1000_LPIC_LPIET_SHIFT, align 4
  %136 = ashr i32 %134, %135
  %137 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %120, %100, %89, %72
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %141 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %143, align 8
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %146 = bitcast %struct.e1000_hw* %145 to %struct.e1000_hw.1*
  %147 = call i32 %144(%struct.e1000_hw.1* %146)
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  %151 = load i32, i32* @ENODATA, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %150, %139
  %154 = load %struct.net_device*, %struct.net_device** %4, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @pm_runtime_put_sync(i32 %157)
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %153, %58, %39, %23
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @e1000_read_emi_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #1

declare dso_local i8* @mmd_eee_adv_to_ethtool_adv_t(i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
