; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v111_dev = type { i64, i32, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MT9V111_MAX_CLKIN = common dso_local global i32 0, align 4
@MT9V111_R01_CORE = common dso_local global i32 0, align 4
@MT9V111_CORE_R07_OUT_CTRL = common dso_local global i32 0, align 4
@MT9V111_CORE_R07_OUT_CTRL_SAMPLE = common dso_local global i32 0, align 4
@MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_YC = common dso_local global i32 0, align 4
@MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_CBCR = common dso_local global i32 0, align 4
@MT9V111_R01_IFP = common dso_local global i32 0, align 4
@MT9V111_IFP_R3A_OUTFMT_CTRL2 = common dso_local global i32 0, align 4
@MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_MASK = common dso_local global i32 0, align 4
@MT9V111_IFP_RA5_HPAN = common dso_local global i32 0, align 4
@MT9V111_IFP_DECIMATION_FREEZE = common dso_local global i32 0, align 4
@MT9V111_IFP_RA8_VPAN = common dso_local global i32 0, align 4
@MT9V111_IFP_RA6_HZOOM = common dso_local global i32 0, align 4
@MT9V111_PIXEL_ARRAY_WIDTH = common dso_local global i32 0, align 4
@MT9V111_IFP_RA9_VZOOM = common dso_local global i32 0, align 4
@MT9V111_PIXEL_ARRAY_HEIGHT = common dso_local global i32 0, align 4
@MT9V111_IFP_RA7_HOUT = common dso_local global i32 0, align 4
@MT9V111_IFP_RAA_VOUT = common dso_local global i32 0, align 4
@MT9V111_CORE_R09_PIXEL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9v111_dev*)* @mt9v111_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_hw_config(%struct.mt9v111_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9v111_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt9v111_dev* %0, %struct.mt9v111_dev** %3, align 8
  %7 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %7, i32 0, i32 3
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %11 = call i32 @__mt9v111_hw_reset(%struct.mt9v111_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %18 = call i32 @__mt9v111_sw_reset(%struct.mt9v111_dev* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %161

24:                                               ; preds = %19
  %25 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @MT9V111_MAX_CLKIN, align 4
  %29 = call i64 @DIV_ROUND_CLOSEST(i32 %28, i32 2)
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @MT9V111_R01_CORE, align 4
  %34 = load i32, i32* @MT9V111_CORE_R07_OUT_CTRL, align 4
  %35 = load i32, i32* @MT9V111_CORE_R07_OUT_CTRL_SAMPLE, align 4
  %36 = call i32 @mt9v111_update(%struct.i2c_client* %32, i32 %33, i32 %34, i32 %35, i32 1)
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @MT9V111_R01_CORE, align 4
  %40 = load i32, i32* @MT9V111_CORE_R07_OUT_CTRL, align 4
  %41 = load i32, i32* @MT9V111_CORE_R07_OUT_CTRL_SAMPLE, align 4
  %42 = call i32 @mt9v111_update(%struct.i2c_client* %38, i32 %39, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i32 [ %36, %31 ], [ %42, %37 ]
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %161

49:                                               ; preds = %43
  %50 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %63 [
    i32 129, label %54
    i32 130, label %56
    i32 128, label %58
    i32 131, label %62
  ]

54:                                               ; preds = %49
  %55 = load i32, i32* @MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_YC, align 4
  store i32 %55, i32* %6, align 4
  br label %64

56:                                               ; preds = %49
  %57 = load i32, i32* @MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_CBCR, align 4
  store i32 %57, i32* %6, align 4
  br label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_YC, align 4
  %60 = load i32, i32* @MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_CBCR, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %6, align 4
  br label %64

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %49, %62
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %58, %56, %54
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* @MT9V111_R01_IFP, align 4
  %67 = load i32, i32* @MT9V111_IFP_R3A_OUTFMT_CTRL2, align 4
  %68 = load i32, i32* @MT9V111_IFP_R3A_OUTFMT_CTRL2_SWAP_MASK, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @mt9v111_update(%struct.i2c_client* %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %161

75:                                               ; preds = %64
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load i32, i32* @MT9V111_R01_IFP, align 4
  %78 = load i32, i32* @MT9V111_IFP_RA5_HPAN, align 4
  %79 = load i32, i32* @MT9V111_IFP_DECIMATION_FREEZE, align 4
  %80 = call i32 @mt9v111_write(%struct.i2c_client* %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %161

85:                                               ; preds = %75
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* @MT9V111_R01_IFP, align 4
  %88 = load i32, i32* @MT9V111_IFP_RA8_VPAN, align 4
  %89 = load i32, i32* @MT9V111_IFP_DECIMATION_FREEZE, align 4
  %90 = call i32 @mt9v111_write(%struct.i2c_client* %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %161

95:                                               ; preds = %85
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load i32, i32* @MT9V111_R01_IFP, align 4
  %98 = load i32, i32* @MT9V111_IFP_RA6_HZOOM, align 4
  %99 = load i32, i32* @MT9V111_IFP_DECIMATION_FREEZE, align 4
  %100 = load i32, i32* @MT9V111_PIXEL_ARRAY_WIDTH, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @mt9v111_write(%struct.i2c_client* %96, i32 %97, i32 %98, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %161

107:                                              ; preds = %95
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = load i32, i32* @MT9V111_R01_IFP, align 4
  %110 = load i32, i32* @MT9V111_IFP_RA9_VZOOM, align 4
  %111 = load i32, i32* @MT9V111_IFP_DECIMATION_FREEZE, align 4
  %112 = load i32, i32* @MT9V111_PIXEL_ARRAY_HEIGHT, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @mt9v111_write(%struct.i2c_client* %108, i32 %109, i32 %110, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %161

119:                                              ; preds = %107
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = load i32, i32* @MT9V111_R01_IFP, align 4
  %122 = load i32, i32* @MT9V111_IFP_RA7_HOUT, align 4
  %123 = load i32, i32* @MT9V111_IFP_DECIMATION_FREEZE, align 4
  %124 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %125 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %123, %127
  %129 = call i32 @mt9v111_write(%struct.i2c_client* %120, i32 %121, i32 %122, i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %119
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %161

134:                                              ; preds = %119
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = load i32, i32* @MT9V111_R01_IFP, align 4
  %137 = load i32, i32* @MT9V111_IFP_RAA_VOUT, align 4
  %138 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %139 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mt9v111_write(%struct.i2c_client* %135, i32 %136, i32 %137, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %161

147:                                              ; preds = %134
  %148 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %149 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %148, i32 0, i32 1
  %150 = call i32 @v4l2_ctrl_handler_setup(i32* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %161

155:                                              ; preds = %147
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = load i32, i32* @MT9V111_R01_CORE, align 4
  %158 = load i32, i32* @MT9V111_CORE_R09_PIXEL_INT, align 4
  %159 = load i32, i32* @MT9V111_PIXEL_ARRAY_HEIGHT, align 4
  %160 = call i32 @mt9v111_write(%struct.i2c_client* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %153, %145, %132, %117, %105, %93, %83, %73, %47, %22
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @__mt9v111_hw_reset(%struct.mt9v111_dev*) #1

declare dso_local i32 @__mt9v111_sw_reset(%struct.mt9v111_dev*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @mt9v111_update(%struct.i2c_client*, i32, i32, i32, i32) #1

declare dso_local i32 @mt9v111_write(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
