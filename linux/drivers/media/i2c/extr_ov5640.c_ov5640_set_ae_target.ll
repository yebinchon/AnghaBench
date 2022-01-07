; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_ae_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_ae_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32, i32 }

@OV5640_REG_AEC_CTRL0F = common dso_local global i32 0, align 4
@OV5640_REG_AEC_CTRL10 = common dso_local global i32 0, align 4
@OV5640_REG_AEC_CTRL1B = common dso_local global i32 0, align 4
@OV5640_REG_AEC_CTRL1E = common dso_local global i32 0, align 4
@OV5640_REG_AEC_CTRL11 = common dso_local global i32 0, align 4
@OV5640_REG_AEC_CTRL1F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i32)* @ov5640_set_ae_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_ae_target(%struct.ov5640_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 23
  %11 = sdiv i32 %10, 25
  %12 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %13 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 27
  %16 = sdiv i32 %15, 25
  %17 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %18 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %20 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 255, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %32 = load i32, i32* @OV5640_REG_AEC_CTRL0F, align 4
  %33 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %34 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %31, i32 %32, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %88

41:                                               ; preds = %26
  %42 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %43 = load i32, i32* @OV5640_REG_AEC_CTRL10, align 4
  %44 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %45 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %42, i32 %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %88

52:                                               ; preds = %41
  %53 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %54 = load i32, i32* @OV5640_REG_AEC_CTRL1B, align 4
  %55 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %56 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %53, i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %88

63:                                               ; preds = %52
  %64 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %65 = load i32, i32* @OV5640_REG_AEC_CTRL1E, align 4
  %66 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %67 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %64, i32 %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %88

74:                                               ; preds = %63
  %75 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %76 = load i32, i32* @OV5640_REG_AEC_CTRL11, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %75, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %74
  %84 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %85 = load i32, i32* @OV5640_REG_AEC_CTRL1F, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %84, i32 %85, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %81, %72, %61, %50, %39
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ov5640_write_reg(%struct.ov5640_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
