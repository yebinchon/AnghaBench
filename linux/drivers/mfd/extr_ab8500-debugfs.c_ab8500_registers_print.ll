; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_registers_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8500_registers_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.device = type { i32 }
%struct.seq_file = type { i32 }

@debug_ranges = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"ab->read fail %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  [0x%02X/0x%02X]: 0x%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c" [0x%02X/0x%02X]: 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, %struct.seq_file*)* @ab8500_registers_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_registers_print(%struct.device* %0, i64 %1, %struct.seq_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.seq_file* %2, %struct.seq_file** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %83, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @debug_ranges, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %20, label %86

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @debug_ranges, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %79, %20
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @debug_ranges, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %32, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %31
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @abx500_get_register_interruptible(%struct.device* %45, i32 %47, i32 %49, i32* %10)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %87

58:                                               ; preds = %44
  %59 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %60 = icmp ne %struct.seq_file* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %64, i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %68 = call i64 @seq_has_overflowed(%struct.seq_file* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %87

71:                                               ; preds = %61
  br label %78

72:                                               ; preds = %58
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_info(%struct.device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %71
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %31

82:                                               ; preds = %31
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %12

86:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %70, %53
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @abx500_get_register_interruptible(%struct.device*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64, i32) #1

declare dso_local i64 @seq_has_overflowed(%struct.seq_file*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
