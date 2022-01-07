; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_vdp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_vdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_vbi_ram_value = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { %struct.regmap* }
%struct.regmap = type { i32 }

@TVP5150_FULL_FIELD_ENA = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_END = common dso_local global i32 0, align 4
@vbi_ram_default = common dso_local global %struct.i2c_vbi_ram_value* null, align 8
@TVP5150_CONF_RAM_ADDR_HIGH = common dso_local global i32 0, align 4
@TVP5150_CONF_RAM_ADDR_LOW = common dso_local global i32 0, align 4
@TVP5150_VDP_CONF_RAM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tvp5150_vdp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_vdp_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tvp5150*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_vbi_ram_value*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %8)
  store %struct.tvp5150* %9, %struct.tvp5150** %3, align 8
  %10 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %11 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %4, align 8
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* @TVP5150_FULL_FIELD_ENA, align 4
  %15 = call i32 @regmap_write(%struct.regmap* %13, i32 %14, i32 0)
  %16 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %25, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TVP5150_LINE_MODE_END, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.regmap*, %struct.regmap** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @regmap_write(%struct.regmap* %22, i32 %23, i32 255)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %17

28:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %77, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** @vbi_ram_default, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.i2c_vbi_ram_value* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %29
  %35 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** @vbi_ram_default, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %35, i64 %37
  store %struct.i2c_vbi_ram_value* %38, %struct.i2c_vbi_ram_value** %7, align 8
  %39 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %40 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %77

45:                                               ; preds = %34
  %46 = load %struct.regmap*, %struct.regmap** %4, align 8
  %47 = load i32, i32* @TVP5150_CONF_RAM_ADDR_HIGH, align 4
  %48 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %49 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 8
  %52 = call i32 @regmap_write(%struct.regmap* %46, i32 %47, i32 %51)
  %53 = load %struct.regmap*, %struct.regmap** %4, align 8
  %54 = load i32, i32* @TVP5150_CONF_RAM_ADDR_LOW, align 4
  %55 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %56 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @regmap_write(%struct.regmap* %53, i32 %54, i32 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %73, %45
  %60 = load i32, i32* %5, align 4
  %61 = icmp ult i32 %60, 16
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.regmap*, %struct.regmap** %4, align 8
  %64 = load i32, i32* @TVP5150_VDP_CONF_RAM_DATA, align 4
  %65 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %66 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @regmap_write(%struct.regmap* %63, i32 %64, i32 %71)
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %59

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %76, %44
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %29

80:                                               ; preds = %29
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_vbi_ram_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
