; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_process_add_sta_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_process_add_sta_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.il_addsta_cmd = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.il_rx_pkt = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@IL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Bad return from C_ADD_STA (0x%08X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Processing response for adding station %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"C_ADD_STA PASSED\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Adding station %d failed, no room in table.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Adding station %d failed, no block ack resource.\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Attempting to modify non-existing station %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Received C_ADD_STA:(0x%08X)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s station id %u addr %pM\0A\00", align 1
@STA_CONTROL_MODIFY_MSK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"Modified\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Added\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"%s station according to cmd buffer %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_addsta_cmd*, %struct.il_rx_pkt*, i32)* @il_process_add_sta_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_process_add_sta_resp(%struct.il_priv* %0, %struct.il_addsta_cmd* %1, %struct.il_rx_pkt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.il_addsta_cmd*, align 8
  %8 = alloca %struct.il_rx_pkt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.il_addsta_cmd* %1, %struct.il_addsta_cmd** %7, align 8
  store %struct.il_rx_pkt* %2, %struct.il_rx_pkt** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %8, align 8
  %20 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IL_CMD_FAILED_MSK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %8, align 8
  %28 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %113

34:                                               ; preds = %4
  %35 = load i64, i64* %10, align 8
  %36 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %8, align 8
  %42 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %60 [
    i32 128, label %46
    i32 129, label %51
    i32 130, label %54
    i32 131, label %57
  ]

46:                                               ; preds = %34
  %47 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @il_sta_ucode_activate(%struct.il_priv* %48, i64 %49)
  store i32 0, i32* %12, align 4
  br label %67

51:                                               ; preds = %34
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @IL_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  br label %67

54:                                               ; preds = %34
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @IL_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %55)
  br label %67

57:                                               ; preds = %34
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @IL_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %58)
  br label %67

60:                                               ; preds = %34
  %61 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %8, align 8
  %62 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @D_ASSOC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %60, %57, %54, %51, %46
  %68 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %69 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @STA_CONTROL_MODIFY_MSK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %79, i64 %80, i32 %89)
  %91 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @STA_CONTROL_MODIFY_MSK, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %103 = load %struct.il_addsta_cmd*, %struct.il_addsta_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.il_addsta_cmd, %struct.il_addsta_cmd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %102, i32 %106)
  %108 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %109 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %108, i32 0, i32 0
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %67, %26
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @IL_ERR(i8*, i64) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_sta_ucode_activate(%struct.il_priv*, i64) #1

declare dso_local i32 @D_ASSOC(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
