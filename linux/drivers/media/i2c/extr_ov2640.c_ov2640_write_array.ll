; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_write_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2640.c_ov2640_write_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.regval_list = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"array: 0x%02x, 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.regval_list*)* @ov2640_write_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_write_array(%struct.i2c_client* %0, %struct.regval_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.regval_list*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.regval_list* %1, %struct.regval_list** %5, align 8
  br label %7

7:                                                ; preds = %41, %2
  %8 = load %struct.regval_list*, %struct.regval_list** %5, align 8
  %9 = getelementptr inbounds %struct.regval_list, %struct.regval_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 255
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.regval_list*, %struct.regval_list** %5, align 8
  %14 = getelementptr inbounds %struct.regval_list, %struct.regval_list* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 255
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ true, %7 ], [ %16, %12 ]
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.regval_list*, %struct.regval_list** %5, align 8
  %22 = getelementptr inbounds %struct.regval_list, %struct.regval_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.regval_list*, %struct.regval_list** %5, align 8
  %25 = getelementptr inbounds %struct.regval_list, %struct.regval_list* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %20, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load %struct.regval_list*, %struct.regval_list** %5, align 8
  %31 = getelementptr inbounds %struct.regval_list, %struct.regval_list* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.regval_list*, %struct.regval_list** %5, align 8
  %34 = getelementptr inbounds %struct.regval_list, %struct.regval_list* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_vdbg(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %19
  %42 = load %struct.regval_list*, %struct.regval_list** %5, align 8
  %43 = getelementptr inbounds %struct.regval_list, %struct.regval_list* %42, i32 1
  store %struct.regval_list* %43, %struct.regval_list** %5, align 8
  br label %7

44:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
