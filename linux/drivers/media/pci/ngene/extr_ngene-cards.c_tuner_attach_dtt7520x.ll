; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_dtt7520x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_tuner_attach_dtt7520x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.drxd_config** }
%struct.drxd_config = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@dvb_pll_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No pll(%d) found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @tuner_attach_dtt7520x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_attach_dtt7520x(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.drxd_config*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %6 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.drxd_config**, %struct.drxd_config*** %17, align 8
  %19 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.drxd_config*, %struct.drxd_config** %18, i64 %21
  %23 = load %struct.drxd_config*, %struct.drxd_config** %22, align 8
  store %struct.drxd_config* %23, %struct.drxd_config** %5, align 8
  %24 = load i32, i32* @dvb_pll_attach, align 4
  %25 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drxd_config*, %struct.drxd_config** %5, align 8
  %29 = getelementptr inbounds %struct.drxd_config, %struct.drxd_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %31, i32 0, i32 1
  %33 = load %struct.drxd_config*, %struct.drxd_config** %5, align 8
  %34 = getelementptr inbounds %struct.drxd_config, %struct.drxd_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dvb_attach(i32 %24, i32 %27, i32 %30, i32* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %1
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.drxd_config*, %struct.drxd_config** %5, align 8
  %41 = getelementptr inbounds %struct.drxd_config, %struct.drxd_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @dvb_attach(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
