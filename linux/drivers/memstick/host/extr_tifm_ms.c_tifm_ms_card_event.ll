; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_card_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_card_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_dev = type { i32, i64, i32 }
%struct.tifm_ms = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.memstick_host = type { i32 }

@SOCK_MS_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"host event: host_status %x, flags %x\0A\00", align 1
@TIFM_MS_STAT_TOE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@TIFM_MS_STAT_CRC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@TIFM_MS_STAT_RDY = common dso_local global i32 0, align 4
@CMD_READY = common dso_local global i32 0, align 4
@TIFM_MS_STAT_MSINT = common dso_local global i32 0, align 4
@CARD_INT = common dso_local global i32 0, align 4
@TIFM_MS_SYS_INTCLR = common dso_local global i32 0, align 4
@SOCK_MS_SYSTEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_dev*)* @tifm_ms_card_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_ms_card_event(%struct.tifm_dev* %0) #0 {
  %2 = alloca %struct.tifm_dev*, align 8
  %3 = alloca %struct.tifm_ms*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tifm_dev* %0, %struct.tifm_dev** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %7 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %10 = call i64 @tifm_get_drvdata(%struct.tifm_dev* %9)
  %11 = inttoptr i64 %10 to %struct.memstick_host*
  %12 = call %struct.tifm_ms* @memstick_priv(%struct.memstick_host* %11)
  store %struct.tifm_ms* %12, %struct.tifm_ms** %3, align 8
  %13 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %14 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOCK_MS_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %20 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %23 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %27 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %80

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TIFM_MS_STAT_TOE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @ETIME, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %39 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %55

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TIFM_MS_STAT_CRC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @EILSEQ, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %51 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @TIFM_MS_STAT_RDY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @CMD_READY, align 4
  %62 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %63 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @TIFM_MS_STAT_MSINT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @CARD_INT, align 4
  %73 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %74 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %79 = call i32 @tifm_ms_check_status(%struct.tifm_ms* %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %1
  %81 = load i32, i32* @TIFM_MS_SYS_INTCLR, align 4
  %82 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %83 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  %88 = or i32 %81, %87
  %89 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %90 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %80
  %98 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %99 = call i32 @tifm_ms_complete_cmd(%struct.tifm_ms* %98)
  br label %100

100:                                              ; preds = %97, %80
  %101 = load %struct.tifm_dev*, %struct.tifm_dev** %2, align 8
  %102 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.tifm_ms* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i64 @tifm_get_drvdata(%struct.tifm_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @tifm_ms_check_status(%struct.tifm_ms*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tifm_ms_complete_cmd(%struct.tifm_ms*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
