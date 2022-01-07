; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.m_can_classdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.can_bittiming, %struct.can_bittiming }
%struct.TYPE_3__ = type { i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32 }

@NBTP_NBRP_SHIFT = common dso_local global i32 0, align 4
@NBTP_NSJW_SHIFT = common dso_local global i32 0, align 4
@NBTP_NTSEG1_SHIFT = common dso_local global i32 0, align 4
@NBTP_NTSEG2_SHIFT = common dso_local global i32 0, align 4
@M_CAN_NBTP = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"TDCO value of %u is beyond maximum. Using maximum possible value\0A\00", align 1
@DBTP_TDC = common dso_local global i32 0, align 4
@M_CAN_TDCR = common dso_local global i32 0, align 4
@TDCR_TDCO_SHIFT = common dso_local global i32 0, align 4
@DBTP_DBRP_SHIFT = common dso_local global i32 0, align 4
@DBTP_DSJW_SHIFT = common dso_local global i32 0, align 4
@DBTP_DTSEG1_SHIFT = common dso_local global i32 0, align 4
@DBTP_DTSEG2_SHIFT = common dso_local global i32 0, align 4
@M_CAN_DBTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @m_can_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %13)
  store %struct.m_can_classdev* %14, %struct.m_can_classdev** %3, align 8
  %15 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %16 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store %struct.can_bittiming* %17, %struct.can_bittiming** %4, align 8
  %18 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %19 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store %struct.can_bittiming* %20, %struct.can_bittiming** %5, align 8
  %21 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %22 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %26 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %30 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %33 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %38 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NBTP_NBRP_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NBTP_NSJW_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @NBTP_NTSEG1_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NBTP_NTSEG2_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %57 = load i32, i32* @M_CAN_NBTP, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @m_can_write(%struct.m_can_classdev* %56, i32 %57, i32 %58)
  %60 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %61 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %146

67:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %68 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %69 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %73 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %77 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %80 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %85 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %89 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 2500000
  br i1 %91, label %92, label %124

92:                                               ; preds = %67
  %93 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %94 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  %96 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %97 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 1000
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %105 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %103, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp sgt i32 %108, 127
  br i1 %109, label %110, label %114

110:                                              ; preds = %92
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @netdev_warn(%struct.net_device* %111, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %112)
  store i32 127, i32* %11, align 4
  br label %114

114:                                              ; preds = %110, %92
  %115 = load i32, i32* @DBTP_TDC, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %119 = load i32, i32* @M_CAN_TDCR, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @TDCR_TDCO_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = call i32 @m_can_write(%struct.m_can_classdev* %118, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %114, %67
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @DBTP_DBRP_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @DBTP_DSJW_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = or i32 %127, %130
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @DBTP_DTSEG1_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = or i32 %131, %134
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @DBTP_DTSEG2_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = or i32 %135, %138
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %143 = load i32, i32* @M_CAN_DBTP, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @m_can_write(%struct.m_can_classdev* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %124, %1
  ret i32 0
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
