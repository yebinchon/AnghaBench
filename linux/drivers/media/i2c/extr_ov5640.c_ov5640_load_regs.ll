; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_load_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_load_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }
%struct.ov5640_mode_info = type { i32, %struct.reg_value* }
%struct.reg_value = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, %struct.ov5640_mode_info*)* @ov5640_load_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_load_regs(%struct.ov5640_dev* %0, %struct.ov5640_mode_info* %1) #0 {
  %3 = alloca %struct.ov5640_dev*, align 8
  %4 = alloca %struct.ov5640_mode_info*, align 8
  %5 = alloca %struct.reg_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %3, align 8
  store %struct.ov5640_mode_info* %1, %struct.ov5640_mode_info** %4, align 8
  %12 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %13 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %12, i32 0, i32 1
  %14 = load %struct.reg_value*, %struct.reg_value** %13, align 8
  store %struct.reg_value* %14, %struct.reg_value** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %62, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %18 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %15
  %22 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %23 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %26 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %29 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %32 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %37, i32 %38, i64 %39, i64 %40)
  store i32 %41, i32* %11, align 4
  br label %47

42:                                               ; preds = %21
  %43 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %43, i32 %44, i64 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 1000, %55
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 1000, %57
  %59 = add nsw i32 %58, 100
  %60 = call i32 @usleep_range(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %66 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %65, i32 1
  store %struct.reg_value* %66, %struct.reg_value** %5, align 8
  br label %15

67:                                               ; preds = %50, %15
  %68 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %69 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %4, align 8
  %70 = call i32 @ov5640_set_timings(%struct.ov5640_dev* %68, %struct.ov5640_mode_info* %69)
  ret i32 %70
}

declare dso_local i32 @ov5640_mod_reg(%struct.ov5640_dev*, i32, i64, i64) #1

declare dso_local i32 @ov5640_write_reg(%struct.ov5640_dev*, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ov5640_set_timings(%struct.ov5640_dev*, %struct.ov5640_mode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
