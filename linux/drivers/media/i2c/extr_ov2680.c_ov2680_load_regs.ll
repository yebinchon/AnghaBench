; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_load_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_load_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { i32 }
%struct.ov2680_mode_info = type { i32, %struct.reg_value* }
%struct.reg_value = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*, %struct.ov2680_mode_info*)* @ov2680_load_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_load_regs(%struct.ov2680_dev* %0, %struct.ov2680_mode_info* %1) #0 {
  %3 = alloca %struct.ov2680_dev*, align 8
  %4 = alloca %struct.ov2680_mode_info*, align 8
  %5 = alloca %struct.reg_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %3, align 8
  store %struct.ov2680_mode_info* %1, %struct.ov2680_mode_info** %4, align 8
  %10 = load %struct.ov2680_mode_info*, %struct.ov2680_mode_info** %4, align 8
  %11 = getelementptr inbounds %struct.ov2680_mode_info, %struct.ov2680_mode_info* %10, i32 0, i32 1
  %12 = load %struct.reg_value*, %struct.reg_value** %11, align 8
  store %struct.reg_value* %12, %struct.reg_value** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %34, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ov2680_mode_info*, %struct.ov2680_mode_info** %4, align 8
  %16 = getelementptr inbounds %struct.ov2680_mode_info, %struct.ov2680_mode_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %21 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %24 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ov2680_dev*, %struct.ov2680_dev** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ov2680_write_reg(%struct.ov2680_dev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %39

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load %struct.reg_value*, %struct.reg_value** %5, align 8
  %38 = getelementptr inbounds %struct.reg_value, %struct.reg_value* %37, i32 1
  store %struct.reg_value* %38, %struct.reg_value** %5, align 8
  br label %13

39:                                               ; preds = %32, %13
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @ov2680_write_reg(%struct.ov2680_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
