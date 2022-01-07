; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_check_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@NX_CRB_DEV_STATE = common dso_local global i64 0, align 8
@NX_DEV_NEED_AER = common dso_local global i64 0, align 8
@NX_DEV_NEED_RESET = common dso_local global i64 0, align 8
@NX_DEV_FAILED = common dso_local global i64 0, align 8
@NETXEN_PEG_ALIVE_COUNTER = common dso_local global i64 0, align 8
@FW_FAIL_THRESH = common dso_local global i64 0, align 8
@__NX_FW_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"firmware hang detected\0A\00", align 1
@NETXEN_PEG_HALT_STATUS1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [172 x i8] c"Dumping hw/fw registers\0APEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0APEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\0APEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\0APEG_NET_4_PC: 0x%x\0A\00", align 1
@NETXEN_PEG_HALT_STATUS2 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_0 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_1 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_2 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_3 = common dso_local global i64 0, align 8
@NETXEN_CRB_PEG_NET_4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"Firmware aborted with error code 0x00006700. Device is being reset.\0A\00", align 1
@auto_fw_reset = common dso_local global i64 0, align 8
@AUTO_FW_RESET_ENABLED = common dso_local global i64 0, align 8
@__NX_RESETTING = common dso_local global i32 0, align 4
@netxen_detach_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_check_health(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %8, i32 0, i32 6
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %12 = load i64, i64* @NX_CRB_DEV_STATE, align 8
  %13 = call i64 @NXRD32(%struct.netxen_adapter* %11, i64 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @NX_DEV_NEED_AER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %160

18:                                               ; preds = %1
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %20 = call i64 @netxen_nic_check_temp(%struct.netxen_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %145

23:                                               ; preds = %18
  %24 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %30 = call i64 @nx_dev_request_reset(%struct.netxen_adapter* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %160

33:                                               ; preds = %28
  br label %145

34:                                               ; preds = %23
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @NX_DEV_NEED_RESET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @NX_DEV_FAILED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38, %34
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @NX_IS_REVISION_P2(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %145

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @NX_IS_REVISION_P2(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %160

61:                                               ; preds = %53
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %63 = load i64, i64* @NETXEN_PEG_ALIVE_COUNTER, align 8
  %64 = call i64 @NXRD32(%struct.netxen_adapter* %62, i64 %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %145

81:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %160

82:                                               ; preds = %61
  %83 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* @FW_FAIL_THRESH, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %160

90:                                               ; preds = %82
  %91 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %92 = call i64 @nx_dev_request_reset(%struct.netxen_adapter* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %160

95:                                               ; preds = %90
  %96 = load i32, i32* @__NX_FW_ATTACHED, align 4
  %97 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %97, i32 0, i32 3
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  %100 = load %struct.net_device*, %struct.net_device** %7, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %104 = load i64, i64* @NETXEN_PEG_HALT_STATUS1, align 8
  %105 = call i64 @NXRD32(%struct.netxen_adapter* %103, i64 %104)
  store i64 %105, i64* %6, align 8
  %106 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %112 = load i64, i64* @NETXEN_PEG_HALT_STATUS2, align 8
  %113 = call i64 @NXRD32(%struct.netxen_adapter* %111, i64 %112)
  %114 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %115 = load i64, i64* @NETXEN_CRB_PEG_NET_0, align 8
  %116 = add nsw i64 %115, 60
  %117 = call i64 @NXRD32(%struct.netxen_adapter* %114, i64 %116)
  %118 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %119 = load i64, i64* @NETXEN_CRB_PEG_NET_1, align 8
  %120 = add nsw i64 %119, 60
  %121 = call i64 @NXRD32(%struct.netxen_adapter* %118, i64 %120)
  %122 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %123 = load i64, i64* @NETXEN_CRB_PEG_NET_2, align 8
  %124 = add nsw i64 %123, 60
  %125 = call i64 @NXRD32(%struct.netxen_adapter* %122, i64 %124)
  %126 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %127 = load i64, i64* @NETXEN_CRB_PEG_NET_3, align 8
  %128 = add nsw i64 %127, 60
  %129 = call i64 @NXRD32(%struct.netxen_adapter* %126, i64 %128)
  %130 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %131 = load i64, i64* @NETXEN_CRB_PEG_NET_4, align 8
  %132 = add nsw i64 %131, 60
  %133 = call i64 @NXRD32(%struct.netxen_adapter* %130, i64 %132)
  %134 = call i32 (i32*, i8*, ...) @dev_err(i32* %109, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %113, i64 %117, i64 %121, i64 %125, i64 %129, i64 %133)
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @NX_FWERROR_PEGSTAT1(i64 %135)
  %137 = icmp eq i32 %136, 103
  br i1 %137, label %138, label %144

138:                                              ; preds = %95
  %139 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %139, i32 0, i32 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %144

144:                                              ; preds = %138, %95
  br label %145

145:                                              ; preds = %144, %80, %51, %33, %22
  %146 = load i64, i64* @auto_fw_reset, align 8
  %147 = load i64, i64* @AUTO_FW_RESET_ENABLED, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load i32, i32* @__NX_RESETTING, align 4
  %151 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %152 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %151, i32 0, i32 3
  %153 = call i32 @test_and_set_bit(i32 %150, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %149
  %156 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %157 = load i32, i32* @netxen_detach_work, align 4
  %158 = call i32 @netxen_schedule_work(%struct.netxen_adapter* %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %155, %149, %145
  store i32 1, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %94, %89, %81, %60, %32, %17
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @NXRD32(%struct.netxen_adapter*, i64) #1

declare dso_local i64 @netxen_nic_check_temp(%struct.netxen_adapter*) #1

declare dso_local i64 @nx_dev_request_reset(%struct.netxen_adapter*) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @NX_FWERROR_PEGSTAT1(i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @netxen_schedule_work(%struct.netxen_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
