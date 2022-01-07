; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vp3054-i2c.c_vp3054_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vp3054-i2c.c_vp3054_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.cx8802_dev* }
%struct.cx8802_dev = type { %struct.vp3054_i2c_state*, %struct.TYPE_7__*, %struct.cx88_core* }
%struct.vp3054_i2c_state = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.cx88_core = type { i64, i32 }

@CX88_BOARD_DNTV_LIVE_DVB_T_PRO = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vp3054_i2c_algo_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vp3054_i2c register FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vp3054_i2c_probe(%struct.cx8802_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx8802_dev*, align 8
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.vp3054_i2c_state*, align 8
  %6 = alloca i32, align 4
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %3, align 8
  %7 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %7, i32 0, i32 2
  %9 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  store %struct.cx88_core* %9, %struct.cx88_core** %4, align 8
  %10 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CX88_BOARD_DNTV_LIVE_DVB_T_PRO, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.vp3054_i2c_state* @kzalloc(i32 32, i32 %17)
  store %struct.vp3054_i2c_state* %18, %struct.vp3054_i2c_state** %5, align 8
  %19 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %20 = icmp ne %struct.vp3054_i2c_state* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %83

24:                                               ; preds = %16
  %25 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %26 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %27 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %26, i32 0, i32 0
  store %struct.vp3054_i2c_state* %25, %struct.vp3054_i2c_state** %27, align 8
  %28 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %29 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %28, i32 0, i32 1
  %30 = bitcast %struct.TYPE_8__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_8__* @vp3054_i2c_algo_template to i8*), i64 8, i1 false)
  %31 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %32 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %36 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32* %34, i32** %38, align 8
  %39 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %40 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %44 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strscpy(i32 %42, i32 %45, i32 4)
  %47 = load i32, i32* @THIS_MODULE, align 4
  %48 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %49 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %52 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %53 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store %struct.cx8802_dev* %51, %struct.cx8802_dev** %54, align 8
  %55 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %56 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %55, i32 0, i32 0
  %57 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %58 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %56, %struct.cx8802_dev* %57)
  %59 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %60 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %59, i32 0, i32 1
  %61 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %62 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %63, align 8
  %64 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %65 = call i32 @vp3054_bit_setscl(%struct.cx8802_dev* %64, i32 1)
  %66 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %67 = call i32 @vp3054_bit_setsda(%struct.cx8802_dev* %66, i32 1)
  %68 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %5, align 8
  %69 = getelementptr inbounds %struct.vp3054_i2c_state, %struct.vp3054_i2c_state* %68, i32 0, i32 0
  %70 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %24
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %76 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %75, i32 0, i32 0
  %77 = load %struct.vp3054_i2c_state*, %struct.vp3054_i2c_state** %76, align 8
  %78 = call i32 @kfree(%struct.vp3054_i2c_state* %77)
  %79 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %80 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %79, i32 0, i32 0
  store %struct.vp3054_i2c_state* null, %struct.vp3054_i2c_state** %80, align 8
  br label %81

81:                                               ; preds = %73, %24
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %21, %15
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.vp3054_i2c_state* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.cx8802_dev*) #1

declare dso_local i32 @vp3054_bit_setscl(%struct.cx8802_dev*, i32) #1

declare dso_local i32 @vp3054_bit_setsda(%struct.cx8802_dev*, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.vp3054_i2c_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
