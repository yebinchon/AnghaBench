; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_aat2870-core.c___aat2870_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_aat2870-core.c___aat2870_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aat2870_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@AAT2870_REG_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid address, 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Address 0x%02x is not writeable\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"write: addr=0x%02x, val=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aat2870_data*, i64, i64)* @__aat2870_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__aat2870_write(%struct.aat2870_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aat2870_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca i32, align 4
  store %struct.aat2870_data* %0, %struct.aat2870_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @AAT2870_REG_NUM, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %15 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  %22 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %23 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %32 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %72

38:                                               ; preds = %21
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %39, i64* %40, align 16
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %44 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %47 = call i32 @i2c_master_send(i32 %45, i64* %46, i32 2)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %72

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %72

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %61 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %59, i64* %65, align 8
  %66 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %67 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %58, %55, %50, %30, %13
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @i2c_master_send(i32, i64*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
