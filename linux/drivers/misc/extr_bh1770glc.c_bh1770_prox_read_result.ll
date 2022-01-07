; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_prox_read_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_prox_read_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1770_chip = type { i32, i64, i32, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BH1770_PS_DATA_LED1 = common dso_local global i32 0, align 4
@PROX_IGNORE_LUX_LIMIT = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@PROX_ABOVE_THRESHOLD = common dso_local global i32 0, align 4
@PROX_BELOW_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"prox0_raw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1770_chip*)* @bh1770_prox_read_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_prox_read_result(%struct.bh1770_chip* %0) #0 {
  %2 = alloca %struct.bh1770_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bh1770_chip* %0, %struct.bh1770_chip** %2, align 8
  %6 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %7 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* @BH1770_PS_DATA_LED1, align 4
  %10 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_4__* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %97

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %17 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %22

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %24 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PROX_IGNORE_LUX_LIMIT, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @bh1770_psraw_to_adjusted(%struct.bh1770_chip* %30, i32 %31)
  %33 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %34 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %36 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %39 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %44 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %29
  %48 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %49 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %52 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %55 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %61 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %64 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %69 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* @ENODATA, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %59
  %75 = load i32, i32* @PROX_ABOVE_THRESHOLD, align 4
  store i32 %75, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %67
  br label %83

77:                                               ; preds = %53
  %78 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %79 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @PROX_BELOW_THRESHOLD, align 4
  store i32 %80, i32* %5, align 4
  %81 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %82 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %81, i32 0, i32 6
  store i32 0, i32* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32, i32* %3, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @bh1770_prox_rate(%struct.bh1770_chip* %87, i32 %88)
  %90 = load %struct.bh1770_chip*, %struct.bh1770_chip** %2, align 8
  %91 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %90, i32 0, i32 5
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @sysfs_notify(i32* %94, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %86, %83
  br label %97

97:                                               ; preds = %96, %13
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bh1770_psraw_to_adjusted(%struct.bh1770_chip*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bh1770_prox_rate(%struct.bh1770_chip*, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
