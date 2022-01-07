; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_set_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_set_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.meson_ao_cec_device* }
%struct.meson_ao_cec_device = type { i32 }

@CEC_LOGICAL_ADDR0 = common dso_local global i32 0, align 4
@LOGICAL_ADDR_DISABLE = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@LOGICAL_ADDR_MASK = common dso_local global i32 0, align 4
@LOGICAL_ADDR_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @meson_ao_cec_set_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_set_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_ao_cec_device*, align 8
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %9, align 8
  store %struct.meson_ao_cec_device* %10, %struct.meson_ao_cec_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %12 = load i32, i32* @CEC_LOGICAL_ADDR0, align 4
  %13 = load i32, i32* @LOGICAL_ADDR_DISABLE, align 4
  %14 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %11, i32 %12, i32 %13, i32* %7)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %21 = call i32 @meson_ao_cec_clear(%struct.meson_ao_cec_device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %53

31:                                               ; preds = %26
  %32 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %33 = load i32, i32* @CEC_LOGICAL_ADDR0, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @LOGICAL_ADDR_MASK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %32, i32 %33, i32 %36, i32* %7)
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %53

42:                                               ; preds = %31
  %43 = call i32 @udelay(i32 100)
  %44 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %45 = load i32, i32* @CEC_LOGICAL_ADDR0, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @LOGICAL_ADDR_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @LOGICAL_ADDR_VALID, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %44, i32 %45, i32 %50, i32* %7)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %40, %30, %24, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @meson_ao_cec_write(%struct.meson_ao_cec_device*, i32, i32, i32*) #1

declare dso_local i32 @meson_ao_cec_clear(%struct.meson_ao_cec_device*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
