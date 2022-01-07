; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_hardware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_hardware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_rc_device = type { i32, i32, i32, i64, i64, i32, i32 }

@MAX_SYMB_TIME = common dso_local global i32 0, align 4
@IRB_RX_POLARITY_INV = common dso_local global i64 0, align 8
@IRB_SAMPLE_FREQ = common dso_local global i32 0, align 4
@IRB_SAMPLE_RATE_COMM = common dso_local global i64 0, align 8
@IRB_MAX_SYM_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_rc_device*)* @st_rc_hardware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_rc_hardware_init(%struct.st_rc_device* %0) #0 {
  %2 = alloca %struct.st_rc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st_rc_device* %0, %struct.st_rc_device** %2, align 8
  %7 = load i32, i32* @MAX_SYMB_TIME, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %9 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @reset_control_deassert(i32 %10)
  %12 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %13 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_prepare_enable(i32 %14)
  %16 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %17 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_get_rate(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %21 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IRB_RX_POLARITY_INV, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 1, i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IRB_SAMPLE_FREQ, align 4
  %28 = sdiv i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %31 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IRB_SAMPLE_RATE_COMM, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IRB_SAMPLE_FREQ, align 4
  %39 = mul i32 %37, %38
  %40 = sub i32 %36, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %1
  %44 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %45 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %47 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %46, i32 0, i32 1
  store i32 1000, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul i32 10000, %49
  %51 = udiv i32 %48, %50
  %52 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %53 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = mul i32 %54, 1000
  %56 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %57 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = udiv i32 %55, %58
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %43, %1
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.st_rc_device*, %struct.st_rc_device** %2, align 8
  %63 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IRB_MAX_SYM_PERIOD, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  ret void
}

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
