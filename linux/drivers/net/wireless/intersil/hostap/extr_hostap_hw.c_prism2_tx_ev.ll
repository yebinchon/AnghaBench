; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_prism2_tx_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_prism2_tx_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hfa384x_tx_frame = type { i64, i32, i32, i32, i32, i32 }

@PRISM2_DUMP_TX_HDR = common dso_local global i32 0, align 4
@DEBUG_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"%s: TX - status=0x%04x retry_count=%d tx_rate=%d seq_ctrl=%d duration_id=%d\0A\00", align 1
@HFA384X_EV_TX = common dso_local global i32 0, align 4
@HFA384X_EVACK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @prism2_tx_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_tx_ev(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfa384x_tx_frame, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = call i64 @hostap_tx_compl_read(%struct.TYPE_5__* %9, i32 0, %struct.hfa384x_tx_frame* %5, i8** %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PRISM2_DUMP_TX_HDR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load i32, i32* @DEBUG_EXTRA, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %5, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %5, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %5, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %5, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = call i32 @PDEBUG(i32 %21, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %29, i32 %31, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %20, %13
  %40 = getelementptr inbounds %struct.hfa384x_tx_frame, %struct.hfa384x_tx_frame* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @hostap_tx_callback(%struct.TYPE_5__* %44, %struct.hfa384x_tx_frame* %5, i32 1, i8* %45)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @kfree(i8* %48)
  br label %50

50:                                               ; preds = %47, %12
  %51 = load i32, i32* @HFA384X_EV_TX, align 4
  %52 = load i32, i32* @HFA384X_EVACK_OFF, align 4
  %53 = call i32 @HFA384X_OUTW(i32 %51, i32 %52)
  ret void
}

declare dso_local i64 @hostap_tx_compl_read(%struct.TYPE_5__*, i32, %struct.hfa384x_tx_frame*, i8**) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hostap_tx_callback(%struct.TYPE_5__*, %struct.hfa384x_tx_frame*, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @HFA384X_OUTW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
