; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_bus_change_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_bus_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_bus = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ignoring transition, bus not attached yet\0A\00", align 1
@BRCMF_BUS_UP = common dso_local global i32 0, align 4
@BRCMF_MAX_IFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_bus_change_state(%struct.brcmf_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.brcmf_bus* %0, %struct.brcmf_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %8, i32 0, i32 1
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  store %struct.brcmf_pub* %10, %struct.brcmf_pub** %5, align 8
  %11 = load i32, i32* @TRACE, align 4
  %12 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %18 = icmp ne %struct.brcmf_pub* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @INFO, align 4
  %21 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %76

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %25 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BRCMF_BUS_UP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %72, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BRCMF_MAX_IFS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %34
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %45 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.net_device*, %struct.net_device** %51, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %43
  %55 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %56 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.net_device*, %struct.net_device** %62, align 8
  store %struct.net_device* %63, %struct.net_device** %6, align 8
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = call i64 @netif_queue_stopped(%struct.net_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = call i32 @netif_wake_queue(%struct.net_device* %68)
  br label %70

70:                                               ; preds = %67, %54
  br label %71

71:                                               ; preds = %70, %43, %34
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %30

75:                                               ; preds = %30
  br label %76

76:                                               ; preds = %19, %75, %22
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
