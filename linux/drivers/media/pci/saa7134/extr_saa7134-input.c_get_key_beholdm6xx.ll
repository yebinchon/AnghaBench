; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_beholdm6xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_beholdm6xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RC_PROTO_NECX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*, i64*)* @get_key_beholdm6xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_beholdm6xx(%struct.IR_i2c* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IR_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [12 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.saa7134_dev*, align 8
  store %struct.IR_i2c* %0, %struct.IR_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %15 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %19, align 8
  store %struct.saa7134_dev* %20, %struct.saa7134_dev** %13, align 8
  %21 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %22 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %23 = call i32 @saa_clearb(i32 %21, i32 %22)
  %24 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %25 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %26 = call i32 @saa_setb(i32 %24, i32 %25)
  %27 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %28 = ashr i32 %27, 2
  %29 = call i32 @saa_readl(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 4194304, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %86

35:                                               ; preds = %4
  %36 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %37 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 45, i32* %39, align 8
  %40 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %41 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %44 = call i32 @i2c_master_recv(%struct.TYPE_4__* %42, i8* %43, i32 12)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 12
  br i1 %46, label %47, label %57

47:                                               ; preds = %35
  %48 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %49 = call i32 @ir_dbg(%struct.IR_i2c* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %86

54:                                               ; preds = %47
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %86

57:                                               ; preds = %35
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 9
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %63, -1
  %65 = trunc i32 %64 to i8
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %60, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %86

69:                                               ; preds = %57
  %70 = load i32, i32* @RC_PROTO_NECX, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 11
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 8
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 10
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %75, %78
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 9
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @RC_SCANCODE_NECX(i8 zeroext %80, i8 zeroext %82)
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i64*, i64** %9, align 8
  store i64 0, i64* %85, align 8
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %69, %68, %54, %52, %34
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @ir_dbg(%struct.IR_i2c*, i8*) #1

declare dso_local i32 @RC_SCANCODE_NECX(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
