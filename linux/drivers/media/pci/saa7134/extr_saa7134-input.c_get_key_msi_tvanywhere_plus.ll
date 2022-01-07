; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_msi_tvanywhere_plus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_msi_tvanywhere_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"get_key_msi_tvanywhere_plus: ir->c->adapter->algo_data is NULL!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"get_key_msi_tvanywhere_plus: Key = 0x%02X\0A\00", align 1
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i8*, i64*)* @get_key_msi_tvanywhere_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_msi_tvanywhere_plus(%struct.IR_i2c* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IR_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.saa7134_dev*, align 8
  store %struct.IR_i2c* %0, %struct.IR_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %15 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %19, align 8
  store %struct.saa7134_dev* %20, %struct.saa7134_dev** %13, align 8
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  %22 = icmp eq %struct.saa7134_dev* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %25 = call i32 @ir_dbg(%struct.IR_i2c* %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %72

28:                                               ; preds = %4
  %29 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %30 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %31 = call i32 @saa_clearb(i32 %29, i32 %30)
  %32 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %33 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %34 = call i32 @saa_setb(i32 %32, i32 %33)
  %35 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %36 = ashr i32 %35, 2
  %37 = call i32 @saa_readl(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 64
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %72

42:                                               ; preds = %28
  %43 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %44 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @i2c_master_recv(%struct.TYPE_4__* %45, i8* %10, i32 1)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %51 = call i32 @ir_dbg(%struct.IR_i2c* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %72

56:                                               ; preds = %49
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %72

59:                                               ; preds = %42
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %72

64:                                               ; preds = %59
  %65 = load i8, i8* %10, align 1
  %66 = call i32 @input_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %65)
  %67 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i8, i8* %10, align 1
  %70 = load i8*, i8** %8, align 8
  store i8 %69, i8* %70, align 1
  %71 = load i64*, i64** %9, align 8
  store i64 0, i64* %71, align 8
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %64, %63, %56, %54, %41, %23
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @ir_dbg(%struct.IR_i2c*, i8*) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @input_dbg(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
