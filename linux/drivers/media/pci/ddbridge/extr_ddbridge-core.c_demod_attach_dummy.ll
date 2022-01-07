; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_dummy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_demod_attach_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_input = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ddb_dvb* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ddb_dvb = type { i32 }

@dvb_dummy_fe_qam_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"QAM dummy attach failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_input*)* @demod_attach_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_dummy(%struct.ddb_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_input*, align 8
  %4 = alloca %struct.ddb_dvb*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ddb_input* %0, %struct.ddb_input** %3, align 8
  %6 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %7 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %11 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %12 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %10, i64 %15
  store %struct.ddb_dvb* %16, %struct.ddb_dvb** %4, align 8
  %17 = load %struct.ddb_input*, %struct.ddb_input** %3, align 8
  %18 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %5, align 8
  %24 = load i32, i32* @dvb_dummy_fe_qam_attach, align 4
  %25 = call i32 @dvb_attach(i32 %24)
  %26 = load %struct.ddb_dvb*, %struct.ddb_dvb** %4, align 8
  %27 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ddb_dvb*, %struct.ddb_dvb** %4, align 8
  %29 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @dvb_attach(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
