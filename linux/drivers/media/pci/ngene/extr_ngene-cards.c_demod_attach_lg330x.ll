; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_lg330x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-cards.c_demod_attach_lg330x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@lgdt330x_attach = common dso_local global i32 0, align 4
@aver_m780 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No LGDT330x found!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mt2131_attach = common dso_local global i32 0, align 4
@m780_tunerconfig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene_channel*)* @demod_attach_lg330x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demod_attach_lg330x(%struct.ngene_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene_channel*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %3, align 8
  %5 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %6 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @lgdt330x_attach, align 4
  %12 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %12, i32 0, i32 1
  %14 = call i32* (i32, i32*, i32, i32*, ...) @dvb_attach(i32 %11, i32* @aver_m780, i32 89, i32* %13)
  %15 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %16 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %45

26:                                               ; preds = %1
  %27 = load i32, i32* @mt2131_attach, align 4
  %28 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %29 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %31, i32 0, i32 1
  %33 = ptrtoint i32* %32 to i32
  %34 = call i32* (i32, i32*, i32, i32*, ...) @dvb_attach(i32 %27, i32* %30, i32 %33, i32* @m780_tunerconfig, i32 0)
  %35 = load %struct.ngene_channel*, %struct.ngene_channel** %3, align 8
  %36 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 0, %39 ], [ %42, %40 ]
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %21
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32* @dvb_attach(i32, i32*, i32, i32*, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
