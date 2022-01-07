; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_philips_tda827x_tuner_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-dvb.c_philips_tda827x_tuner_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda1004x_state*, %struct.TYPE_3__* }
%struct.tda1004x_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"setting GPIO21 to 0 (TV antenna?)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"setting GPIO21 to 1 (Radio antenna?)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @philips_tda827x_tuner_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_tda827x_tuner_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.tda1004x_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  store %struct.saa7134_dev* %9, %struct.saa7134_dev** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tda1004x_state*, %struct.tda1004x_state** %11, align 8
  store %struct.tda1004x_state* %12, %struct.tda1004x_state** %4, align 8
  %13 = load %struct.tda1004x_state*, %struct.tda1004x_state** %4, align 8
  %14 = getelementptr inbounds %struct.tda1004x_state, %struct.tda1004x_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %27 [
    i32 0, label %18
    i32 1, label %19
    i32 2, label %23
  ]

18:                                               ; preds = %1
  br label %27

19:                                               ; preds = %1
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %22 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %21, i32 21, i32 0)
  br label %27

23:                                               ; preds = %1
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %26 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %25, i32 21, i32 1)
  br label %27

27:                                               ; preds = %1, %23, %19, %18
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @saa7134_set_gpio(%struct.saa7134_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
