; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_card_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.cx231xx = type { i64, i32, i32, i32*, i32, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.i2c_adapter = type { i32 }
%struct.eeprom = type { %struct.tveeprom, [256 x i32], %struct.i2c_client }
%struct.tveeprom = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.eeprom.0 = type opaque
%struct.eeprom.1 = type opaque

@cx231xx_boards = common dso_local global %struct.TYPE_4__* null, align 8
@CX231XX_AVDECODER = common dso_local global i64 0, align 8
@I2C_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cx25840\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cx25840 subdev registration failure\0A\00", align 1
@core = common dso_local global i32 0, align 4
@load_fw = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"tuner subdev registration failure\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to allocate memory to read eeprom\0A\00", align 1
@I2C_1_MUX_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_card_setup(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.eeprom*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = call i32 @cx231xx_set_model(%struct.cx231xx* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx231xx_boards, align 8
  %8 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx231xx_boards, align 8
  %17 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx231xx_boards, align 8
  %26 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CX231XX_AVDECODER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 4
  %44 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %45 = load i32, i32* @I2C_0, align 4
  %46 = call %struct.i2c_adapter* @cx231xx_get_i2c_adap(%struct.cx231xx* %44, i32 %45)
  %47 = call i8* @v4l2_i2c_new_subdev(i32* %43, %struct.i2c_adapter* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 68, i32* null)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %50 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  %51 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %41
  %61 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %62 = load i32, i32* @core, align 4
  %63 = load i32, i32* @load_fw, align 4
  %64 = call i32 @cx25840_call(%struct.cx231xx* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %34
  %66 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %67 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TUNER_ABSENT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %65
  %73 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %74 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.i2c_adapter* @cx231xx_get_i2c_adap(%struct.cx231xx* %73, i32 %77)
  store %struct.i2c_adapter* %78, %struct.i2c_adapter** %3, align 8
  %79 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 4
  %81 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %82 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %83 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @v4l2_i2c_new_subdev(i32* %80, %struct.i2c_adapter* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32* null)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %88 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %87, i32 0, i32 3
  store i32* %86, i32** %88, align 8
  %89 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %90 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %72
  %94 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %101

98:                                               ; preds = %72
  %99 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %100 = call i32 @cx231xx_config_tuner(%struct.cx231xx* %99)
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %65
  %103 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %104 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  switch i64 %105, label %145 [
    i64 132, label %106
    i64 131, label %106
    i64 129, label %106
    i64 130, label %106
    i64 128, label %106
  ]

106:                                              ; preds = %102, %102, %102, %102, %102
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.eeprom.0* @kzalloc(i32 1048, i32 %107)
  %109 = bitcast %struct.eeprom.0* %108 to %struct.eeprom*
  store %struct.eeprom* %109, %struct.eeprom** %4, align 8
  %110 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %111 = icmp eq %struct.eeprom* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %114 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %145

117:                                              ; preds = %106
  %118 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %119 = load i32, i32* @I2C_1_MUX_1, align 4
  %120 = call %struct.i2c_adapter* @cx231xx_get_i2c_adap(%struct.cx231xx* %118, i32 %119)
  %121 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %122 = getelementptr inbounds %struct.eeprom, %struct.eeprom* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  store %struct.i2c_adapter* %120, %struct.i2c_adapter** %123, align 8
  %124 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %125 = getelementptr inbounds %struct.eeprom, %struct.eeprom* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  store i32 80, i32* %126, align 8
  %127 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %128 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %129 = getelementptr inbounds %struct.eeprom, %struct.eeprom* %128, i32 0, i32 2
  %130 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %131 = getelementptr inbounds %struct.eeprom, %struct.eeprom* %130, i32 0, i32 1
  %132 = getelementptr inbounds [256 x i32], [256 x i32]* %131, i64 0, i64 0
  %133 = call i32 @read_eeprom(%struct.cx231xx* %127, %struct.i2c_client* %129, i32* %132, i32 1024)
  %134 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %135 = getelementptr inbounds %struct.eeprom, %struct.eeprom* %134, i32 0, i32 0
  %136 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %137 = getelementptr inbounds %struct.eeprom, %struct.eeprom* %136, i32 0, i32 1
  %138 = getelementptr inbounds [256 x i32], [256 x i32]* %137, i64 0, i64 0
  %139 = getelementptr inbounds i32, i32* %138, i64 192
  %140 = ptrtoint i32* %139 to i32
  %141 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %135, i32 %140)
  %142 = load %struct.eeprom*, %struct.eeprom** %4, align 8
  %143 = bitcast %struct.eeprom* %142 to %struct.eeprom.1*
  %144 = call i32 @kfree(%struct.eeprom.1* %143)
  br label %145

145:                                              ; preds = %102, %117, %112
  ret void
}

declare dso_local i32 @cx231xx_set_model(%struct.cx231xx*) #1

declare dso_local i8* @v4l2_i2c_new_subdev(i32*, %struct.i2c_adapter*, i8*, i32, i32*) #1

declare dso_local %struct.i2c_adapter* @cx231xx_get_i2c_adap(%struct.cx231xx*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cx25840_call(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_config_tuner(%struct.cx231xx*) #1

declare dso_local %struct.eeprom.0* @kzalloc(i32, i32) #1

declare dso_local i32 @read_eeprom(%struct.cx231xx*, %struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32) #1

declare dso_local i32 @kfree(%struct.eeprom.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
