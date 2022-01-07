; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov9640_reg = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov9640_reg_alt = type { i32, i32, i32, i32 }

@ov9640_regs_qqcif = common dso_local global %struct.ov9640_reg* null, align 8
@ov9640_regs_qqvga = common dso_local global %struct.ov9640_reg* null, align 8
@ov9640_regs_qcif = common dso_local global %struct.ov9640_reg* null, align 8
@ov9640_regs_qvga = common dso_local global %struct.ov9640_reg* null, align 8
@ov9640_regs_cif = common dso_local global %struct.ov9640_reg* null, align 8
@ov9640_regs_vga = common dso_local global %struct.ov9640_reg* null, align 8
@ov9640_regs_sxga = common dso_local global %struct.ov9640_reg* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to select resolution!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@ov9640_regs_yuv = common dso_local global %struct.ov9640_reg* null, align 8
@ov9640_regs_rgb = common dso_local global %struct.ov9640_reg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, %struct.ov9640_reg_alt*)* @ov9640_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9640_write_regs(%struct.i2c_client* %0, i32 %1, i32 %2, %struct.ov9640_reg_alt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ov9640_reg_alt*, align 8
  %10 = alloca %struct.ov9640_reg*, align 8
  %11 = alloca %struct.ov9640_reg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ov9640_reg_alt* %3, %struct.ov9640_reg_alt** %9, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %46 [
    i32 132, label %18
    i32 131, label %22
    i32 133, label %26
    i32 130, label %30
    i32 134, label %34
    i32 128, label %38
    i32 129, label %42
  ]

18:                                               ; preds = %4
  %19 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qqcif, align 8
  store %struct.ov9640_reg* %19, %struct.ov9640_reg** %10, align 8
  %20 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qqcif, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %20)
  store i32 %21, i32* %12, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qqvga, align 8
  store %struct.ov9640_reg* %23, %struct.ov9640_reg** %10, align 8
  %24 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qqvga, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %24)
  store i32 %25, i32* %12, align 4
  br label %52

26:                                               ; preds = %4
  %27 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qcif, align 8
  store %struct.ov9640_reg* %27, %struct.ov9640_reg** %10, align 8
  %28 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qcif, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %28)
  store i32 %29, i32* %12, align 4
  br label %52

30:                                               ; preds = %4
  %31 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qvga, align 8
  store %struct.ov9640_reg* %31, %struct.ov9640_reg** %10, align 8
  %32 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_qvga, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %32)
  store i32 %33, i32* %12, align 4
  br label %52

34:                                               ; preds = %4
  %35 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_cif, align 8
  store %struct.ov9640_reg* %35, %struct.ov9640_reg** %10, align 8
  %36 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_cif, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %36)
  store i32 %37, i32* %12, align 4
  br label %52

38:                                               ; preds = %4
  %39 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_vga, align 8
  store %struct.ov9640_reg* %39, %struct.ov9640_reg** %10, align 8
  %40 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_vga, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %40)
  store i32 %41, i32* %12, align 4
  br label %52

42:                                               ; preds = %4
  %43 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_sxga, align 8
  store %struct.ov9640_reg* %43, %struct.ov9640_reg** %10, align 8
  %44 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_sxga, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %44)
  store i32 %45, i32* %12, align 4
  br label %52

46:                                               ; preds = %4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %153

52:                                               ; preds = %42, %38, %34, %30, %26, %22, %18
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_yuv, align 8
  store %struct.ov9640_reg* %57, %struct.ov9640_reg** %11, align 8
  %58 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_yuv, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %58)
  store i32 %59, i32* %13, align 4
  br label %64

60:                                               ; preds = %52
  %61 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_rgb, align 8
  store %struct.ov9640_reg* %61, %struct.ov9640_reg** %11, align 8
  %62 = load %struct.ov9640_reg*, %struct.ov9640_reg** @ov9640_regs_rgb, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.ov9640_reg* %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %56
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %121, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %65
  %70 = load %struct.ov9640_reg*, %struct.ov9640_reg** %10, align 8
  %71 = load i32, i32* %14, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %70, i64 %72
  %74 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %16, align 4
  %76 = load %struct.ov9640_reg*, %struct.ov9640_reg** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %76, i64 %78
  %80 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %106 [
    i32 135, label %82
    i32 138, label %88
    i32 137, label %94
    i32 136, label %100
  ]

82:                                               ; preds = %69
  %83 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %9, align 8
  %84 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %16, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %16, align 4
  br label %106

88:                                               ; preds = %69
  %89 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %9, align 8
  %90 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %16, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %16, align 4
  br label %106

94:                                               ; preds = %69
  %95 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %9, align 8
  %96 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %16, align 4
  br label %106

100:                                              ; preds = %69
  %101 = load %struct.ov9640_reg_alt*, %struct.ov9640_reg_alt** %9, align 8
  %102 = getelementptr inbounds %struct.ov9640_reg_alt, %struct.ov9640_reg_alt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %16, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %69, %100, %94, %88, %82
  %107 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %108 = load %struct.ov9640_reg*, %struct.ov9640_reg** %10, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %108, i64 %110
  %112 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @ov9640_reg_write(%struct.i2c_client* %107, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %5, align 4
  br label %153

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %14, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %65

124:                                              ; preds = %65
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %149, %124
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %131 = load %struct.ov9640_reg*, %struct.ov9640_reg** %11, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %131, i64 %133
  %135 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ov9640_reg*, %struct.ov9640_reg** %11, align 8
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %137, i64 %139
  %141 = getelementptr inbounds %struct.ov9640_reg, %struct.ov9640_reg* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ov9640_reg_write(%struct.i2c_client* %130, i32 %136, i32 %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %129
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %5, align 4
  br label %153

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %14, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %125

152:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %146, %118, %46
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @ARRAY_SIZE(%struct.ov9640_reg*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ov9640_reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
