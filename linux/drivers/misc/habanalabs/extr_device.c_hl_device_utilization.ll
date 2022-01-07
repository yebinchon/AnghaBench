; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_utilization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_utilization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64, %struct.hl_device_idle_busy_ts* }
%struct.hl_device_idle_busy_ts = type { i32, i32 }

@USEC_PER_MSEC = common dso_local global i32 0, align 4
@HL_IDLE_BUSY_TS_ARR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_utilization(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device_idle_busy_ts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = call i32 (...) @ktime_get()
  store i32 %17, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %18 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %15, align 4
  %21 = call i32 @ktime_set(i32 0, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @USEC_PER_MSEC, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 1
  %27 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %27, i64 %28
  store %struct.hl_device_idle_busy_ts* %29, %struct.hl_device_idle_busy_ts** %6, align 8
  %30 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %31 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ktime_compare(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %2
  %37 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %38 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @ktime_compare(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @HL_IDLE_BUSY_TS_ARR_SIZE, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* @HL_IDLE_BUSY_TS_ARR_SIZE, align 8
  %51 = sub i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 1
  %55 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %55, i64 %56
  store %struct.hl_device_idle_busy_ts* %57, %struct.hl_device_idle_busy_ts** %6, align 8
  br label %58

58:                                               ; preds = %52, %36, %2
  br label %59

59:                                               ; preds = %151, %58
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @HL_IDLE_BUSY_TS_ARR_SIZE, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %159

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %66 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ktime_sub(i32 %64, i32 %67)
  %69 = call i32 @ktime_to_us(i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %63
  %74 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %75 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @ktime_compare(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %73
  %81 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %82 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @ktime_compare(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 100, i32* %3, align 4
  br label %167

88:                                               ; preds = %80
  br label %159

89:                                               ; preds = %73
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %92 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ktime_sub(i32 %90, i32 %93)
  %95 = call i32 @ktime_to_us(i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %159

100:                                              ; preds = %89
  %101 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %102 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %105 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ktime_sub(i32 %103, i32 %106)
  %108 = call i32 @ktime_to_us(i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sub nsw i32 %109, %112
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %15, align 4
  br label %159

116:                                              ; preds = %63
  %117 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %118 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @ktime_compare(i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %125 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %128 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ktime_sub(i32 %126, i32 %129)
  %131 = call i32 @ktime_to_us(i32 %130)
  store i32 %131, i32* %14, align 4
  br label %139

132:                                              ; preds = %116
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %6, align 8
  %135 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ktime_sub(i32 %133, i32 %136)
  %138 = call i32 @ktime_to_us(i32 %137)
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %132, %123
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %15, align 4
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, -1
  store i64 %144, i64* %10, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load i64, i64* @HL_IDLE_BUSY_TS_ARR_SIZE, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i64, i64* @HL_IDLE_BUSY_TS_ARR_SIZE, align 8
  %150 = sub i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %151

151:                                              ; preds = %148, %139
  %152 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %153 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %152, i32 0, i32 1
  %154 = load %struct.hl_device_idle_busy_ts*, %struct.hl_device_idle_busy_ts** %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.hl_device_idle_busy_ts, %struct.hl_device_idle_busy_ts* %154, i64 %155
  store %struct.hl_device_idle_busy_ts* %156, %struct.hl_device_idle_busy_ts** %6, align 8
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %9, align 8
  br label %59

159:                                              ; preds = %100, %99, %88, %59
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @USEC_PER_MSEC, align 4
  %162 = call i32 @DIV_ROUND_UP_ULL(i32 %160, i32 %161)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = mul nsw i32 %163, 100
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @DIV_ROUND_UP_ULL(i32 %164, i32 %165)
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %159, %87
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
