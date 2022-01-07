; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_function_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_function_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfx = type { i32, i32 }

@STMFX_REG_SYS_CTRL = common dso_local global i32 0, align 4
@STMFX_FUNC_IDD = common dso_local global i32 0, align 4
@STMFX_FUNC_TS = common dso_local global i32 0, align 4
@STMFX_REG_SYS_CTRL_ALTGPIO_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ALTGPIO function already enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STMFX_FUNC_ALTGPIO_LOW = common dso_local global i32 0, align 4
@STMFX_REG_SYS_CTRL_TS_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"TS in use, aGPIO[3:0] unavailable\0A\00", align 1
@STMFX_FUNC_ALTGPIO_HIGH = common dso_local global i32 0, align 4
@STMFX_REG_SYS_CTRL_IDD_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"IDD in use, aGPIO[7:4] unavailable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmfx_function_enable(%struct.stmfx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmfx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stmfx* %0, %struct.stmfx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %10 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @STMFX_REG_SYS_CTRL, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %84

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @STMFX_FUNC_IDD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @STMFX_FUNC_TS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @STMFX_REG_SYS_CTRL_ALTGPIO_EN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %35 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %84

40:                                               ; preds = %28, %23
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @STMFX_FUNC_ALTGPIO_LOW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @STMFX_REG_SYS_CTRL_TS_EN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %52 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %84

57:                                               ; preds = %45, %40
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @STMFX_FUNC_ALTGPIO_HIGH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @STMFX_REG_SYS_CTRL_IDD_EN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %69 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %84

74:                                               ; preds = %62, %57
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @stmfx_func_to_mask(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %78 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @STMFX_REG_SYS_CTRL, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %74, %67, %50, %33, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stmfx_func_to_mask(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
