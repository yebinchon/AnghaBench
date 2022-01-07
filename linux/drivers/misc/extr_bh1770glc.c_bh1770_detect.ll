; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@BH1770_MANUFACT_ID = common dso_local global i32 0, align 4
@BH1770_PART_ID = common dso_local global i32 0, align 4
@BH1770_REV_MASK = common dso_local global i64 0, align 8
@BH1770_REV_SHIFT = common dso_local global i64 0, align 8
@BH1770_COEF_SCALER = common dso_local global i32 0, align 4
@BH1770_NEUTRAL_CF = common dso_local global i32 0, align 4
@BH1770_MANUFACT_ROHM = common dso_local global i64 0, align 8
@BH1770_PART_MASK = common dso_local global i64 0, align 8
@BH1770_PART = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"BH1770GLC\00", align 1
@BH1770_MANUFACT_OSRAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"SFH7770\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"BH1770 or SFH7770 not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1770_chip*)* @bh1770_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_detect(%struct.bh1770_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bh1770_chip*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %3, align 8
  %8 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %9 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %8, i32 0, i32 5
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* @BH1770_MANUFACT_ID, align 4
  %13 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %80

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @BH1770_PART_ID, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %80

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @BH1770_REV_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @BH1770_REV_SHIFT, align 8
  %33 = ashr i64 %31, %32
  %34 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %35 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @BH1770_COEF_SCALER, align 4
  %37 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %38 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %40 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @BH1770_NEUTRAL_CF, align 4
  %42 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %43 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @BH1770_MANUFACT_ROHM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %26
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @BH1770_PART_MASK, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* @BH1770_PART, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %55 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @snprintf(i32 %56, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %85

58:                                               ; preds = %47, %26
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @BH1770_MANUFACT_OSRAM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @BH1770_PART_MASK, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* @BH1770_PART, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %70 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @snprintf(i32 %71, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %74 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %73, i32 0, i32 0
  store i32 819, i32* %74, align 8
  %75 = load %struct.bh1770_chip*, %struct.bh1770_chip** %3, align 8
  %76 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %75, i32 0, i32 1
  store i32 40, i32* %76, align 4
  store i32 0, i32* %2, align 4
  br label %85

77:                                               ; preds = %62, %58
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %25, %16
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %68, %53
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
