; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c___rc5t583_set_ext_pwrreq1_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c___rc5t583_set_ext_pwrreq1_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@RC5T583_DS_DC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PWRREQ1 is invalid control for rail %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@deepsleep_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Error in reading reg 0x%x\0A\00", align 1
@RICOH_ONOFFSEL_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Error in updating the 0x%02x register\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error in writing reg 0x%x\0A\00", align 1
@RC5T583_DS_LDO4 = common dso_local global i32 0, align 4
@RICOH_SWCTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32)* @__rc5t583_set_ext_pwrreq1_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rc5t583_set_ext_pwrreq1_control(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @RC5T583_DS_DC0, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %118

23:                                               ; preds = %4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @deepsleep_data, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @deepsleep_data, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rc5t583_read(%struct.device* %32, i32 %38, i32* %11)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %23
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @deepsleep_data, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %118

52:                                               ; preds = %23
  %53 = load i32, i32* %12, align 4
  %54 = shl i32 15, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 7
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* @RICOH_ONOFFSEL_REG, align 4
  %70 = call i32 @BIT(i32 1)
  %71 = call i32 @rc5t583_set_bits(%struct.device* %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %52
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = load i32, i32* @RICOH_ONOFFSEL_REG, align 4
  %77 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %118

79:                                               ; preds = %52
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @deepsleep_data, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @rc5t583_write(%struct.device* %80, i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %79
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @deepsleep_data, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %5, align 4
  br label %118

101:                                              ; preds = %79
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @RC5T583_DS_LDO4, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = load i32, i32* @RICOH_SWCTL_REG, align 4
  %108 = call i32 @rc5t583_write(%struct.device* %106, i32 %107, i32 1)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load i32, i32* @RICOH_SWCTL_REG, align 4
  %114 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %105
  br label %116

116:                                              ; preds = %115, %101
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %91, %74, %42, %17
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rc5t583_read(%struct.device*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rc5t583_set_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @rc5t583_write(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
