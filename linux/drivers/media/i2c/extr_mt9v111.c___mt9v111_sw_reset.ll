; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c___mt9v111_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v111_dev = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MT9V111_R01_CORE = common dso_local global i32 0, align 4
@MT9V111_CORE_R0D_CORE_RESET = common dso_local global i32 0, align 4
@MT9V111_CORE_R0D_CORE_RESET_MASK = common dso_local global i32 0, align 4
@MT9V111_R01_IFP = common dso_local global i32 0, align 4
@MT9V111_IFP_R07_IFP_RESET = common dso_local global i32 0, align 4
@MT9V111_IFP_R07_IFP_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9v111_dev*)* @__mt9v111_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt9v111_sw_reset(%struct.mt9v111_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9v111_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.mt9v111_dev* %0, %struct.mt9v111_dev** %3, align 8
  %6 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %6, i32 0, i32 0
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @MT9V111_R01_CORE, align 4
  %11 = load i32, i32* @MT9V111_CORE_R0D_CORE_RESET, align 4
  %12 = load i32, i32* @MT9V111_CORE_R0D_CORE_RESET_MASK, align 4
  %13 = call i32 @mt9v111_update(%struct.i2c_client* %9, i32 %10, i32 %11, i32 %12, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = call i32 @usleep_range(i32 500, i32 1000)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @MT9V111_R01_CORE, align 4
  %22 = load i32, i32* @MT9V111_CORE_R0D_CORE_RESET, align 4
  %23 = load i32, i32* @MT9V111_CORE_R0D_CORE_RESET_MASK, align 4
  %24 = call i32 @mt9v111_update(%struct.i2c_client* %20, i32 %21, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %53

29:                                               ; preds = %18
  %30 = call i32 @usleep_range(i32 500, i32 1000)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @MT9V111_R01_IFP, align 4
  %33 = load i32, i32* @MT9V111_IFP_R07_IFP_RESET, align 4
  %34 = load i32, i32* @MT9V111_IFP_R07_IFP_RESET_MASK, align 4
  %35 = call i32 @mt9v111_update(%struct.i2c_client* %31, i32 %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %29
  %41 = call i32 @usleep_range(i32 500, i32 1000)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @MT9V111_R01_IFP, align 4
  %44 = load i32, i32* @MT9V111_IFP_R07_IFP_RESET, align 4
  %45 = load i32, i32* @MT9V111_IFP_R07_IFP_RESET_MASK, align 4
  %46 = call i32 @mt9v111_update(%struct.i2c_client* %42, i32 %43, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %40
  %52 = call i32 @usleep_range(i32 500, i32 1000)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %49, %38, %27, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @mt9v111_update(%struct.i2c_client*, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
