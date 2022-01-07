; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___vub300_irqpoll_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___vub300_irqpoll_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@SD_ERROR_NO_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vub300_mmc_host*)* @__vub300_irqpoll_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vub300_irqpoll_response(%struct.vub300_mmc_host* %0) #0 {
  %2 = alloca %struct.vub300_mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %2, align 8
  %9 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %9, i32 0, i32 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %181

16:                                               ; preds = %1
  %17 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %180 [
    i32 132, label %22
    i32 133, label %46
    i32 128, label %58
    i32 131, label %77
    i32 130, label %127
    i32 129, label %177
  ]

22:                                               ; preds = %16
  %23 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %32 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mmc_signal_sdio_irq(i32 %33)
  br label %40

35:                                               ; preds = %22
  %36 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %37 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %42 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %44 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %43, i32 0, i32 2
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %181

46:                                               ; preds = %16
  %47 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %48 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SD_ERROR_NO_DEVICE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %56 = call i32 @check_vub300_port_status(%struct.vub300_mmc_host* %55)
  br label %57

57:                                               ; preds = %54, %46
  br label %181

58:                                               ; preds = %16
  %59 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %60 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %64 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %66 = call i32 @new_system_port_status(%struct.vub300_mmc_host* %65)
  %67 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %68 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %58
  %72 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %73 = load i32, i32* @HZ, align 4
  %74 = sdiv i32 %73, 5
  %75 = call i32 @vub300_queue_poll_work(%struct.vub300_mmc_host* %72, i32 %74)
  br label %76

76:                                               ; preds = %71, %58
  br label %181

77:                                               ; preds = %16
  %78 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %79 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 3
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = ashr i32 %84, 3
  store i32 %85, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %90, %77
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  %89 = icmp ne i32 %87, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %92 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %93 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @add_offloaded_reg(%struct.vub300_mmc_host* %91, i32* %99)
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %86

103:                                              ; preds = %86
  %104 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %105 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %104, i32 0, i32 2
  %106 = call i32 @mutex_lock(i32* %105)
  %107 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %108 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %113 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mmc_signal_sdio_irq(i32 %114)
  br label %121

116:                                              ; preds = %103
  %117 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %118 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %116, %111
  %122 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %123 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  %124 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %125 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  br label %181

127:                                              ; preds = %16
  %128 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %129 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 3
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 3
  store i32 %135, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %140, %127
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %7, align 4
  %139 = icmp ne i32 %137, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %142 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %143 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 @add_offloaded_reg(%struct.vub300_mmc_host* %141, i32* %149)
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %136

153:                                              ; preds = %136
  %154 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %155 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %154, i32 0, i32 2
  %156 = call i32 @mutex_lock(i32* %155)
  %157 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %158 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %153
  %162 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %163 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @mmc_signal_sdio_irq(i32 %164)
  br label %171

166:                                              ; preds = %153
  %167 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %168 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %166, %161
  %172 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %173 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  %174 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %175 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %174, i32 0, i32 2
  %176 = call i32 @mutex_unlock(i32* %175)
  br label %181

177:                                              ; preds = %16
  %178 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %2, align 8
  %179 = call i32 @vub300_queue_poll_work(%struct.vub300_mmc_host* %178, i32 1)
  br label %181

180:                                              ; preds = %16
  br label %181

181:                                              ; preds = %15, %180, %177, %171, %121, %76, %57, %40
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @check_vub300_port_status(%struct.vub300_mmc_host*) #1

declare dso_local i32 @new_system_port_status(%struct.vub300_mmc_host*) #1

declare dso_local i32 @vub300_queue_poll_work(%struct.vub300_mmc_host*, i32) #1

declare dso_local i32 @add_offloaded_reg(%struct.vub300_mmc_host*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
