; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_awb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_awb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { %struct.s5k6aa_ctrls, i32 }
%struct.s5k6aa_ctrls = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }

@REG_DBG_AUTOALG_EN = common dso_local global i32 0, align 4
@REG_SF_RGAIN = common dso_local global i32 0, align 4
@REG_SF_RGAIN_CHG = common dso_local global i32 0, align 4
@REG_SF_GGAIN = common dso_local global i32 0, align 4
@REG_SF_GGAIN_CHG = common dso_local global i32 0, align 4
@REG_SF_BGAIN = common dso_local global i32 0, align 4
@REG_SF_BGAIN_CHG = common dso_local global i32 0, align 4
@AALG_WB_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, i32)* @s5k6aa_set_awb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_awb(%struct.s5k6aa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k6aa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.s5k6aa_ctrls*, align 8
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
  store %struct.s5k6aa_ctrls* %14, %struct.s5k6aa_ctrls** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %17 = call i32 @s5k6aa_read(%struct.i2c_client* %15, i32 %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %79, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %20
  %24 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %25 = load i32, i32* @REG_SF_RGAIN, align 4
  %26 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %7, align 8
  %27 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @s5k6aa_write(%struct.i2c_client* %24, i32 %25, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = load i32, i32* @REG_SF_RGAIN_CHG, align 4
  %37 = call i32 @s5k6aa_write(%struct.i2c_client* %35, i32 %36, i32 1)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %38
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = load i32, i32* @REG_SF_GGAIN, align 4
  %46 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %7, align 8
  %47 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @s5k6aa_write(%struct.i2c_client* %44, i32 %45, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %56 = load i32, i32* @REG_SF_GGAIN_CHG, align 4
  %57 = call i32 @s5k6aa_write(%struct.i2c_client* %55, i32 %56, i32 1)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %43
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %102

63:                                               ; preds = %58
  %64 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %65 = load i32, i32* @REG_SF_BGAIN, align 4
  %66 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %7, align 8
  %67 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @s5k6aa_write(%struct.i2c_client* %64, i32 %65, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %63
  %75 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %76 = load i32, i32* @REG_SF_BGAIN_CHG, align 4
  %77 = call i32 @s5k6aa_write(%struct.i2c_client* %75, i32 %76, i32 1)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %63
  br label %79

79:                                               ; preds = %78, %20, %2
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @AALG_WB_EN_MASK, align 4
  %88 = or i32 %86, %87
  br label %94

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @AALG_WB_EN_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i32 [ %88, %85 ], [ %93, %89 ]
  store i32 %95, i32* %8, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %97 = load i32, i32* @REG_DBG_AUTOALG_EN, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @s5k6aa_write(%struct.i2c_client* %96, i32 %97, i32 %98)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94, %79
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %61, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
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
