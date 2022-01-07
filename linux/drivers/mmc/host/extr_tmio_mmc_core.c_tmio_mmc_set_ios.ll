; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32 }
%struct.tmio_mmc_host = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__*, i32 (%struct.tmio_mmc_host*, i32)*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s.%d: concurrent .set_ios(), clk %u, mode %u\0A\00", align 1
@current = common dso_local global %struct.TYPE_9__* null, align 8
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s.%d: CMD%u active since %lu, now %lu!\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s.%d: IOS interrupted: clk %u, mode %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @tmio_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.tmio_mmc_host* %9, %struct.tmio_mmc_host** %5, align 8
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %15 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %18 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %17, i32 0, i32 5
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %22 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %78

25:                                               ; preds = %2
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %27 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_10__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %37 = call i32 @task_pid_nr(%struct.TYPE_9__* %36)
  %38 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* @EINTR, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i8* @ERR_PTR(i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_10__*
  %49 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %50 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %49, i32 0, i32 2
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  br label %70

51:                                               ; preds = %25
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %57 = call i32 @task_pid_nr(%struct.TYPE_9__* %56)
  %58 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %59 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %66 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @jiffies, align 4
  %69 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57, i32 %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %51, %31
  %71 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %72 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %71, i32 0, i32 5
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %76 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %170

78:                                               ; preds = %2
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i8* @ERR_PTR(i32 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_10__*
  %83 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %84 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %83, i32 0, i32 2
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %84, align 8
  %85 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %86 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %85, i32 0, i32 5
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %133 [
    i32 130, label %92
    i32 128, label %100
    i32 129, label %119
  ]

92:                                               ; preds = %78
  %93 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %94 = call i32 @tmio_mmc_power_off(%struct.tmio_mmc_host* %93)
  %95 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %96 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %95, i32 0, i32 4
  %97 = load i32 (%struct.tmio_mmc_host*, i32)*, i32 (%struct.tmio_mmc_host*, i32)** %96, align 8
  %98 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %99 = call i32 %97(%struct.tmio_mmc_host* %98, i32 0)
  br label %133

100:                                              ; preds = %78
  %101 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %102 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %103 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tmio_mmc_power_on(%struct.tmio_mmc_host* %101, i32 %104)
  %106 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %107 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %106, i32 0, i32 4
  %108 = load i32 (%struct.tmio_mmc_host*, i32)*, i32 (%struct.tmio_mmc_host*, i32)** %107, align 8
  %109 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %110 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 %108(%struct.tmio_mmc_host* %109, i32 %112)
  %114 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %115 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %116 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @tmio_mmc_set_bus_width(%struct.tmio_mmc_host* %114, i32 %117)
  br label %133

119:                                              ; preds = %78
  %120 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %121 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %120, i32 0, i32 4
  %122 = load i32 (%struct.tmio_mmc_host*, i32)*, i32 (%struct.tmio_mmc_host*, i32)** %121, align 8
  %123 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %124 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %125 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 %122(%struct.tmio_mmc_host* %123, i32 %126)
  %128 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %129 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @tmio_mmc_set_bus_width(%struct.tmio_mmc_host* %128, i32 %131)
  br label %133

133:                                              ; preds = %78, %119, %100, %92
  %134 = call i32 @usleep_range(i32 140, i32 200)
  %135 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %136 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = call i32 @PTR_ERR(%struct.TYPE_10__* %137)
  %139 = load i32, i32* @EINTR, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %133
  %143 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %144 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %151 = call i32 @task_pid_nr(%struct.TYPE_9__* %150)
  %152 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %153 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %156 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (%struct.device*, i8*, i32, i32, i32, i32, ...) @dev_dbg(%struct.device* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %151, i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %142, %133
  %160 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %161 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %160, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %161, align 8
  %162 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %163 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %166 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %168 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  br label %170

170:                                              ; preds = %159, %70
  ret void
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_9__*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tmio_mmc_power_off(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_power_on(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_set_bus_width(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
