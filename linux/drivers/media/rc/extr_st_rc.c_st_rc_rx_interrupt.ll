; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_rc_device = type { i32, i32, i32, i64, i64, i32, i64 }
%struct.ir_raw_event = type { i32, i8* }

@jiffies = common dso_local global i64 0, align 8
@IRB_RX_STATUS = common dso_local global i64 0, align 8
@IRB_FIFO_NOT_EMPTY = common dso_local global i32 0, align 4
@IRB_OVERFLOW = common dso_local global i32 0, align 4
@IRB_RX_INT_STATUS = common dso_local global i64 0, align 8
@IRB_RX_OVERRUN_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"IR RX overrun\0A\00", align 1
@IRB_RX_INT_CLEAR = common dso_local global i64 0, align 8
@IRB_RX_SYS = common dso_local global i64 0, align 8
@IRB_RX_ON = common dso_local global i64 0, align 8
@IRB_TIMEOUT = common dso_local global i32 0, align 4
@IRB_RX_INTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st_rc_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rc_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_rc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ir_raw_event, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.st_rc_device*
  store %struct.st_rc_device* %14, %struct.st_rc_device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = bitcast %struct.ir_raw_event* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %17 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %22 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_wakeup_event(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i64, i64* @jiffies, align 8
  %27 = call i64 @msecs_to_jiffies(i32 10)
  %28 = add i64 %26, %27
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %154, %25
  %30 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %31 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IRB_RX_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i8* @readl(i64 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @IRB_FIFO_NOT_EMPTY, align 4
  %39 = load i32, i32* @IRB_OVERFLOW, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %158

44:                                               ; preds = %29
  %45 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %46 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IRB_RX_INT_STATUS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @readl(i64 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @IRB_RX_OVERRUN_INT, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %44
  %58 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %59 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ir_raw_event_reset(i32 %60)
  %62 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %63 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_info(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @IRB_RX_OVERRUN_INT, align 4
  %67 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %68 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IRB_RX_INT_CLEAR, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  br label %154

73:                                               ; preds = %44
  %74 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %75 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IRB_RX_SYS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i8* @readl(i64 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %6, align 4
  %81 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %82 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IRB_RX_ON, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i8* @readl(i64 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @IRB_TIMEOUT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32, i32* %7, align 4
  %94 = icmp ugt i32 %93, 2
  br i1 %94, label %95, label %153

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %153

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %103 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %98
  %107 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %108 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = mul i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %113 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = udiv i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %118 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = mul i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %123 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = udiv i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %106, %98
  %128 = load i32, i32* %7, align 4
  %129 = call i8* @US_TO_NS(i32 %128)
  %130 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %133 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ir_raw_event_store(i32 %134, %struct.ir_raw_event* %12)
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %6, align 4
  %140 = call i8* @US_TO_NS(i32 %139)
  %141 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 1
  store i8* %140, i8** %141, align 8
  %142 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %12, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %144 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ir_raw_event_store(i32 %145, %struct.ir_raw_event* %12)
  br label %152

147:                                              ; preds = %127
  %148 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %149 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @st_rc_send_lirc_timeout(i32 %150)
  br label %152

152:                                              ; preds = %147, %138
  br label %153

153:                                              ; preds = %152, %95, %92
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %153, %57
  %155 = load i64, i64* %5, align 8
  %156 = call i64 @time_is_after_jiffies(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %29, label %158

158:                                              ; preds = %154, %43
  %159 = load i32, i32* @IRB_RX_INTS, align 4
  %160 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %161 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IRB_RX_INT_CLEAR, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @writel(i32 %159, i64 %164)
  %166 = load %struct.st_rc_device*, %struct.st_rc_device** %8, align 8
  %167 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ir_raw_event_handle(i32 %168)
  %170 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i8* @readl(i64) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @ir_raw_event_reset(i32) #2

declare dso_local i32 @dev_info(i32, i8*) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i8* @US_TO_NS(i32) #2

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @st_rc_send_lirc_timeout(i32) #2

declare dso_local i64 @time_is_after_jiffies(i64) #2

declare dso_local i32 @ir_raw_event_handle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
