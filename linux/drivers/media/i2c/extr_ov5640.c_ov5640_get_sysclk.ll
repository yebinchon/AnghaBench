; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_get_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_get_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }

@__const.ov5640_get_sysclk.sclk_rdiv_map = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@OV5640_REG_SC_PLL_CTRL0 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL1 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL2 = common dso_local global i32 0, align 4
@OV5640_REG_SC_PLL_CTRL3 = common dso_local global i32 0, align 4
@OV5640_REG_SYS_ROOT_DIVIDER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*)* @ov5640_get_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_get_sysclk(%struct.ov5640_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov5640_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %3, align 8
  %17 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 10000
  store i32 %20, i32* %4, align 4
  %21 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i32]* @__const.ov5640_get_sysclk.sclk_rdiv_map to i8*), i64 16, i1 false)
  store i32 1, i32* %11, align 4
  %22 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %23 = load i32, i32* @OV5640_REG_SC_PLL_CTRL0, align 4
  %24 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %22, i32 %23, i32* %14)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %2, align 4
  br label %123

29:                                               ; preds = %1
  %30 = load i32, i32* %14, align 4
  %31 = and i32 %30, 15
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %15, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %42 = load i32, i32* @OV5640_REG_SC_PLL_CTRL1, align 4
  %43 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %41, i32 %42, i32* %14)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %2, align 4
  br label %123

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  %50 = ashr i32 %49, 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 16, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %56 = load i32, i32* @OV5640_REG_SC_PLL_CTRL2, align 4
  %57 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %55, i32 %56, i32* %14)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %2, align 4
  br label %123

62:                                               ; preds = %54
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %5, align 4
  %64 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %65 = load i32, i32* @OV5640_REG_SC_PLL_CTRL3, align 4
  %66 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %64, i32 %65, i32* %14)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %2, align 4
  br label %123

71:                                               ; preds = %62
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, 15
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %14, align 4
  %75 = ashr i32 %74, 4
  %76 = and i32 %75, 1
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load %struct.ov5640_dev*, %struct.ov5640_dev** %3, align 8
  %79 = load i32, i32* @OV5640_REG_SYS_ROOT_DIVIDER, align 4
  %80 = call i32 @ov5640_read_reg(%struct.ov5640_dev* %78, i32 %79, i32* %14)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %2, align 4
  br label %123

85:                                               ; preds = %71
  %86 = load i32, i32* %14, align 4
  %87 = and i32 %86, 3
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100, %97, %94, %85
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %123

106:                                              ; preds = %100
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sdiv i32 %112, %113
  %115 = load i32, i32* %9, align 4
  %116 = sdiv i32 %114, %115
  %117 = mul nsw i32 %116, 2
  %118 = load i32, i32* %11, align 4
  %119 = sdiv i32 %117, %118
  %120 = load i32, i32* %12, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %106, %103, %83, %69, %60, %46, %27
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ov5640_read_reg(%struct.ov5640_dev*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
