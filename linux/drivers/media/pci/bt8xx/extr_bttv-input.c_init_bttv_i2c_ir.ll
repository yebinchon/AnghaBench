; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_init_bttv_i2c_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_init_bttv_i2c_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_2__, %struct.i2c_board_info }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_board_info = type { i8*, i32, %struct.i2c_board_info*, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@init_bttv_i2c_ir.addr_list = internal constant [6 x i16] [i16 26, i16 24, i16 100, i16 48, i16 113, i16 128], align 2
@.str = private unnamed_addr constant [9 x i8] c"ir_video\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PV951\00", align 1
@get_key_pv951 = common dso_local global i32 0, align 4
@RC_MAP_PV951 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_bttv_i2c_ir(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.i2c_board_info, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %5 = load %struct.bttv*, %struct.bttv** %2, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 0, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = call i32 @memset(%struct.i2c_board_info* %3, i32 0, i32 40)
  %12 = load %struct.bttv*, %struct.bttv** %2, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 2
  %14 = call i32 @memset(%struct.i2c_board_info* %13, i32 0, i32 40)
  %15 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @I2C_NAME_SIZE, align 4
  %18 = call i32 @strscpy(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.bttv*, %struct.bttv** %2, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %36 [
    i32 129, label %23
  ]

23:                                               ; preds = %10
  %24 = load %struct.bttv*, %struct.bttv** %2, align 8
  %25 = getelementptr inbounds %struct.bttv, %struct.bttv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* @get_key_pv951, align 4
  %28 = load %struct.bttv*, %struct.bttv** %2, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @RC_MAP_PV951, align 4
  %32 = load %struct.bttv*, %struct.bttv** %2, align 8
  %33 = getelementptr inbounds %struct.bttv, %struct.bttv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 1
  store i32 75, i32* %35, align 8
  br label %36

36:                                               ; preds = %10, %23
  %37 = load %struct.bttv*, %struct.bttv** %2, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.bttv*, %struct.bttv** %2, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 2
  store %struct.i2c_board_info* %44, %struct.i2c_board_info** %45, align 8
  %46 = load %struct.bttv*, %struct.bttv** %2, align 8
  %47 = getelementptr inbounds %struct.bttv, %struct.bttv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = call %struct.i2c_client* @i2c_new_device(i32* %48, %struct.i2c_board_info* %3)
  store %struct.i2c_client* %49, %struct.i2c_client** %4, align 8
  br label %55

50:                                               ; preds = %36
  %51 = load %struct.bttv*, %struct.bttv** %2, align 8
  %52 = getelementptr inbounds %struct.bttv, %struct.bttv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call %struct.i2c_client* @i2c_new_probed_device(i32* %53, %struct.i2c_board_info* %3, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @init_bttv_i2c_ir.addr_list, i64 0, i64 0), i32* null)
  store %struct.i2c_client* %54, %struct.i2c_client** %4, align 8
  br label %55

55:                                               ; preds = %50, %42
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = icmp eq %struct.i2c_client* null, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %9, %58, %55
  ret void
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(i32*, %struct.i2c_board_info*) #1

declare dso_local %struct.i2c_client* @i2c_new_probed_device(i32*, %struct.i2c_board_info*, i16*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
