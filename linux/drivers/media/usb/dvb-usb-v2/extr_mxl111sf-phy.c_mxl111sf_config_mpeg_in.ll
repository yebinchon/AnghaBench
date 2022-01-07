; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_config_mpeg_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_config_mpeg_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"(%u,%u,%u,%u,%u)\00", align 1
@V6_PIN_MUX_MODE_REG = common dso_local global i32 0, align 4
@V6_ENABLE_PIN_MUX = common dso_local global i32 0, align 4
@V6_MPEG_IN_CLK_INV_REG = common dso_local global i32 0, align 4
@TSIF_NORMAL = common dso_local global i32 0, align 4
@V6_INVERTED_CLK_PHASE = common dso_local global i32 0, align 4
@V6_MPEG_IN_CTRL_REG = common dso_local global i32 0, align 4
@TSIF_INPUT_PARALLEL = common dso_local global i32 0, align 4
@V6_MPEG_IN_DATA_SERIAL = common dso_local global i32 0, align 4
@V6_MPEG_IN_DATA_PARALLEL = common dso_local global i32 0, align 4
@V6_MPEG_INOUT_BIT_ORDER_CTRL_REG = common dso_local global i32 0, align 4
@MPEG_SER_MSB_FIRST_ENABLED = common dso_local global i32 0, align 4
@V6_MPEG_SER_MSB_FIRST = common dso_local global i32 0, align 4
@V6_INVERTED_MPEG_SYNC = common dso_local global i32 0, align 4
@V6_INVERTED_MPEG_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_config_mpeg_in(%struct.mxl111sf_state* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mxl111sf_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @mxl_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %7, align 8
  %23 = load i32, i32* @V6_PIN_MUX_MODE_REG, align 4
  %24 = load i32, i32* @V6_ENABLE_PIN_MUX, align 4
  %25 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %22, i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @mxl_fail(i32 %26)
  %28 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %7, align 8
  %29 = load i32, i32* @V6_MPEG_IN_CLK_INV_REG, align 4
  %30 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %28, i32 %29, i32* %14)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @TSIF_NORMAL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load i32, i32* @V6_INVERTED_CLK_PHASE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %14, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %14, align 4
  br label %43

39:                                               ; preds = %6
  %40 = load i32, i32* @V6_INVERTED_CLK_PHASE, align 4
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %7, align 8
  %45 = load i32, i32* @V6_MPEG_IN_CLK_INV_REG, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @mxl_fail(i32 %48)
  %50 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %7, align 8
  %51 = load i32, i32* @V6_MPEG_IN_CTRL_REG, align 4
  %52 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %50, i32 %51, i32* %14)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @mxl_fail(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @TSIF_INPUT_PARALLEL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %43
  %59 = load i32, i32* @V6_MPEG_IN_DATA_SERIAL, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* @V6_MPEG_IN_DATA_PARALLEL, align 4
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %98

66:                                               ; preds = %43
  %67 = load i32, i32* @V6_MPEG_IN_DATA_PARALLEL, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %14, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* @V6_MPEG_IN_DATA_SERIAL, align 4
  %72 = load i32, i32* %14, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %7, align 8
  %75 = load i32, i32* @V6_MPEG_INOUT_BIT_ORDER_CTRL_REG, align 4
  %76 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %74, i32 %75, i32* %15)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @mxl_fail(i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @MPEG_SER_MSB_FIRST_ENABLED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load i32, i32* @V6_MPEG_SER_MSB_FIRST, align 4
  %84 = load i32, i32* %15, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %15, align 4
  br label %91

86:                                               ; preds = %66
  %87 = load i32, i32* @V6_MPEG_SER_MSB_FIRST, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %15, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %7, align 8
  %93 = load i32, i32* @V6_MPEG_INOUT_BIT_ORDER_CTRL_REG, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %92, i32 %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @mxl_fail(i32 %96)
  br label %98

98:                                               ; preds = %91, %58
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @TSIF_NORMAL, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @V6_INVERTED_MPEG_SYNC, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %14, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %14, align 4
  br label %111

107:                                              ; preds = %98
  %108 = load i32, i32* @V6_INVERTED_MPEG_SYNC, align 4
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* @V6_INVERTED_MPEG_VALID, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %14, align 4
  br label %123

119:                                              ; preds = %111
  %120 = load i32, i32* @V6_INVERTED_MPEG_VALID, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %7, align 8
  %125 = load i32, i32* @V6_MPEG_IN_CTRL_REG, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %124, i32 %125, i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @mxl_fail(i32 %128)
  %130 = load i32, i32* %13, align 4
  ret i32 %130
}

declare dso_local i32 @mxl_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

declare dso_local i32 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
