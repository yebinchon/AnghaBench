; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_auto_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_auto_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32 }

@REG_DBG_AUTOALG_EN = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"man_exp: %d, auto_exp: %d, a_alg: 0x%x\0A\00", align 1
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@AALG_AE_EN_MASK = common dso_local global i32 0, align 4
@AALG_DIVLEI_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, i32)* @s5k6aa_set_auto_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_auto_exposure(%struct.s5k6aa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k6aa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.s5k6aa*, %struct.s5k6aa** %4, align 8
  %11 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %10, i32 0, i32 1
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.s5k6aa*, %struct.s5k6aa** %4, align 8
  %14 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %21 = call i32 @s5k6aa_read(%struct.i2c_client* %19, i32 %20, i32* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = load i32, i32* @debug, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @v4l2_dbg(i32 1, i32 %27, %struct.i2c_client* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @AALG_AE_EN_MASK, align 4
  %38 = load i32, i32* @AALG_DIVLEI_EN_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %70

42:                                               ; preds = %26
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @s5k6aa_set_user_exposure(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %42
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = load %struct.s5k6aa*, %struct.s5k6aa** %4, align 8
  %53 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @s5k6aa_set_user_gain(%struct.i2c_client* %51, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %50
  %64 = load i32, i32* @AALG_AE_EN_MASK, align 4
  %65 = load i32, i32* @AALG_DIVLEI_EN_MASK, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %63, %36
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @s5k6aa_write(%struct.i2c_client* %71, i32 %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %61, %48, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32, i32) #1

declare dso_local i32 @s5k6aa_set_user_exposure(%struct.i2c_client*, i32) #1

declare dso_local i32 @s5k6aa_set_user_gain(%struct.i2c_client*, i32) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
