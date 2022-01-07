; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_dvb_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc2580.c_fc2580_dvb_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.fc2580_dev* }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.fc2580_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @fc2580_dvb_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc2580_dvb_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.fc2580_dev*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.fc2580_dev*, %struct.fc2580_dev** %6, align 8
  store %struct.fc2580_dev* %7, %struct.fc2580_dev** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %4, align 8
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %14 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %19 = getelementptr inbounds %struct.fc2580_dev, %struct.fc2580_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fc2580_dev*, %struct.fc2580_dev** %3, align 8
  %21 = call i32 @fc2580_set_params(%struct.fc2580_dev* %20)
  ret i32 %21
}

declare dso_local i32 @fc2580_set_params(%struct.fc2580_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
