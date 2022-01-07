; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_config_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_config_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@V8_SPI_MODE_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_config_spi(%struct.mxl111sf_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mxl_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %10 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %9, i32 0, i32 2)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @mxl_fail(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %17 = load i32, i32* @V8_SPI_MODE_REG, align 4
  %18 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %16, i32 %17, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @mxl_fail(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %46

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -5
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %34 = load i32, i32* @V8_SPI_MODE_REG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @mxl_fail(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %46

41:                                               ; preds = %32
  %42 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %43 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %42, i32 0, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @mxl_fail(i32 %44)
  br label %46

46:                                               ; preds = %41, %40, %22, %14
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @mxl_debug(i8*, i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
