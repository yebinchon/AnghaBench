; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_cs47l92-tables.c_cs47l92_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_cs47l92-tables.c_cs47l92_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32, i32, i32 }

@cs47l92_reva_16_patch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error in applying 16-bit patch: %d\0A\00", align 1
@cs47l92_reva_32_patch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error in applying 32-bit patch: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs47l92_patch(%struct.madera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.madera*, align 8
  %4 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %3, align 8
  %5 = load %struct.madera*, %struct.madera** %3, align 8
  %6 = getelementptr inbounds %struct.madera, %struct.madera* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @cs47l92_reva_16_patch, align 4
  %9 = load i32, i32* @cs47l92_reva_16_patch, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @regmap_register_patch(i32 %7, i32 %8, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.madera*, %struct.madera** %3, align 8
  %16 = getelementptr inbounds %struct.madera, %struct.madera* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.madera*, %struct.madera** %3, align 8
  %23 = getelementptr inbounds %struct.madera, %struct.madera* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @cs47l92_reva_32_patch, align 4
  %26 = load i32, i32* @cs47l92_reva_32_patch, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @regmap_register_patch(i32 %24, i32 %25, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.madera*, %struct.madera** %3, align 8
  %33 = getelementptr inbounds %struct.madera, %struct.madera* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
