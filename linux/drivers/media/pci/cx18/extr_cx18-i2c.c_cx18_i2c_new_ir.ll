; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-i2c.c_cx18_i2c_new_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-i2c.c_cx18_i2c_new_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.IR_i2c_init_data }
%struct.IR_i2c_init_data = type { i32, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { %struct.IR_i2c_init_data*, i32 }

@I2C_CLIENT_END = common dso_local global i16 0, align 2
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i32 0, align 4
@IR_KBD_GET_KEY_HAUP_XVR = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_MCE = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RC6_6A_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, %struct.i2c_adapter*, i32, i8*, i16)* @cx18_i2c_new_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_i2c_new_ir(%struct.cx18* %0, %struct.i2c_adapter* %1, i32 %2, i8* %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.i2c_board_info, align 8
  %12 = alloca %struct.IR_i2c_init_data*, align 8
  %13 = alloca [2 x i16], align 2
  store %struct.cx18* %0, %struct.cx18** %6, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i16 %4, i16* %10, align 2
  %14 = load %struct.cx18*, %struct.cx18** %6, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 1
  store %struct.IR_i2c_init_data* %15, %struct.IR_i2c_init_data** %12, align 8
  %16 = getelementptr inbounds [2 x i16], [2 x i16]* %13, i64 0, i64 0
  %17 = load i16, i16* %10, align 2
  store i16 %17, i16* %16, align 2
  %18 = getelementptr inbounds i16, i16* %16, i64 1
  %19 = load i16, i16* @I2C_CLIENT_END, align 2
  store i16 %19, i16* %18, align 2
  %20 = call i32 @memset(%struct.i2c_board_info* %11, i32 0, i32 16)
  %21 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @I2C_NAME_SIZE, align 4
  %25 = call i32 @strscpy(i32 %22, i8* %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %48 [
    i32 128, label %27
  ]

27:                                               ; preds = %5
  %28 = load i32, i32* @RC_MAP_HAUPPAUGE, align 4
  %29 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %30 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @IR_KBD_GET_KEY_HAUP_XVR, align 4
  %32 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %33 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @RC_PROTO_BIT_RC5, align 4
  %35 = load i32, i32* @RC_PROTO_BIT_RC6_MCE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RC_PROTO_BIT_RC6_6A_32, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %40 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cx18*, %struct.cx18** %6, align 8
  %42 = getelementptr inbounds %struct.cx18, %struct.cx18* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %45 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %47 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  store %struct.IR_i2c_init_data* %46, %struct.IR_i2c_init_data** %47, align 8
  br label %48

48:                                               ; preds = %5, %27
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %50 = getelementptr inbounds [2 x i16], [2 x i16]* %13, i64 0, i64 0
  %51 = call i32* @i2c_new_probed_device(%struct.i2c_adapter* %49, %struct.i2c_board_info* %11, i16* %50, i32* null)
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 -1, i32 0
  ret i32 %54
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32* @i2c_new_probed_device(%struct.i2c_adapter*, %struct.i2c_board_info*, i16*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
