; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_flydvb_trio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_flydvb_trio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"get_key_flydvb_trio: ir->c->adapter->algo_data is NULL!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"send wake up byte to pic16C505 (IR chip)failed %dx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i8*, i64*)* @get_key_flydvb_trio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_flydvb_trio(%struct.IR_i2c* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IR_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.saa7134_dev*, align 8
  store %struct.IR_i2c* %0, %struct.IR_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %16 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %20, align 8
  store %struct.saa7134_dev* %21, %struct.saa7134_dev** %14, align 8
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  %23 = icmp eq %struct.saa7134_dev* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %26 = call i32 (%struct.IR_i2c*, i8*, ...) @ir_dbg(%struct.IR_i2c* %25, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %4
  %30 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %31 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %32 = call i32 @saa_clearb(i32 %30, i32 %31)
  %33 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %34 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %35 = call i32 @saa_setb(i32 %33, i32 %34)
  %36 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %37 = ashr i32 %36, 2
  %38 = call i32 @saa_readl(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 262144, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %86

44:                                               ; preds = %29
  store i8 0, i8* %13, align 1
  br label %45

45:                                               ; preds = %55, %44
  %46 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %47 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @i2c_master_send(%struct.TYPE_5__* %48, i8* %13, i32 1)
  %50 = icmp ne i32 1, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = icmp slt i32 %52, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @msleep(i32 10)
  br label %45

57:                                               ; preds = %51
  %58 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (%struct.IR_i2c*, i8*, ...) @ir_dbg(%struct.IR_i2c* %58, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %86

63:                                               ; preds = %45
  %64 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %65 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @i2c_master_recv(%struct.TYPE_5__* %66, i8* %13, i32 1)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %72 = call i32 (%struct.IR_i2c*, i8*, ...) @ir_dbg(%struct.IR_i2c* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %86

77:                                               ; preds = %70
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %86

80:                                               ; preds = %63
  %81 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i8, i8* %13, align 1
  %84 = load i8*, i8** %8, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i64*, i64** %9, align 8
  store i64 0, i64* %85, align 8
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %77, %75, %57, %43, %24
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @ir_dbg(%struct.IR_i2c*, i8*, ...) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
