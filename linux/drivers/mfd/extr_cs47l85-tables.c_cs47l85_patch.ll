; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_cs47l85-tables.c_cs47l85_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_cs47l85-tables.c_cs47l85_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_sequence = type { i32 }
%struct.madera = type { i32, i32, i32, i32 }

@cs47l85_reva_16_patch = common dso_local global %struct.reg_sequence* null, align 8
@cs47l85_reva_32_patch = common dso_local global %struct.reg_sequence* null, align 8
@cs47l85_revc_16_patch = common dso_local global %struct.reg_sequence* null, align 8
@cs47l85_revc_32_patch = common dso_local global %struct.reg_sequence* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Error in applying 16-bit patch: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Error in applying 32-bit patch: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs47l85_patch(%struct.madera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.madera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_sequence*, align 8
  %6 = alloca %struct.reg_sequence*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.madera*, %struct.madera** %3, align 8
  %10 = getelementptr inbounds %struct.madera, %struct.madera* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %19 [
    i32 0, label %12
    i32 1, label %12
  ]

12:                                               ; preds = %1, %1
  %13 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_reva_16_patch, align 8
  store %struct.reg_sequence* %13, %struct.reg_sequence** %5, align 8
  %14 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_reva_16_patch, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_reva_32_patch, align 8
  store %struct.reg_sequence* %16, %struct.reg_sequence** %6, align 8
  %17 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_reva_32_patch, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %17)
  store i32 %18, i32* %8, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_revc_16_patch, align 8
  store %struct.reg_sequence* %20, %struct.reg_sequence** %5, align 8
  %21 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_revc_16_patch, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_revc_32_patch, align 8
  store %struct.reg_sequence* %23, %struct.reg_sequence** %6, align 8
  %24 = load %struct.reg_sequence*, %struct.reg_sequence** @cs47l85_revc_32_patch, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.madera*, %struct.madera** %3, align 8
  %28 = getelementptr inbounds %struct.madera, %struct.madera* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.reg_sequence*, %struct.reg_sequence** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @regmap_register_patch(i32 %29, %struct.reg_sequence* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.madera*, %struct.madera** %3, align 8
  %37 = getelementptr inbounds %struct.madera, %struct.madera* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %59

42:                                               ; preds = %26
  %43 = load %struct.madera*, %struct.madera** %3, align 8
  %44 = getelementptr inbounds %struct.madera, %struct.madera* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @regmap_register_patch(i32 %45, %struct.reg_sequence* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.madera*, %struct.madera** %3, align 8
  %53 = getelementptr inbounds %struct.madera, %struct.madera* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %51, %35
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ARRAY_SIZE(%struct.reg_sequence*) #1

declare dso_local i32 @regmap_register_patch(i32, %struct.reg_sequence*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
