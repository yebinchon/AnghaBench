; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pvr2_context = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pvr2_dvb_internal_check = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pvr2_dvb_adapter* @pvr2_dvb_create(%struct.pvr2_context* %0) #0 {
  %2 = alloca %struct.pvr2_dvb_adapter*, align 8
  %3 = alloca %struct.pvr2_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_dvb_adapter*, align 8
  store %struct.pvr2_context* %0, %struct.pvr2_context** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.pvr2_dvb_adapter* null, %struct.pvr2_dvb_adapter** %2, align 8
  br label %57

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.pvr2_dvb_adapter* @kzalloc(i32 12, i32 %16)
  store %struct.pvr2_dvb_adapter* %17, %struct.pvr2_dvb_adapter** %5, align 8
  %18 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %19 = icmp ne %struct.pvr2_dvb_adapter* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  store %struct.pvr2_dvb_adapter* %21, %struct.pvr2_dvb_adapter** %2, align 8
  br label %57

22:                                               ; preds = %15
  %23 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %23, i32 0, i32 0
  %25 = load %struct.pvr2_context*, %struct.pvr2_context** %3, align 8
  %26 = call i32 @pvr2_channel_init(%struct.TYPE_7__* %24, %struct.pvr2_context* %25)
  %27 = load i32, i32* @pvr2_dvb_internal_check, align 4
  %28 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %31, i32 0, i32 2
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %34, i32 0, i32 1
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %38 = call i32 @pvr2_dvb_adapter_init(%struct.pvr2_dvb_adapter* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %53

42:                                               ; preds = %22
  %43 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %44 = call i32 @pvr2_dvb_frontend_init(%struct.pvr2_dvb_adapter* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %50

48:                                               ; preds = %42
  %49 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  store %struct.pvr2_dvb_adapter* %49, %struct.pvr2_dvb_adapter** %2, align 8
  br label %57

50:                                               ; preds = %47
  %51 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %52 = call i32 @pvr2_dvb_adapter_exit(%struct.pvr2_dvb_adapter* %51)
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %54, i32 0, i32 0
  %56 = call i32 @pvr2_channel_done(%struct.TYPE_7__* %55)
  store %struct.pvr2_dvb_adapter* null, %struct.pvr2_dvb_adapter** %2, align 8
  br label %57

57:                                               ; preds = %53, %48, %20, %14
  %58 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  ret %struct.pvr2_dvb_adapter* %58
}

declare dso_local %struct.pvr2_dvb_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_channel_init(%struct.TYPE_7__*, %struct.pvr2_context*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pvr2_dvb_adapter_init(%struct.pvr2_dvb_adapter*) #1

declare dso_local i32 @pvr2_dvb_frontend_init(%struct.pvr2_dvb_adapter*) #1

declare dso_local i32 @pvr2_dvb_adapter_exit(%struct.pvr2_dvb_adapter*) #1

declare dso_local i32 @pvr2_channel_done(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
