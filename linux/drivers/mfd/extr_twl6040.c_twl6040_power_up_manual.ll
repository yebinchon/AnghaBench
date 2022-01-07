; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_power_up_manual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_power_up_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6040 = type { i32 }

@TWL6040_HSLDOENA = common dso_local global i32 0, align 4
@TWL6040_REFENA = common dso_local global i32 0, align 4
@TWL6040_OSCENA = common dso_local global i32 0, align 4
@TWL6040_REG_LDOCTL = common dso_local global i32 0, align 4
@TWL6040_NCPENA = common dso_local global i32 0, align 4
@TWL6040_REG_NCPCTL = common dso_local global i32 0, align 4
@TWL6040_LSLDOENA = common dso_local global i32 0, align 4
@TWL6040_LPLLENA = common dso_local global i32 0, align 4
@TWL6040_REG_LPPLLCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"manual power-up failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6040*)* @twl6040_power_up_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_power_up_manual(%struct.twl6040* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl6040*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl6040* %0, %struct.twl6040** %3, align 8
  %8 = load i32, i32* @TWL6040_HSLDOENA, align 4
  %9 = load i32, i32* @TWL6040_REFENA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @TWL6040_OSCENA, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %14 = load i32, i32* @TWL6040_REG_LDOCTL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @twl6040_reg_write(%struct.twl6040* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %112

21:                                               ; preds = %1
  %22 = call i32 @usleep_range(i32 10000, i32 10500)
  %23 = load i32, i32* @TWL6040_NCPENA, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %25 = load i32, i32* @TWL6040_REG_NCPCTL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @twl6040_reg_write(%struct.twl6040* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %94

31:                                               ; preds = %21
  %32 = call i32 @usleep_range(i32 1000, i32 1500)
  %33 = load i32, i32* @TWL6040_LSLDOENA, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %37 = load i32, i32* @TWL6040_REG_LDOCTL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @twl6040_reg_write(%struct.twl6040* %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %85

43:                                               ; preds = %31
  %44 = call i32 @usleep_range(i32 1000, i32 1500)
  %45 = load i32, i32* @TWL6040_LPLLENA, align 4
  store i32 %45, i32* %6, align 4
  %46 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %47 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @twl6040_reg_write(%struct.twl6040* %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %76

53:                                               ; preds = %43
  %54 = call i32 @usleep_range(i32 5000, i32 5500)
  %55 = load i32, i32* @TWL6040_OSCENA, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %60 = load i32, i32* @TWL6040_REG_LDOCTL, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @twl6040_reg_write(%struct.twl6040* %59, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %67

66:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %112

67:                                               ; preds = %65
  %68 = load i32, i32* @TWL6040_LPLLENA, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %73 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @twl6040_reg_write(%struct.twl6040* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %52
  %77 = load i32, i32* @TWL6040_LSLDOENA, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %82 = load i32, i32* @TWL6040_REG_LDOCTL, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @twl6040_reg_write(%struct.twl6040* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %42
  %86 = load i32, i32* @TWL6040_NCPENA, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %91 = load i32, i32* @TWL6040_REG_NCPCTL, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @twl6040_reg_write(%struct.twl6040* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %85, %30
  %95 = load i32, i32* @TWL6040_HSLDOENA, align 4
  %96 = load i32, i32* @TWL6040_REFENA, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @TWL6040_OSCENA, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %104 = load i32, i32* @TWL6040_REG_LDOCTL, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @twl6040_reg_write(%struct.twl6040* %103, i32 %104, i32 %105)
  %107 = load %struct.twl6040*, %struct.twl6040** %3, align 8
  %108 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %94, %66, %19
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @twl6040_reg_write(%struct.twl6040*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
