; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, %struct.TYPE_4__, %struct.memstick_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.memstick_dev = type { %struct.memstick_host* }
%struct.memstick_host = type { i32 (%struct.memstick_host*, i32, i32)* }

@MEMSTICK_SYS_PAM = common dso_local global i32 0, align 4
@MEMSTICK_SYS_BAMD = common dso_local global i32 0, align 4
@MEMSTICK_POWER = common dso_local global i32 0, align 4
@MEMSTICK_POWER_OFF = common dso_local global i32 0, align 4
@MEMSTICK_POWER_ON = common dso_local global i32 0, align 4
@MEMSTICK_INTERFACE = common dso_local global i32 0, align 4
@MEMSTICK_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to reset the host controller\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@h_msb_reset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to reset the card\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32)* @msb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_reset(%struct.msb_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.memstick_dev*, align 8
  %8 = alloca %struct.memstick_host*, align 8
  %9 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %11 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MEMSTICK_SYS_PAM, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 2
  %19 = load %struct.memstick_dev*, %struct.memstick_dev** %18, align 8
  store %struct.memstick_dev* %19, %struct.memstick_dev** %7, align 8
  %20 = load %struct.memstick_dev*, %struct.memstick_dev** %7, align 8
  %21 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %20, i32 0, i32 0
  %22 = load %struct.memstick_host*, %struct.memstick_host** %21, align 8
  store %struct.memstick_host* %22, %struct.memstick_host** %8, align 8
  %23 = load i32, i32* @MEMSTICK_SYS_BAMD, align 4
  %24 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %25 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %2
  %31 = load %struct.memstick_host*, %struct.memstick_host** %8, align 8
  %32 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %31, i32 0, i32 0
  %33 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %32, align 8
  %34 = load %struct.memstick_host*, %struct.memstick_host** %8, align 8
  %35 = load i32, i32* @MEMSTICK_POWER, align 4
  %36 = load i32, i32* @MEMSTICK_POWER_OFF, align 4
  %37 = call i32 %33(%struct.memstick_host* %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %65

41:                                               ; preds = %30
  %42 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %43 = call i32 @msb_invalidate_reg_window(%struct.msb_data* %42)
  %44 = load %struct.memstick_host*, %struct.memstick_host** %8, align 8
  %45 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %44, i32 0, i32 0
  %46 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %45, align 8
  %47 = load %struct.memstick_host*, %struct.memstick_host** %8, align 8
  %48 = load i32, i32* @MEMSTICK_POWER, align 4
  %49 = load i32, i32* @MEMSTICK_POWER_ON, align 4
  %50 = call i32 %46(%struct.memstick_host* %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %65

54:                                               ; preds = %41
  %55 = load %struct.memstick_host*, %struct.memstick_host** %8, align 8
  %56 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %55, i32 0, i32 0
  %57 = load i32 (%struct.memstick_host*, i32, i32)*, i32 (%struct.memstick_host*, i32, i32)** %56, align 8
  %58 = load %struct.memstick_host*, %struct.memstick_host** %8, align 8
  %59 = load i32, i32* @MEMSTICK_INTERFACE, align 4
  %60 = load i32, i32* @MEMSTICK_SERIAL, align 4
  %61 = call i32 %57(%struct.memstick_host* %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %53, %40
  %66 = call i32 @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %68 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %91

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %2
  %73 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %74 = load i32, i32* @h_msb_reset, align 4
  %75 = call i32 @msb_run_state_machine(%struct.msb_data* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = call i32 @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %81 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %91

84:                                               ; preds = %72
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.msb_data*, %struct.msb_data** %4, align 8
  %89 = call i32 @msb_switch_to_parallel(%struct.msb_data* %88)
  br label %90

90:                                               ; preds = %87, %84
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %78, %65
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @msb_invalidate_reg_window(%struct.msb_data*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @msb_run_state_machine(%struct.msb_data*, i32) #1

declare dso_local i32 @msb_switch_to_parallel(%struct.msb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
