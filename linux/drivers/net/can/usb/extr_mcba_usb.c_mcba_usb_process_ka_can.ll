; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_ka_can.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_ka_can.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_priv = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.mcba_usb_msg_ka_can = type { i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"PIC CAN version %hhu.%hhu\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Wrong bitrate reported by the device (%u). Expected %u\00", align 1
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@MCBA_CAN_STATE_ERR_PSV_TH = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@MCBA_CAN_STATE_WRN_TH = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcba_priv*, %struct.mcba_usb_msg_ka_can*)* @mcba_usb_process_ka_can to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcba_usb_process_ka_can(%struct.mcba_priv* %0, %struct.mcba_usb_msg_ka_can* %1) #0 {
  %3 = alloca %struct.mcba_priv*, align 8
  %4 = alloca %struct.mcba_usb_msg_ka_can*, align 8
  %5 = alloca i32, align 4
  store %struct.mcba_priv* %0, %struct.mcba_priv** %3, align 8
  store %struct.mcba_usb_msg_ka_can* %1, %struct.mcba_usb_msg_ka_can** %4, align 8
  %6 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mcba_usb_msg_ka_can*, %struct.mcba_usb_msg_ka_can** %4, align 8
  %16 = getelementptr inbounds %struct.mcba_usb_msg_ka_can, %struct.mcba_usb_msg_ka_can* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mcba_usb_msg_ka_can*, %struct.mcba_usb_msg_ka_can** %4, align 8
  %19 = getelementptr inbounds %struct.mcba_usb_msg_ka_can, %struct.mcba_usb_msg_ka_can* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @netdev_info(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %11, %2
  %25 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %26 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.mcba_usb_msg_ka_can*, %struct.mcba_usb_msg_ka_can** %4, align 8
  %32 = call i32 @convert_can2host_bitrate(%struct.mcba_usb_msg_ka_can* %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %35, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netdev_err(i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %51)
  br label %53

53:                                               ; preds = %42, %30
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.mcba_usb_msg_ka_can*, %struct.mcba_usb_msg_ka_can** %4, align 8
  %56 = getelementptr inbounds %struct.mcba_usb_msg_ka_can, %struct.mcba_usb_msg_ka_can* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.mcba_usb_msg_ka_can*, %struct.mcba_usb_msg_ka_can** %4, align 8
  %62 = getelementptr inbounds %struct.mcba_usb_msg_ka_can, %struct.mcba_usb_msg_ka_can* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.mcba_usb_msg_ka_can*, %struct.mcba_usb_msg_ka_can** %4, align 8
  %68 = getelementptr inbounds %struct.mcba_usb_msg_ka_can, %struct.mcba_usb_msg_ka_can* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %73 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %74 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %116

76:                                               ; preds = %54
  %77 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %78 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MCBA_CAN_STATE_ERR_PSV_TH, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %85 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MCBA_CAN_STATE_ERR_PSV_TH, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83, %76
  %91 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %92 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %93 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %115

95:                                               ; preds = %83
  %96 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %97 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MCBA_CAN_STATE_WRN_TH, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %104 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MCBA_CAN_STATE_WRN_TH, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102, %95
  %110 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %111 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %112 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  br label %114

114:                                              ; preds = %109, %102
  br label %115

115:                                              ; preds = %114, %90
  br label %116

116:                                              ; preds = %115, %71
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @convert_can2host_bitrate(%struct.mcba_usb_msg_ka_can*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
