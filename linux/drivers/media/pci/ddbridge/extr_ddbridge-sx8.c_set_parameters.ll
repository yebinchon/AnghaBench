; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.sx8* }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.sx8 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SX8_TSCONFIG_MODE_NORMAL = common dso_local global i32 0, align 4
@NO_STREAM_ID_FILTER = common dso_local global i32 0, align 4
@SX8_TSCONFIG_TSHEADER = common dso_local global i32 0, align 4
@SX8_TSCONFIG_MODE_IQ = common dso_local global i32 0, align 4
@SX8_DEMOD_WAIT_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sx8*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.sx8*, %struct.sx8** %11, align 8
  store %struct.sx8* %12, %struct.sx8** %4, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  store %struct.dtv_frontend_properties* %14, %struct.dtv_frontend_properties** %5, align 8
  %15 = load i32, i32* @SX8_TSCONFIG_MODE_NORMAL, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.sx8*, %struct.sx8** %4, align 8
  %17 = getelementptr inbounds %struct.sx8, %struct.sx8* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %22 = call i32 @stop(%struct.dvb_frontend* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NO_STREAM_ID_FILTER, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 805306368
  %33 = ashr i32 %32, 28
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @SX8_TSCONFIG_TSHEADER, align 4
  %39 = load i32, i32* @SX8_TSCONFIG_MODE_IQ, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %50 [
    i32 128, label %48
    i32 129, label %49
  ]

48:                                               ; preds = %44
  store i32 15, i32* %9, align 4
  br label %51

49:                                               ; preds = %44
  store i32 7, i32* %9, align 4
  br label %51

50:                                               ; preds = %44
  store i32 3, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %49, %48
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @start(%struct.dvb_frontend* %52, i32 3, i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %41
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @start_iq(%struct.dvb_frontend* %57, i32 0, i32 4, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load %struct.sx8*, %struct.sx8** %4, align 8
  %65 = getelementptr inbounds %struct.sx8, %struct.sx8* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.sx8*, %struct.sx8** %4, align 8
  %67 = getelementptr inbounds %struct.sx8, %struct.sx8* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @SX8_DEMOD_WAIT_SIGNAL, align 4
  %69 = load %struct.sx8*, %struct.sx8** %4, align 8
  %70 = getelementptr inbounds %struct.sx8, %struct.sx8* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %60
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @stop(%struct.dvb_frontend*) #1

declare dso_local i32 @start(%struct.dvb_frontend*, i32, i32, i32) #1

declare dso_local i32 @start_iq(%struct.dvb_frontend*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
