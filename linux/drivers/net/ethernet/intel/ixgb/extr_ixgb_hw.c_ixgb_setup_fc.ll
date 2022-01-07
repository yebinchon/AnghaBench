; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_setup_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_setup_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }

@CTRL0 = common dso_local global i32 0, align 4
@IXGB_CTRL0_RPE = common dso_local global i32 0, align 4
@IXGB_CTRL0_TPE = common dso_local global i32 0, align 4
@IXGB_CTRL0_CMDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@PAP = common dso_local global i32 0, align 4
@FCRTL = common dso_local global i32 0, align 4
@FCRTH = common dso_local global i32 0, align 4
@IXGB_FCRTL_XONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*)* @ixgb_setup_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_setup_fc(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = call i32 (...) @ENTER()
  %7 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %8 = load i32, i32* @CTRL0, align 4
  %9 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @IXGB_CTRL0_RPE, align 4
  %11 = load i32, i32* @IXGB_CTRL0_TPE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %46 [
    i32 130, label %20
    i32 129, label %24
    i32 128, label %28
    i32 131, label %36
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @IXGB_CTRL0_CMDC, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load i32, i32* @IXGB_CTRL0_RPE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %1
  %29 = load i32, i32* @IXGB_CTRL0_TPE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %1
  %37 = load i32, i32* @IXGB_CTRL0_RPE, align 4
  %38 = load i32, i32* @IXGB_CTRL0_TPE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %1
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @ASSERT(i32 0)
  br label %49

49:                                               ; preds = %46, %36, %28, %24, %20
  %50 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %51 = load i32, i32* @CTRL0, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %58 = load i32, i32* @PAP, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %70 = load i32, i32* @FCRTL, align 4
  %71 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %69, i32 %70, i32 0)
  %72 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %73 = load i32, i32* @FCRTH, align 4
  %74 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %72, i32 %73, i32 0)
  br label %107

75:                                               ; preds = %61
  %76 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %83 = load i32, i32* @FCRTL, align 4
  %84 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %85 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IXGB_FCRTL_XONE, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %82, i32 %83, i32 %89)
  br label %99

91:                                               ; preds = %75
  %92 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %93 = load i32, i32* @FCRTL, align 4
  %94 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %95 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %81
  %100 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %101 = load i32, i32* @FCRTH, align 4
  %102 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %103 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %100, i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %99, %68
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
