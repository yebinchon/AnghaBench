; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_stv6111.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tuner_attach_stv6111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.ddb_dvb*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { i32 }
%struct.TYPE_6__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { i32 }

@stv6111_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No STV6111 found at 0x%02x!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*, i32)* @tuner_attach_stv6111 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_stv6111(%struct.ddb_input* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.ddb_dvb*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dvb_frontend*, align 8
  %10 = alloca i32, align 4
  store %struct.ddb_input* %0, %struct.ddb_input** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %12 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %6, align 8
  %17 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %18 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.ddb_dvb*, %struct.ddb_dvb** %20, align 8
  %22 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %23 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %21, i64 %26
  store %struct.ddb_dvb* %27, %struct.ddb_dvb** %7, align 8
  %28 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %29 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.device*, %struct.device** %33, align 8
  store %struct.device* %34, %struct.device** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 4
  %39 = load %struct.ddb_input*, %struct.ddb_input** %4, align 8
  %40 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 99, i32 96
  %46 = add nsw i32 %38, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @stv6111_attach, align 4
  %48 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %49 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.dvb_frontend* @dvb_attach(i32 %47, i32 %50, %struct.i2c_adapter* %51, i32 %52)
  store %struct.dvb_frontend* %53, %struct.dvb_frontend** %9, align 8
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %9, align 8
  %55 = icmp ne %struct.dvb_frontend* %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %2
  %57 = load i32, i32* @stv6111_attach, align 4
  %58 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %59 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, -5
  %64 = call %struct.dvb_frontend* @dvb_attach(i32 %57, i32 %60, %struct.i2c_adapter* %61, i32 %63)
  store %struct.dvb_frontend* %64, %struct.dvb_frontend** %9, align 8
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %9, align 8
  %66 = icmp ne %struct.dvb_frontend* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %56
  %68 = load %struct.device*, %struct.device** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %2
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, i32, %struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
