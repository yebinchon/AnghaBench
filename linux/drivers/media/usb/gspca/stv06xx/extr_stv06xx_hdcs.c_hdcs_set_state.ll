; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.hdcs* }
%struct.hdcs = type { i32 }

@HDCS_STATE_IDLE = common dso_local global i32 0, align 4
@HDCS_SLEEP_MODE = common dso_local global i32 0, align 4
@HDCS_RUN_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @hdcs_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_set_state(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdcs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sd*, %struct.sd** %4, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load %struct.hdcs*, %struct.hdcs** %10, align 8
  store %struct.hdcs* %11, %struct.hdcs** %6, align 8
  %12 = load %struct.hdcs*, %struct.hdcs** %6, align 8
  %13 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.hdcs*, %struct.hdcs** %6, align 8
  %20 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HDCS_STATE_IDLE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.sd*, %struct.sd** %4, align 8
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = call i32 @HDCS_REG_CONTROL(%struct.sd* %26)
  %28 = call i32 @stv06xx_write_sensor(%struct.sd* %25, i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* @HDCS_STATE_IDLE, align 4
  %36 = load %struct.hdcs*, %struct.hdcs** %6, align 8
  %37 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HDCS_STATE_IDLE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %65

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %48 [
    i32 128, label %44
    i32 129, label %46
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @HDCS_SLEEP_MODE, align 4
  store i32 %45, i32* %7, align 4
  br label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @HDCS_RUN_ENABLE, align 4
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %46, %44
  %52 = load %struct.sd*, %struct.sd** %4, align 8
  %53 = load %struct.sd*, %struct.sd** %4, align 8
  %54 = call i32 @HDCS_REG_CONTROL(%struct.sd* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @stv06xx_write_sensor(%struct.sd* %52, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.hdcs*, %struct.hdcs** %6, align 8
  %62 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %48, %41, %31, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @HDCS_REG_CONTROL(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
