; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_check_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_check_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT = common dso_local global i32 0, align 4
@QLCNIC_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@QLCNIC_HEARTBEAT_PERIOD_MSECS = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"firmware hang detected\0A\00", align 1
@QLCNIC_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [172 x i8] c"Dumping HW/FW registers\0APEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0APEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\0APEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\0APEG_NET_4_PC: 0x%x\0A\00", align 1
@QLCNIC_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_0 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_1 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_2 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_3 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Device is being reset err code 0x00006700.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_check_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_check_heartbeat(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %12 = load i32, i32* @QLCNIC_PEG_ALIVE_COUNTER, align 4
  %13 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i64
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %32, %1
  %18 = load i32, i32* @QLCNIC_HEARTBEAT_PERIOD_MSECS, align 4
  %19 = call i32 @msleep(i32 %18)
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %21 = load i32, i32* @QLCNIC_PEG_ALIVE_COUNTER, align 4
  %22 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %20, i32 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %30, i32* %6, align 4
  br label %36

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %17, label %36

36:                                               ; preds = %32, %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %36
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %46 = call i32 @qlcnic_83xx_take_eport_out_of_reset(%struct.qlcnic_adapter* %45)
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %48 = call i32 @qlcnic_83xx_disable_pause_frames(%struct.qlcnic_adapter* %47)
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %50 = load i32, i32* @QLCNIC_PEG_HALT_STATUS1, align 4
  %51 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %49, i32 %50)
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %4, align 8
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %59 = load i32, i32* @QLCNIC_PEG_HALT_STATUS2, align 4
  %60 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %58, i32 %59)
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %62 = load i32, i32* @QLC_83XX_CRB_PEG_NET_0, align 4
  %63 = call i32 @QLCRD32(%struct.qlcnic_adapter* %61, i32 %62, i32* %7)
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %65 = load i32, i32* @QLC_83XX_CRB_PEG_NET_1, align 4
  %66 = call i32 @QLCRD32(%struct.qlcnic_adapter* %64, i32 %65, i32* %7)
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %68 = load i32, i32* @QLC_83XX_CRB_PEG_NET_2, align 4
  %69 = call i32 @QLCRD32(%struct.qlcnic_adapter* %67, i32 %68, i32* %7)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %71 = load i32, i32* @QLC_83XX_CRB_PEG_NET_3, align 4
  %72 = call i32 @QLCRD32(%struct.qlcnic_adapter* %70, i32 %71, i32* %7)
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %74 = load i32, i32* @QLC_83XX_CRB_PEG_NET_4, align 4
  %75 = call i32 @QLCRD32(%struct.qlcnic_adapter* %73, i32 %74, i32* %7)
  %76 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.1, i64 0, i64 0), i64 %57, i8* %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @QLCNIC_FWERROR_CODE(i64 %77)
  %79 = icmp eq i32 %78, 103
  br i1 %79, label %80, label %86

80:                                               ; preds = %39
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %80, %39
  br label %87

87:                                               ; preds = %86, %36
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_83xx_take_eport_out_of_reset(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_disable_pause_frames(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @QLCNIC_FWERROR_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
