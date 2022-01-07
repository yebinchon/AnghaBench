; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_cx88_i2c_init_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c_cx88_i2c_init_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i64, i32, i32, %struct.i2c_board_info, %struct.TYPE_2__ }
%struct.i2c_board_info = type { i32, i8*, i16, %struct.i2c_board_info*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@cx88_i2c_init_ir.default_addr_list = internal constant [4 x i16] [i16 24, i16 107, i16 113, i16 128], align 2
@cx88_i2c_init_ir.pvr2000_addr_list = internal constant [3 x i16] [i16 24, i16 26, i16 128], align 2
@.str = private unnamed_addr constant [9 x i8] c"ir_video\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cx88 Leadtek PVR 2000 remote\00", align 1
@RC_PROTO_BIT_UNKNOWN = common dso_local global i32 0, align 4
@get_key_pvr2000 = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ir_z8f0811_haup\00", align 1
@RC_MAP_HAUPPAUGE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_MCE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_32 = common dso_local global i32 0, align 4
@IR_KBD_GET_KEY_HAUP_XVR = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_QUICK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_i2c_init_ir(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  %3 = alloca %struct.i2c_board_info, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @cx88_i2c_init_ir.default_addr_list, i64 0, i64 0), i16** %4, align 8
  %6 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %7 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %103

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.i2c_board_info* %3, i32 0, i32 48)
  %13 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @I2C_NAME_SIZE, align 4
  %16 = call i32 @strscpy(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %18 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %36 [
    i32 129, label %20
  ]

20:                                               ; preds = %11
  store i16* getelementptr inbounds ([3 x i16], [3 x i16]* @cx88_i2c_init_ir.pvr2000_addr_list, i64 0, i64 0), i16** %4, align 8
  %21 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %22 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @RC_PROTO_BIT_UNKNOWN, align 4
  %25 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %26 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @get_key_pvr2000, align 4
  %29 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %30 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %30, i32 0, i32 6
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @RC_MAP_EMPTY, align 4
  %33 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %34 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %34, i32 0, i32 5
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %11, %20
  %37 = load i16*, i16** %4, align 8
  store i16* %37, i16** %5, align 8
  br label %38

38:                                               ; preds = %100, %36
  %39 = load i16*, i16** %5, align 8
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp ne i32 %41, 128
  br i1 %42, label %43, label %103

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 3
  store %struct.i2c_board_info* null, %struct.i2c_board_info** %44, align 8
  %45 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %46 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %45, i32 0, i32 3
  %47 = call i32 @memset(%struct.i2c_board_info* %46, i32 0, i32 48)
  %48 = load i16*, i16** %5, align 8
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %50, 113
  br i1 %51, label %52, label %83

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @I2C_NAME_SIZE, align 4
  %56 = call i32 @strscpy(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %58 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %62 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* @RC_MAP_HAUPPAUGE, align 4
  %65 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %66 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %66, i32 0, i32 5
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %69 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RC_PROTO_BIT_RC6_6A_32, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %74 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @IR_KBD_GET_KEY_HAUP_XVR, align 4
  %77 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %78 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %78, i32 0, i32 4
  store i32 %76, i32* %79, align 8
  %80 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %81 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 3
  store %struct.i2c_board_info* %81, %struct.i2c_board_info** %82, align 8
  br label %83

83:                                               ; preds = %52, %43
  %84 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %85 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %84, i32 0, i32 2
  %86 = load i16*, i16** %5, align 8
  %87 = load i16, i16* %86, align 2
  %88 = load i32, i32* @I2C_SMBUS_READ, align 4
  %89 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %90 = call i64 @i2c_smbus_xfer(i32* %85, i16 zeroext %87, i32 0, i32 %88, i32 0, i32 %89, i32* null)
  %91 = icmp sge i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i16*, i16** %5, align 8
  %94 = load i16, i16* %93, align 2
  %95 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 2
  store i16 %94, i16* %95, align 8
  %96 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %97 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %96, i32 0, i32 2
  %98 = call i32 @i2c_new_device(i32* %97, %struct.i2c_board_info* %3)
  br label %103

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99
  %101 = load i16*, i16** %5, align 8
  %102 = getelementptr inbounds i16, i16* %101, i32 1
  store i16* %102, i16** %5, align 8
  br label %38

103:                                              ; preds = %10, %92, %38
  ret void
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i64 @i2c_smbus_xfer(i32*, i16 zeroext, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @i2c_new_device(i32*, %struct.i2c_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
