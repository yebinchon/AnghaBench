; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_resize_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_resize_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32 }
%struct.rc_map = type { i32, i32, i32, %struct.rc_map_table* }
%struct.rc_map_table = type { i32 }

@IR_TAB_MAX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Growing table to %u bytes\0A\00", align 1
@IR_TAB_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Shrinking table to %u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_map*, i32)* @ir_resize_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_resize_table(%struct.rc_dev* %0, %struct.rc_map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca %struct.rc_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rc_map_table*, align 8
  %11 = alloca %struct.rc_map_table*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store %struct.rc_map* %1, %struct.rc_map** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %13 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %17 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %16, i32 0, i32 3
  %18 = load %struct.rc_map_table*, %struct.rc_map_table** %17, align 8
  store %struct.rc_map_table* %18, %struct.rc_map_table** %10, align 8
  %19 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %20 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %23 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %28 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IR_TAB_MAX_SIZE, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %104

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = mul i32 %36, 2
  store i32 %37, i32* %9, align 4
  %38 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %39 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %3
  %43 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %44 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 3
  %47 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %48 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IR_TAB_MIN_SIZE, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = udiv i32 %56, 2
  store i32 %57, i32* %9, align 4
  %58 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %59 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %55, %51, %42
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %104

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call %struct.rc_map_table* @kmalloc(i32 %68, i32 %69)
  store %struct.rc_map_table* %70, %struct.rc_map_table** %11, align 8
  %71 = load %struct.rc_map_table*, %struct.rc_map_table** %11, align 8
  %72 = icmp ne %struct.rc_map_table* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %104

76:                                               ; preds = %67
  %77 = load %struct.rc_map_table*, %struct.rc_map_table** %11, align 8
  %78 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %79 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %78, i32 0, i32 3
  %80 = load %struct.rc_map_table*, %struct.rc_map_table** %79, align 8
  %81 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %82 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(%struct.rc_map_table* %77, %struct.rc_map_table* %80, i32 %86)
  %88 = load %struct.rc_map_table*, %struct.rc_map_table** %11, align 8
  %89 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %90 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %89, i32 0, i32 3
  store %struct.rc_map_table* %88, %struct.rc_map_table** %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %93 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %95 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = udiv i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %101 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.rc_map_table*, %struct.rc_map_table** %10, align 8
  %103 = call i32 @kfree(%struct.rc_map_table* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %76, %73, %66, %32
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.rc_map_table* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.rc_map_table*, %struct.rc_map_table*, i32) #1

declare dso_local i32 @kfree(%struct.rc_map_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
