; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_init_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_init_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps80031 = type { %struct.device* }
%struct.device = type { i32 }
%struct.tps80031_platform_data = type { i32 }

@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_PREQ1_RES_ASS_A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"reg 0x%02x write failed, err = %d\0A\00", align 1
@TPS80031_PHOENIX_MSK_TRANSITION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"reg 0x%02x set_bits failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps80031*, %struct.tps80031_platform_data*)* @tps80031_init_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_init_ext_control(%struct.tps80031* %0, %struct.tps80031_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps80031*, align 8
  %5 = alloca %struct.tps80031_platform_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tps80031* %0, %struct.tps80031** %4, align 8
  store %struct.tps80031_platform_data* %1, %struct.tps80031_platform_data** %5, align 8
  %9 = load %struct.tps80031*, %struct.tps80031** %4, align 8
  %10 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %35, %2
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 9
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %18 = load i64, i64* @TPS80031_PREQ1_RES_ASS_A, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @tps80031_write(%struct.device* %16, i32 %17, i64 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i64, i64* @TPS80031_PREQ1_RES_ASS_A, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %41 = load i64, i64* @TPS80031_PHOENIX_MSK_TRANSITION, align 8
  %42 = call i32 @tps80031_set_bits(%struct.device* %39, i32 %40, i64 %41, i32 224)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i64, i64* @TPS80031_PHOENIX_MSK_TRANSITION, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %45, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @tps80031_write(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @tps80031_set_bits(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
