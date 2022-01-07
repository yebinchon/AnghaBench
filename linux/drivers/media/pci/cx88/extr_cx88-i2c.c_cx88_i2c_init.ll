; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-i2c.c_cx88_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-i2c.c_cx88_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.cx88_core* }
%struct.cx88_core = type { i8*, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.i2c_msg = type { i32, i32*, i32, i32 }
%struct.pci_dev = type { i32 }

@i2c_udelay = common dso_local global i32 0, align 4
@cx8800_i2c_algo_template = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cx88xx internal\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@cx88_i2c_init.tuner_data = internal global [4 x i32] [i32 11, i32 220, i32 134, i32 82], align 16
@cx88_i2c_init.tuner_msg = internal global %struct.i2c_msg { i32 97, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cx88_i2c_init.tuner_data, i32 0, i32 0), i32 4, i32 0 }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"i2c register ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"i2c init: enabling analog demod on HVR1300/3000/4000 tuner\0A\00", align 1
@i2c_scan = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"i2c register FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_i2c_init(%struct.cx88_core* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load i32, i32* @i2c_udelay, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 5, i32* @i2c_udelay, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %10 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %9, i32 0, i32 5
  %11 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_10__* @cx8800_i2c_algo_template to i8*), i64 16, i1 false)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %15 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* %13, i32** %17, align 8
  %18 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %19 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %23 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strscpy(i32 %21, i8* %24, i32 4)
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @i2c_udelay, align 4
  %31 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %35 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  store %struct.cx88_core* %34, %struct.cx88_core** %37, align 8
  %38 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 4
  %40 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %41 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %40, i32 0, i32 6
  %42 = call i32 @i2c_set_adapdata(%struct.TYPE_8__* %39, i32* %41)
  %43 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %44 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %43, i32 0, i32 5
  %45 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %46 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %47, align 8
  %48 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %49 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %48, i32 0, i32 4
  %50 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %51 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %54 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I2C_NAME_SIZE, align 4
  %58 = call i32 @strscpy(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %60 = call i32 @cx8800_bit_setscl(%struct.cx88_core* %59, i32 1)
  %61 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %62 = call i32 @cx8800_bit_setsda(%struct.cx88_core* %61, i32 1)
  %63 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %64 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %63, i32 0, i32 4
  %65 = call i64 @i2c_bit_add_bus(%struct.TYPE_8__* %64)
  %66 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %67 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %69 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %8
  %73 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %75 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %84 [
    i32 130, label %77
    i32 129, label %77
    i32 128, label %77
  ]

77:                                               ; preds = %72, %72, %72
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %80 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 @i2c_transfer(%struct.TYPE_8__* %82, %struct.i2c_msg* @cx88_i2c_init.tuner_msg, i32 1)
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i64, i64* @i2c_scan, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %90 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %93 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %92, i32 0, i32 3
  %94 = call i32 @do_i2c_scan(i8* %91, %struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %88, %85
  br label %98

96:                                               ; preds = %8
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %95
  %99 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %100 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_8__*, i32*) #2

declare dso_local i32 @cx8800_bit_setscl(%struct.cx88_core*, i32) #2

declare dso_local i32 @cx8800_bit_setsda(%struct.cx88_core*, i32) #2

declare dso_local i64 @i2c_bit_add_bus(%struct.TYPE_8__*) #2

declare dso_local i32 @dprintk(i32, i8*) #2

declare dso_local i32 @pr_info(i8*) #2

declare dso_local i32 @i2c_transfer(%struct.TYPE_8__*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @do_i2c_scan(i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @pr_err(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
