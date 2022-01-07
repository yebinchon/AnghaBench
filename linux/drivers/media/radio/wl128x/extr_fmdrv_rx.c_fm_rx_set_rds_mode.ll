; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_rds_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_rds_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@FM_RDS_ENABLE = common dso_local global i64 0, align 8
@FM_RDS_DISABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Invalid rds option\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FM_RX_PWR_SET_FM_AND_RDS_BLK_ON = common dso_local global i32 0, align 4
@POWER_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@FM_RX_RDS_FLUSH_FIFO = common dso_local global i32 0, align 4
@RDS_CNTRL_SET = common dso_local global i32 0, align 4
@FLAG_GET = common dso_local global i32 0, align 4
@REG_RD = common dso_local global i32 0, align 4
@FM_RX_RDS_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@RDS_MEM_SET = common dso_local global i32 0, align 4
@FM_RDS_EVENT = common dso_local global i32 0, align 4
@INT_MASK_SET = common dso_local global i32 0, align 4
@FM_RX_PWR_SET_FM_ON_RDS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_set_rds_mode(%struct.fmdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @FM_RDS_ENABLE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @FM_RDS_DISABLE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i32 @fmerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %153

19:                                               ; preds = %11, %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @FM_RDS_ENABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %102

23:                                               ; preds = %19
  %24 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %25 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FM_RDS_DISABLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %102

31:                                               ; preds = %23
  %32 = load i32, i32* @FM_RX_PWR_SET_FM_AND_RDS_BLK_ON, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %34 = load i32, i32* @POWER_SET, align 4
  %35 = load i32, i32* @REG_WR, align 4
  %36 = call i32 @fmc_send_cmd(%struct.fmdev* %33, i32 %34, i32 %35, i32* %6, i32 4, i32* null, i32* null)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %153

41:                                               ; preds = %31
  %42 = load i32, i32* @FM_RX_RDS_FLUSH_FIFO, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %44 = load i32, i32* @RDS_CNTRL_SET, align 4
  %45 = load i32, i32* @REG_WR, align 4
  %46 = call i32 @fmc_send_cmd(%struct.fmdev* %43, i32 %44, i32 %45, i32* %6, i32 4, i32* null, i32* null)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %153

51:                                               ; preds = %41
  %52 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %53 = load i32, i32* @FLAG_GET, align 4
  %54 = load i32, i32* @REG_RD, align 4
  %55 = call i32 @fmc_send_cmd(%struct.fmdev* %52, i32 %53, i32 %54, i32* null, i32 2, i32* null, i32* null)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %153

60:                                               ; preds = %51
  %61 = load i32, i32* @FM_RX_RDS_FIFO_THRESHOLD, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %63 = load i32, i32* @RDS_MEM_SET, align 4
  %64 = load i32, i32* @REG_WR, align 4
  %65 = call i32 @fmc_send_cmd(%struct.fmdev* %62, i32 %63, i32 %64, i32* %6, i32 4, i32* null, i32* null)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %153

70:                                               ; preds = %60
  %71 = load i32, i32* @FM_RDS_EVENT, align 4
  %72 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %73 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %78 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %6, align 4
  %81 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %82 = load i32, i32* @INT_MASK_SET, align 4
  %83 = load i32, i32* @REG_WR, align 4
  %84 = call i32 @fmc_send_cmd(%struct.fmdev* %81, i32 %82, i32 %83, i32* %6, i32 4, i32* null, i32* null)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %70
  %88 = load i32, i32* @FM_RDS_EVENT, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %91 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %89
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %153

96:                                               ; preds = %70
  %97 = load i64, i64* @FM_RDS_ENABLE, align 8
  %98 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %99 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i64 %97, i64* %101, align 8
  br label %152

102:                                              ; preds = %23, %19
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @FM_RDS_DISABLE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %151

106:                                              ; preds = %102
  %107 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %108 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @FM_RDS_ENABLE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %151

114:                                              ; preds = %106
  %115 = load i32, i32* @FM_RX_PWR_SET_FM_ON_RDS_OFF, align 4
  store i32 %115, i32* %6, align 4
  %116 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %117 = load i32, i32* @POWER_SET, align 4
  %118 = load i32, i32* @REG_WR, align 4
  %119 = call i32 @fmc_send_cmd(%struct.fmdev* %116, i32 %117, i32 %118, i32* %6, i32 4, i32* null, i32* null)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %153

124:                                              ; preds = %114
  %125 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %126 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %130 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  %133 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %134 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %138 = call i32 @fm_rx_reset_station_info(%struct.fmdev* %137)
  %139 = load i32, i32* @FM_RDS_EVENT, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %142 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %140
  store i32 %145, i32* %143, align 8
  %146 = load i64, i64* @FM_RDS_DISABLE, align 8
  %147 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %148 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i64 %146, i64* %150, align 8
  br label %151

151:                                              ; preds = %124, %106, %102
  br label %152

152:                                              ; preds = %151, %96
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %122, %87, %68, %58, %49, %39, %15
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @fm_rx_reset_station_info(%struct.fmdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
