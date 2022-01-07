; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_stream_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_stream_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.TYPE_2__, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MIPID02_CLK_LANE_REG1 = common dso_local global i32 0, align 4
@MIPID02_CLK_LANE_REG3 = common dso_local global i32 0, align 4
@CLK_MIPI_CSI = common dso_local global i32 0, align 4
@MIPID02_DATA_LANE0_REG1 = common dso_local global i32 0, align 4
@MIPID02_DATA_LANE0_REG2 = common dso_local global i32 0, align 4
@DATA_MIPI_CSI = common dso_local global i32 0, align 4
@MIPID02_DATA_LANE1_REG1 = common dso_local global i32 0, align 4
@MIPID02_DATA_LANE1_REG2 = common dso_local global i32 0, align 4
@MIPID02_MODE_REG1 = common dso_local global i32 0, align 4
@MODE_NO_BYPASS = common dso_local global i32 0, align 4
@MIPID02_MODE_REG2 = common dso_local global i32 0, align 4
@MIPID02_DATA_ID_RREG = common dso_local global i32 0, align 4
@MIPID02_DATA_SELECTION_CTRL = common dso_local global i32 0, align 4
@MIPID02_PIX_WIDTH_CTRL = common dso_local global i32 0, align 4
@MIPID02_PIX_WIDTH_CTRL_EMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to stream on %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_stream_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_stream_enable(%struct.mipid02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipid02_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %3, align 8
  %6 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %163

16:                                               ; preds = %1
  %17 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %17, i32 0, i32 0
  %19 = call i32 @memset(%struct.TYPE_2__* %18, i32 0, i32 36)
  %20 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %21 = call i32 @mipid02_configure_from_rx(%struct.mipid02_dev* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %163

25:                                               ; preds = %16
  %26 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %27 = call i32 @mipid02_configure_from_tx(%struct.mipid02_dev* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %163

31:                                               ; preds = %25
  %32 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %33 = call i32 @mipid02_configure_from_code(%struct.mipid02_dev* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %163

37:                                               ; preds = %31
  %38 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %39 = load i32, i32* @MIPID02_CLK_LANE_REG1, align 4
  %40 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %38, i32 %39, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %163

48:                                               ; preds = %37
  %49 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %50 = load i32, i32* @MIPID02_CLK_LANE_REG3, align 4
  %51 = load i32, i32* @CLK_MIPI_CSI, align 4
  %52 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %163

56:                                               ; preds = %48
  %57 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %58 = load i32, i32* @MIPID02_DATA_LANE0_REG1, align 4
  %59 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %57, i32 %58, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %163

67:                                               ; preds = %56
  %68 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %69 = load i32, i32* @MIPID02_DATA_LANE0_REG2, align 4
  %70 = load i32, i32* @DATA_MIPI_CSI, align 4
  %71 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %163

75:                                               ; preds = %67
  %76 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %77 = load i32, i32* @MIPID02_DATA_LANE1_REG1, align 4
  %78 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %76, i32 %77, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %163

86:                                               ; preds = %75
  %87 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %88 = load i32, i32* @MIPID02_DATA_LANE1_REG2, align 4
  %89 = load i32, i32* @DATA_MIPI_CSI, align 4
  %90 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %87, i32 %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %163

94:                                               ; preds = %86
  %95 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %96 = load i32, i32* @MIPID02_MODE_REG1, align 4
  %97 = load i32, i32* @MODE_NO_BYPASS, align 4
  %98 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %97, %101
  %103 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %95, i32 %96, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %163

107:                                              ; preds = %94
  %108 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %109 = load i32, i32* @MIPID02_MODE_REG2, align 4
  %110 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %111 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %108, i32 %109, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %163

118:                                              ; preds = %107
  %119 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %120 = load i32, i32* @MIPID02_DATA_ID_RREG, align 4
  %121 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %119, i32 %120, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %163

129:                                              ; preds = %118
  %130 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %131 = load i32, i32* @MIPID02_DATA_SELECTION_CTRL, align 4
  %132 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %133 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %130, i32 %131, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %163

140:                                              ; preds = %129
  %141 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %142 = load i32, i32* @MIPID02_PIX_WIDTH_CTRL, align 4
  %143 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %144 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %141, i32 %142, i32 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %163

151:                                              ; preds = %140
  %152 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %153 = load i32, i32* @MIPID02_PIX_WIDTH_CTRL_EMB, align 4
  %154 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %152, i32 %153, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %163

162:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %171

163:                                              ; preds = %161, %150, %139, %128, %117, %106, %93, %85, %74, %66, %55, %47, %36, %30, %24, %15
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 0
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load %struct.mipid02_dev*, %struct.mipid02_dev** %3, align 8
  %169 = call i32 @mipid02_stream_disable(%struct.mipid02_dev* %168)
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %163, %162
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mipid02_configure_from_rx(%struct.mipid02_dev*) #1

declare dso_local i32 @mipid02_configure_from_tx(%struct.mipid02_dev*) #1

declare dso_local i32 @mipid02_configure_from_code(%struct.mipid02_dev*) #1

declare dso_local i32 @mipid02_write_reg(%struct.mipid02_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mipid02_stream_disable(%struct.mipid02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
