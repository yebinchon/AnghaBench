; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_get_key_avermedia_cardbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_get_key_avermedia_cardbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"read key 0x%02x/0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"warning: invalid key group 0x%02x for key 0x%02x\0A\00", align 1
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i8*, i64*)* @get_key_avermedia_cardbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_avermedia_cardbus(%struct.IR_i2c* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IR_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.IR_i2c* %0, %struct.IR_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %17 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i8* %10, i8** %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 1
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %27 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %25, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  store i8* %11, i8** %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 3
  %34 = load i32, i32* @I2C_M_RD, align 4
  store i32 %34, i32* %33, align 4
  store i8 13, i8* %10, align 1
  %35 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %36 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %41 = call i32 @i2c_transfer(i32 %39, %struct.i2c_msg* %40, i32 2)
  %42 = icmp ne i32 2, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %45 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %135

51:                                               ; preds = %4
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %135

56:                                               ; preds = %51
  store i8 11, i8* %10, align 1
  %57 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 1
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  store i8* %12, i8** %58, align 8
  %59 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %60 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %65 = call i32 @i2c_transfer(i32 %63, %struct.i2c_msg* %64, i32 2)
  %66 = icmp ne i32 2, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %69 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %135

75:                                               ; preds = %56
  %76 = load i8, i8* %12, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 255
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %135

80:                                               ; preds = %75
  %81 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %82 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8, i8* %11, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %12, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %88)
  %90 = load i8, i8* %12, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %97, label %93

93:                                               ; preds = %80
  %94 = load i8, i8* %12, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %105

97:                                               ; preds = %93, %80
  %98 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %99 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i8, i8* %12, align 1
  %103 = load i8, i8* %11, align 1
  %104 = call i32 @dev_warn(i32* %101, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %102, i8 zeroext %103)
  br label %105

105:                                              ; preds = %97, %93
  %106 = load i8, i8* %12, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, 1
  %109 = shl i32 %108, 6
  %110 = load i8, i8* %11, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, %109
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %11, align 1
  %114 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i8, i8* %11, align 1
  %117 = load i8*, i8** %8, align 8
  store i8 %116, i8* %117, align 1
  %118 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %119 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 65
  br i1 %123, label %124, label %133

124:                                              ; preds = %105
  %125 = load i8, i8* %12, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 %126, 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %130, %127
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %128, align 1
  br label %133

133:                                              ; preds = %124, %105
  %134 = load i64*, i64** %9, align 8
  store i64 0, i64* %134, align 8
  store i32 1, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %79, %67, %55, %43
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
