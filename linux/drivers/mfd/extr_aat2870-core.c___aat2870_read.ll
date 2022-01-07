; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_aat2870-core.c___aat2870_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_aat2870-core.c___aat2870_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aat2870_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@AAT2870_REG_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid address, 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"read: addr=0x%02x, val=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aat2870_data*, i64, i64*)* @__aat2870_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__aat2870_read(%struct.aat2870_data* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aat2870_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.aat2870_data* %0, %struct.aat2870_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @AAT2870_REG_NUM, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %14 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %22 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %31 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  br label %70

38:                                               ; preds = %20
  %39 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %40 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i2c_master_send(i32 %41, i64* %6, i32 1)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %78

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %78

53:                                               ; preds = %47
  %54 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %55 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i64*, i64** %7, align 8
  %58 = call i32 @i2c_master_recv(i32 %56, i64* %57, i32 1)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %78

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %29
  %71 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %72 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %70, %66, %61, %50, %45, %12
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @i2c_master_send(i32, i64*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i64*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
