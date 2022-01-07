; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dt3155/extr_dt3155.c_dt3155_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dt3155_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AD_ADDR = common dso_local global i32 0, align 4
@AD_CMD_REG = common dso_local global i32 0, align 4
@AD_CMD = common dso_local global i32 0, align 4
@SYNC_LVL_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @dt3155_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt3155_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dt3155_priv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.dt3155_priv* @video_drvdata(%struct.file* %9)
  store %struct.dt3155_priv* %10, %struct.dt3155_priv** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %19 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %21 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AD_ADDR, align 4
  %24 = load i32, i32* @AD_CMD_REG, align 4
  %25 = call i32 @write_i2c_reg(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.dt3155_priv*, %struct.dt3155_priv** %8, align 8
  %27 = getelementptr inbounds %struct.dt3155_priv, %struct.dt3155_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AD_CMD, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 6
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 4
  %34 = or i32 %31, %33
  %35 = load i32, i32* @SYNC_LVL_3, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @write_i2c_reg(i32 %28, i32 %29, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.dt3155_priv* @video_drvdata(%struct.file*) #1

declare dso_local i32 @write_i2c_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
