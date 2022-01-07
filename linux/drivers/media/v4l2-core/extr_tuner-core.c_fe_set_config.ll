; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_fe_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_fe_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner*, %struct.TYPE_2__ }
%struct.tuner = type { i32 }
%struct.TYPE_2__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.dvb_frontend.0*, i8*)* }
%struct.dvb_frontend.0 = type opaque

@.str = private unnamed_addr constant [48 x i8] c"Tuner frontend module has no way to set config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i8*)* @fe_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_set_config(%struct.dvb_frontend* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dvb_tuner_ops*, align 8
  %7 = alloca %struct.tuner*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.dvb_tuner_ops* %10, %struct.dvb_tuner_ops** %6, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.tuner*, %struct.tuner** %12, align 8
  store %struct.tuner* %13, %struct.tuner** %7, align 8
  %14 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %15 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.dvb_frontend.0*, i8*)*, i32 (%struct.dvb_frontend.0*, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.dvb_frontend.0*, i8*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %20 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.dvb_frontend.0*, i8*)*, i32 (%struct.dvb_frontend.0*, i8*)** %20, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = bitcast %struct.dvb_frontend* %22 to %struct.dvb_frontend.0*
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 %21(%struct.dvb_frontend.0* %23, i8* %24)
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
