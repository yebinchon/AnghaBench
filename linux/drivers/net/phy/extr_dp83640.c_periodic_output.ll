; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_periodic_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_periodic_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp83640_clock = type { i32, i32, %struct.dp83640_private* }
%struct.dp83640_private = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ptp_clock_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@PTP_PF_PEROUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRIG_WR = common dso_local global i32 0, align 4
@TRIG_CSEL_MASK = common dso_local global i32 0, align 4
@TRIG_CSEL_SHIFT = common dso_local global i32 0, align 4
@TRIG_GPIO_MASK = common dso_local global i32 0, align 4
@TRIG_GPIO_SHIFT = common dso_local global i32 0, align 4
@TRIG_PER = common dso_local global i32 0, align 4
@TRIG_PULSE = common dso_local global i32 0, align 4
@TRIG_SEL_MASK = common dso_local global i32 0, align 4
@TRIG_SEL_SHIFT = common dso_local global i32 0, align 4
@TRIG_DIS = common dso_local global i32 0, align 4
@PAGE5 = common dso_local global i32 0, align 4
@PTP_TRIG = common dso_local global i32 0, align 4
@PAGE4 = common dso_local global i32 0, align 4
@PTP_CTL = common dso_local global i32 0, align 4
@TRIG_LOAD = common dso_local global i32 0, align 4
@PTP_TDR = common dso_local global i32 0, align 4
@TRIG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp83640_clock*, %struct.ptp_clock_request*, i32, i32)* @periodic_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @periodic_output(%struct.dp83640_clock* %0, %struct.ptp_clock_request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dp83640_clock*, align 8
  %7 = alloca %struct.ptp_clock_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dp83640_private*, align 8
  %11 = alloca %struct.phy_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dp83640_clock* %0, %struct.dp83640_clock** %6, align 8
  store %struct.ptp_clock_request* %1, %struct.ptp_clock_request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %19 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %18, i32 0, i32 2
  %20 = load %struct.dp83640_private*, %struct.dp83640_private** %19, align 8
  store %struct.dp83640_private* %20, %struct.dp83640_private** %10, align 8
  %21 = load %struct.dp83640_private*, %struct.dp83640_private** %10, align 8
  %22 = getelementptr inbounds %struct.dp83640_private, %struct.dp83640_private* %21, i32 0, i32 0
  %23 = load %struct.phy_device*, %struct.phy_device** %22, align 8
  store %struct.phy_device* %23, %struct.phy_device** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %28 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PTP_PF_PEROUT, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ptp_find_pin(i32 %29, i32 %30, i32 %31)
  %33 = add nsw i32 1, %32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %198

39:                                               ; preds = %26
  br label %41

40:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* @TRIG_WR, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @TRIG_CSEL_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @TRIG_CSEL_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %42, %47
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @TRIG_GPIO_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @TRIG_GPIO_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %48, %53
  %55 = load i32, i32* @TRIG_PER, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TRIG_PULSE, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @TRIG_SEL_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @TRIG_SEL_SHIFT, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %41
  %67 = load i32, i32* @TRIG_DIS, align 4
  %68 = load i32, i32* %17, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %17, align 4
  %70 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %71 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %70, i32 0, i32 0
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %74 = load i32, i32* @PAGE5, align 4
  %75 = load i32, i32* @PTP_TRIG, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @ext_write(i32 0, %struct.phy_device* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %79 = load i32, i32* @PAGE4, align 4
  %80 = load i32, i32* @PTP_CTL, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @ext_write(i32 0, %struct.phy_device* %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %84 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  store i32 0, i32* %5, align 4
  br label %198

86:                                               ; preds = %41
  %87 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %7, align 8
  %88 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %12, align 4
  %92 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %7, align 8
  %93 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %13, align 4
  %97 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %7, align 8
  %98 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = mul i64 %101, 1000000000
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %14, align 4
  %104 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %7, align 8
  %105 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* %14, align 4
  %115 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %116 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %115, i32 0, i32 0
  %117 = call i32 @mutex_lock(i32* %116)
  %118 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %119 = load i32, i32* @PAGE5, align 4
  %120 = load i32, i32* @PTP_TRIG, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @ext_write(i32 0, %struct.phy_device* %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @TRIG_LOAD, align 4
  %124 = load i32, i32* %17, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %17, align 4
  %126 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %127 = load i32, i32* @PAGE4, align 4
  %128 = load i32, i32* @PTP_CTL, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @ext_write(i32 0, %struct.phy_device* %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %132 = load i32, i32* @PAGE4, align 4
  %133 = load i32, i32* @PTP_TDR, align 4
  %134 = load i32, i32* %13, align 4
  %135 = and i32 %134, 65535
  %136 = call i32 @ext_write(i32 0, %struct.phy_device* %131, i32 %132, i32 %133, i32 %135)
  %137 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %138 = load i32, i32* @PAGE4, align 4
  %139 = load i32, i32* @PTP_TDR, align 4
  %140 = load i32, i32* %13, align 4
  %141 = ashr i32 %140, 16
  %142 = call i32 @ext_write(i32 0, %struct.phy_device* %137, i32 %138, i32 %139, i32 %141)
  %143 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %144 = load i32, i32* @PAGE4, align 4
  %145 = load i32, i32* @PTP_TDR, align 4
  %146 = load i32, i32* %12, align 4
  %147 = and i32 %146, 65535
  %148 = call i32 @ext_write(i32 0, %struct.phy_device* %143, i32 %144, i32 %145, i32 %147)
  %149 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %150 = load i32, i32* @PAGE4, align 4
  %151 = load i32, i32* @PTP_TDR, align 4
  %152 = load i32, i32* %12, align 4
  %153 = ashr i32 %152, 16
  %154 = call i32 @ext_write(i32 0, %struct.phy_device* %149, i32 %150, i32 %151, i32 %153)
  %155 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %156 = load i32, i32* @PAGE4, align 4
  %157 = load i32, i32* @PTP_TDR, align 4
  %158 = load i32, i32* %14, align 4
  %159 = and i32 %158, 65535
  %160 = call i32 @ext_write(i32 0, %struct.phy_device* %155, i32 %156, i32 %157, i32 %159)
  %161 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %162 = load i32, i32* @PAGE4, align 4
  %163 = load i32, i32* @PTP_TDR, align 4
  %164 = load i32, i32* %14, align 4
  %165 = ashr i32 %164, 16
  %166 = call i32 @ext_write(i32 0, %struct.phy_device* %161, i32 %162, i32 %163, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %169, label %182

169:                                              ; preds = %86
  %170 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %171 = load i32, i32* @PAGE4, align 4
  %172 = load i32, i32* @PTP_TDR, align 4
  %173 = load i32, i32* %14, align 4
  %174 = and i32 %173, 65535
  %175 = call i32 @ext_write(i32 0, %struct.phy_device* %170, i32 %171, i32 %172, i32 %174)
  %176 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %177 = load i32, i32* @PAGE4, align 4
  %178 = load i32, i32* @PTP_TDR, align 4
  %179 = load i32, i32* %14, align 4
  %180 = ashr i32 %179, 16
  %181 = call i32 @ext_write(i32 0, %struct.phy_device* %176, i32 %177, i32 %178, i32 %180)
  br label %182

182:                                              ; preds = %169, %86
  %183 = load i32, i32* @TRIG_LOAD, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %17, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* @TRIG_EN, align 4
  %188 = load i32, i32* %17, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %17, align 4
  %190 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %191 = load i32, i32* @PAGE4, align 4
  %192 = load i32, i32* @PTP_CTL, align 4
  %193 = load i32, i32* %17, align 4
  %194 = call i32 @ext_write(i32 0, %struct.phy_device* %190, i32 %191, i32 %192, i32 %193)
  %195 = load %struct.dp83640_clock*, %struct.dp83640_clock** %6, align 8
  %196 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %195, i32 0, i32 0
  %197 = call i32 @mutex_unlock(i32* %196)
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %182, %66, %36
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @ptp_find_pin(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ext_write(i32, %struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
