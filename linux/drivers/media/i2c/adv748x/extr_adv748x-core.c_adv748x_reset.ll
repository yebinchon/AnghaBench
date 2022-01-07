; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { i32, i32 }

@adv748x_init_hdmi = common dso_local global i32 0, align 4
@adv748x_init_afe = common dso_local global i32 0, align 4
@ADV748X_IO_PD = common dso_local global i32 0, align 4
@ADV748X_IO_PD_RX_EN = common dso_local global i32 0, align 4
@ADV748X_IO_10_CSI4_EN = common dso_local global i32 0, align 4
@ADV748X_IO_10_CSI1_EN = common dso_local global i32 0, align 4
@ADV748X_IO_10 = common dso_local global i32 0, align 4
@ADV748X_CP_CLMP_POS = common dso_local global i32 0, align 4
@ADV748X_CP_CLMP_POS_DIS_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*)* @adv748x_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_reset(%struct.adv748x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %7 = call i32 @adv748x_sw_reset(%struct.adv748x_state* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %79

12:                                               ; preds = %1
  %13 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %14 = call i32 @adv748x_set_slave_addresses(%struct.adv748x_state* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %79

19:                                               ; preds = %12
  %20 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %21 = load i32, i32* @adv748x_init_hdmi, align 4
  %22 = call i32 @adv748x_write_regs(%struct.adv748x_state* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %19
  %28 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %29 = load i32, i32* @adv748x_init_afe, align 4
  %30 = call i32 @adv748x_write_regs(%struct.adv748x_state* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %27
  %36 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %37 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %36, i32 0, i32 1
  %38 = call i32 @adv748x_tx_power(i32* %37, i32 1)
  %39 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %40 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %39, i32 0, i32 1
  %41 = call i32 @adv748x_tx_power(i32* %40, i32 0)
  %42 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %43 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %42, i32 0, i32 0
  %44 = call i32 @adv748x_tx_power(i32* %43, i32 1)
  %45 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %46 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %45, i32 0, i32 0
  %47 = call i32 @adv748x_tx_power(i32* %46, i32 0)
  %48 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %49 = load i32, i32* @ADV748X_IO_PD, align 4
  %50 = load i32, i32* @ADV748X_IO_PD_RX_EN, align 4
  %51 = call i32 @io_write(%struct.adv748x_state* %48, i32 %49, i32 %50)
  %52 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %53 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %52, i32 0, i32 1
  %54 = call i64 @is_tx_enabled(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %35
  %57 = load i32, i32* @ADV748X_IO_10_CSI4_EN, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %35
  %61 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %62 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %61, i32 0, i32 0
  %63 = call i64 @is_tx_enabled(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @ADV748X_IO_10_CSI1_EN, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %71 = load i32, i32* @ADV748X_IO_10, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @io_write(%struct.adv748x_state* %70, i32 %71, i32 %72)
  %74 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %75 = load i32, i32* @ADV748X_CP_CLMP_POS, align 4
  %76 = load i32, i32* @ADV748X_CP_CLMP_POS_DIS_AUTO, align 4
  %77 = load i32, i32* @ADV748X_CP_CLMP_POS_DIS_AUTO, align 4
  %78 = call i32 @cp_clrset(%struct.adv748x_state* %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %69, %33, %25, %17, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @adv748x_sw_reset(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_set_slave_addresses(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_write_regs(%struct.adv748x_state*, i32) #1

declare dso_local i32 @adv748x_tx_power(i32*, i32) #1

declare dso_local i32 @io_write(%struct.adv748x_state*, i32, i32) #1

declare dso_local i64 @is_tx_enabled(i32*) #1

declare dso_local i32 @cp_clrset(%struct.adv748x_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
