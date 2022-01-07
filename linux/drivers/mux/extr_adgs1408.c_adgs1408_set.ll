; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_adgs1408.c_adgs1408_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_adgs1408.c_adgs1408_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32 }

@MUX_IDLE_DISCONNECT = common dso_local global i32 0, align 4
@ADGS1408_DISABLE = common dso_local global i32 0, align 4
@ADGS1408_SW_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mux_control*, i32)* @adgs1408_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adgs1408_set(%struct.mux_control* %0, i32 %1) #0 {
  %3 = alloca %struct.mux_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.mux_control* %0, %struct.mux_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  %8 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.spi_device* @to_spi_device(i32 %12)
  store %struct.spi_device* %13, %struct.spi_device** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MUX_IDLE_DISCONNECT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ADGS1408_DISABLE, align 4
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ADGS1408_MUX(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %24 = load i32, i32* @ADGS1408_SW_DATA, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @adgs1408_spi_reg_write(%struct.spi_device* %23, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @ADGS1408_MUX(i32) #1

declare dso_local i32 @adgs1408_spi_reg_write(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
