; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_dvb_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-dvb.c_cx23885_dvb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_tsport = type { i32*, i32, %struct.TYPE_8__*, %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_dvb_frontend = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_dvb_unregister(%struct.cx23885_tsport* %0) #0 {
  %2 = alloca %struct.cx23885_tsport*, align 8
  %3 = alloca %struct.vb2_dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.cx23885_tsport* %0, %struct.cx23885_tsport** %2, align 8
  %5 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %6 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %5, i32 0, i32 7
  %7 = call %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32* %6, i32 1)
  store %struct.vb2_dvb_frontend* %7, %struct.vb2_dvb_frontend** %3, align 8
  %8 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %3, align 8
  %9 = icmp ne %struct.vb2_dvb_frontend* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.vb2_dvb_frontend*, %struct.vb2_dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_dvb_frontend, %struct.vb2_dvb_frontend* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %18 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %17, i32 0, i32 7
  %19 = call i32 @vb2_dvb_unregister_bus(i32* %18)
  br label %20

20:                                               ; preds = %16, %10, %1
  %21 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %22 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %21, i32 0, i32 6
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %4, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = icmp ne %struct.i2c_client* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @module_put(i32 %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @i2c_unregister_device(%struct.i2c_client* %34)
  br label %36

36:                                               ; preds = %26, %20
  %37 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %38 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %37, i32 0, i32 5
  %39 = load %struct.i2c_client*, %struct.i2c_client** %38, align 8
  store %struct.i2c_client* %39, %struct.i2c_client** %4, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = icmp ne %struct.i2c_client* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @module_put(i32 %48)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call i32 @i2c_unregister_device(%struct.i2c_client* %50)
  br label %52

52:                                               ; preds = %42, %36
  %53 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %54 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %53, i32 0, i32 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %54, align 8
  store %struct.i2c_client* %55, %struct.i2c_client** %4, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = icmp ne %struct.i2c_client* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @module_put(i32 %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = call i32 @i2c_unregister_device(%struct.i2c_client* %66)
  br label %68

68:                                               ; preds = %58, %52
  %69 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %70 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %69, i32 0, i32 3
  %71 = load %struct.i2c_client*, %struct.i2c_client** %70, align 8
  store %struct.i2c_client* %71, %struct.i2c_client** %4, align 8
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = icmp ne %struct.i2c_client* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @module_put(i32 %80)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = call i32 @i2c_unregister_device(%struct.i2c_client* %82)
  br label %84

84:                                               ; preds = %74, %68
  %85 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %86 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %101 [
    i32 129, label %90
    i32 128, label %93
  ]

90:                                               ; preds = %84
  %91 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %92 = call i32 @netup_ci_exit(%struct.cx23885_tsport* %91)
  br label %101

93:                                               ; preds = %84
  %94 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %95 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %98 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @altera_ci_release(%struct.TYPE_8__* %96, i32 %99)
  br label %101

101:                                              ; preds = %84, %93, %90
  %102 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %103 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  ret i32 0
}

declare dso_local %struct.vb2_dvb_frontend* @vb2_dvb_get_frontend(i32*, i32) #1

declare dso_local i32 @vb2_dvb_unregister_bus(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @netup_ci_exit(%struct.cx23885_tsport*) #1

declare dso_local i32 @altera_ci_release(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
