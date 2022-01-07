; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_power_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_power_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@VRT_GET_REGISTER = common dso_local global i32 0, align 4
@PWR_CTL_EN = common dso_local global i32 0, align 4
@PWR_MODE_MASK = common dso_local global i32 0, align 4
@VRT_SET_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_power_suspend(%struct.cx231xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  %7 = bitcast [4 x i64]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = load i32, i32* @VRT_GET_REGISTER, align 4
  %10 = load i32, i32* @PWR_CTL_EN, align 4
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %12 = call i32 @cx231xx_read_ctrl_reg(%struct.cx231xx* %8, i32 %9, i32 %10, i64* %11, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %19 = bitcast i64* %18 to i32*
  %20 = load i32, i32* %19, align 16
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @PWR_MODE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 16
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 %35, i64* %36, align 16
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 24
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 %39, i64* %40, align 8
  %41 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %42 = load i32, i32* @VRT_SET_REGISTER, align 4
  %43 = load i32, i32* @PWR_CTL_EN, align 4
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %45 = call i32 @cx231xx_write_ctrl_reg(%struct.cx231xx* %41, i32 %42, i32 %43, i64* %44, i32 4)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %17, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx231xx_read_ctrl_reg(%struct.cx231xx*, i32, i32, i64*, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @cx231xx_write_ctrl_reg(%struct.cx231xx*, i32, i32, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
