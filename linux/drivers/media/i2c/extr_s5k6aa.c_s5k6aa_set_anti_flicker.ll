; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_anti_flicker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_anti_flicker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { i32 }
%struct.i2c_client = type { i32 }

@REG_DBG_AUTOALG_EN = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_AUTO = common dso_local global i32 0, align 4
@AALG_FLICKER_EN_MASK = common dso_local global i32 0, align 4
@REG_SF_FLICKER_QUANT = common dso_local global i32 0, align 4
@REG_SF_FLICKER_QUANT_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, i32)* @s5k6aa_set_anti_flicker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_anti_flicker(%struct.s5k6aa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k6aa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.s5k6aa*, %struct.s5k6aa** %4, align 8
  %10 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %9, i32 0, i32 0
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %14 = call i32 @s5k6aa_read(%struct.i2c_client* %12, i32 %13, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @AALG_FLICKER_EN_MASK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %49

27:                                               ; preds = %19
  %28 = load i32, i32* @AALG_FLICKER_EN_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = load i32, i32* @REG_SF_FLICKER_QUANT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @s5k6aa_write(%struct.i2c_client* %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %27
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = load i32, i32* @REG_SF_FLICKER_QUANT_CHG, align 4
  %43 = call i32 @s5k6aa_write(%struct.i2c_client* %41, i32 %42, i32 1)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @s5k6aa_write(%struct.i2c_client* %50, i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %46, %38, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
