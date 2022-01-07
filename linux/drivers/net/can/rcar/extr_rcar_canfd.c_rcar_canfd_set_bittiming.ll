; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_canfd_channel = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.can_bittiming, %struct.can_bittiming }
%struct.can_bittiming = type { i64, i64, i64, i64, i64 }

@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"nrate: brp %u, sjw %u, tseg1 %u, tseg2 %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"drate: brp %u, sjw %u, tseg1 %u, tseg2 %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"rate: brp %u, sjw %u, tseg1 %u, tseg2 %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_canfd_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_canfd_channel*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %12)
  store %struct.rcar_canfd_channel* %13, %struct.rcar_canfd_channel** %3, align 8
  %14 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %15 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.can_bittiming* %16, %struct.can_bittiming** %4, align 8
  %17 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.can_bittiming* %19, %struct.can_bittiming** %5, align 8
  %20 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %21 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %24 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %6, align 8
  %27 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %28 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  store i64 %30, i64* %7, align 8
  %31 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %32 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %35 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = sub nsw i64 %37, 1
  store i64 %38, i64* %8, align 8
  %39 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %40 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %44 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %123

50:                                               ; preds = %1
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @RCANFD_NCFG_NTSEG1(i64 %51)
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @RCANFD_NCFG_NBRP(i64 %53)
  %55 = or i32 %52, %54
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @RCANFD_NCFG_NSJW(i64 %56)
  %58 = or i32 %55, %57
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @RCANFD_NCFG_NTSEG2(i64 %59)
  %61 = or i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %63 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @RCANFD_CCFG(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @rcar_canfd_write(i32 %64, i32 %66, i32 %67)
  %69 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %70 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @netdev_dbg(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %72, i64 %73, i64 %74, i64 %75)
  %77 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %78 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 1
  store i64 %80, i64* %6, align 8
  %81 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %82 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  %85 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %86 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %89 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = sub nsw i64 %91, 1
  store i64 %92, i64* %8, align 8
  %93 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %94 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @RCANFD_DCFG_DTSEG1(i64 %97)
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @RCANFD_DCFG_DBRP(i64 %99)
  %101 = or i32 %98, %100
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @RCANFD_DCFG_DSJW(i64 %102)
  %104 = or i32 %101, %103
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @RCANFD_DCFG_DTSEG2(i64 %105)
  %107 = or i32 %104, %106
  store i32 %107, i32* %10, align 4
  %108 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %109 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @RCANFD_F_DCFG(i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @rcar_canfd_write(i32 %110, i32 %112, i32 %113)
  %115 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %116 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @netdev_dbg(i32 %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %118, i64 %119, i64 %120, i64 %121)
  br label %150

123:                                              ; preds = %1
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @RCANFD_CFG_TSEG1(i64 %124)
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @RCANFD_CFG_BRP(i64 %126)
  %128 = or i32 %125, %127
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @RCANFD_CFG_SJW(i64 %129)
  %131 = or i32 %128, %130
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @RCANFD_CFG_TSEG2(i64 %132)
  %134 = or i32 %131, %133
  store i32 %134, i32* %10, align 4
  %135 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %136 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @RCANFD_CCFG(i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @rcar_canfd_write(i32 %137, i32 %139, i32 %140)
  %142 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %143 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @netdev_dbg(i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %145, i64 %146, i64 %147, i64 %148)
  br label %150

150:                                              ; preds = %123, %50
  ret void
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RCANFD_NCFG_NTSEG1(i64) #1

declare dso_local i32 @RCANFD_NCFG_NBRP(i64) #1

declare dso_local i32 @RCANFD_NCFG_NSJW(i64) #1

declare dso_local i32 @RCANFD_NCFG_NTSEG2(i64) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @RCANFD_CCFG(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @RCANFD_DCFG_DTSEG1(i64) #1

declare dso_local i32 @RCANFD_DCFG_DBRP(i64) #1

declare dso_local i32 @RCANFD_DCFG_DSJW(i64) #1

declare dso_local i32 @RCANFD_DCFG_DTSEG2(i64) #1

declare dso_local i32 @RCANFD_F_DCFG(i32) #1

declare dso_local i32 @RCANFD_CFG_TSEG1(i64) #1

declare dso_local i32 @RCANFD_CFG_BRP(i64) #1

declare dso_local i32 @RCANFD_CFG_SJW(i64) #1

declare dso_local i32 @RCANFD_CFG_TSEG2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
