; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mc44s803.c_mc44s803_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mc44s803.c_mc44s803_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.mc44s803_priv* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, i32)*, i32 }
%struct.mc44s803_priv = type { %struct.dvb_frontend*, %struct.i2c_adapter*, %struct.mc44s803_config* }
%struct.i2c_adapter = type { i32 }
%struct.mc44s803_config = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MC44S803_REG_ID = common dso_local global i32 0, align 4
@MC44S803_ID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unsupported ID (%x should be 0x14)\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"successfully identified (ID = %x)\0A\00", align 1
@mc44s803_tuner_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @mc44s803_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, %struct.mc44s803_config* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.mc44s803_config*, align 8
  %8 = alloca %struct.mc44s803_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store %struct.mc44s803_config* %2, %struct.mc44s803_config** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mc44s803_priv* @kzalloc(i32 24, i32 %12)
  store %struct.mc44s803_priv* %13, %struct.mc44s803_priv** %8, align 8
  %14 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  %15 = icmp eq %struct.mc44s803_priv* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.mc44s803_config*, %struct.mc44s803_config** %7, align 8
  %19 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  %20 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %19, i32 0, i32 2
  store %struct.mc44s803_config* %18, %struct.mc44s803_config** %20, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %22 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  %23 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %22, i32 0, i32 1
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %23, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %25 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  %26 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %25, i32 0, i32 0
  store %struct.dvb_frontend* %24, %struct.dvb_frontend** %26, align 8
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.dvb_frontend*, i32)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %17
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %35, align 8
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %38 = call i32 %36(%struct.dvb_frontend* %37, i32 1)
  br label %39

39:                                               ; preds = %32, %17
  %40 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  %41 = load i32, i32* @MC44S803_REG_ID, align 4
  %42 = call i32 @mc44s803_readreg(%struct.mc44s803_priv* %40, i32 %41, i64* %9)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %81

46:                                               ; preds = %39
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* @MC44S803_ID, align 4
  %49 = call i32 @MC44S803_REG_MS(i64 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 20
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mc_printk(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %81

56:                                               ; preds = %46
  %57 = load i32, i32* @KERN_INFO, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @mc_printk(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @memcpy(i32* %62, i32* @mc44s803_tuner_ops, i32 4)
  %64 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 1
  store %struct.mc44s803_priv* %64, %struct.mc44s803_priv** %66, align 8
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %68 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %69, align 8
  %71 = icmp ne i32 (%struct.dvb_frontend*, i32)* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %56
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %75, align 8
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %78 = call i32 %76(%struct.dvb_frontend* %77, i32 0)
  br label %79

79:                                               ; preds = %72, %56
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %80, %struct.dvb_frontend** %4, align 8
  br label %97

81:                                               ; preds = %52, %45
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.dvb_frontend*, i32)* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %90, align 8
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %93 = call i32 %91(%struct.dvb_frontend* %92, i32 0)
  br label %94

94:                                               ; preds = %87, %81
  %95 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  %96 = call i32 @kfree(%struct.mc44s803_priv* %95)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %97

97:                                               ; preds = %94, %79, %16
  %98 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %98
}

declare dso_local %struct.mc44s803_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @mc44s803_readreg(%struct.mc44s803_priv*, i32, i64*) #1

declare dso_local i32 @MC44S803_REG_MS(i64, i32) #1

declare dso_local i32 @mc_printk(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mc44s803_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
