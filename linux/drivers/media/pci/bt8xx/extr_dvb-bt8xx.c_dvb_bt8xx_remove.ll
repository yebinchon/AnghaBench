; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_sub_device = type { i32 }
%struct.dvb_bt8xx_card = type { i32, i64, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"dvb_bt8xx: unloading card%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv_sub_device*)* @dvb_bt8xx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_bt8xx_remove(%struct.bttv_sub_device* %0) #0 {
  %2 = alloca %struct.bttv_sub_device*, align 8
  %3 = alloca %struct.dvb_bt8xx_card*, align 8
  store %struct.bttv_sub_device* %0, %struct.bttv_sub_device** %2, align 8
  %4 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %2, align 8
  %5 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %4, i32 0, i32 0
  %6 = call %struct.dvb_bt8xx_card* @dev_get_drvdata(i32* %5)
  store %struct.dvb_bt8xx_card* %6, %struct.dvb_bt8xx_card** %3, align 8
  %7 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %11, i32 0, i32 7
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @bt878_stop(%struct.TYPE_7__* %13)
  %15 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %15, i32 0, i32 7
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @tasklet_kill(i32* %18)
  %20 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %20, i32 0, i32 6
  %22 = call i32 @dvb_net_release(i32* %21)
  %23 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %26, align 8
  %28 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %31, i32 0, i32 5
  %33 = call i32 %27(%struct.TYPE_5__* %30, i32* %32)
  %34 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %37, align 8
  %39 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %42, i32 0, i32 4
  %44 = call i32 %38(%struct.TYPE_5__* %41, i32* %43)
  %45 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %45, i32 0, i32 3
  %47 = call i32 @dvb_dmxdev_release(i32* %46)
  %48 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %48, i32 0, i32 2
  %50 = call i32 @dvb_dmx_release(%struct.TYPE_6__* %49)
  %51 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %1
  %56 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dvb_unregister_frontend(i64 %58)
  %60 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dvb_frontend_detach(i64 %62)
  br label %64

64:                                               ; preds = %55, %1
  %65 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_bt8xx_card, %struct.dvb_bt8xx_card* %65, i32 0, i32 0
  %67 = call i32 @dvb_unregister_adapter(i32* %66)
  %68 = load %struct.dvb_bt8xx_card*, %struct.dvb_bt8xx_card** %3, align 8
  %69 = call i32 @kfree(%struct.dvb_bt8xx_card* %68)
  ret void
}

declare dso_local %struct.dvb_bt8xx_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @bt878_stop(%struct.TYPE_7__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_6__*) #1

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_frontend_detach(i64) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.dvb_bt8xx_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
