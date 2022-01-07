; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ddb_input* }
%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i64, %struct.ddb_dvb*, %struct.ddb* }
%struct.ddb_dvb = type { i32, i32, i32 }
%struct.ddb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@old_quattro = common dso_local global i32 0, align 4
@SEC_TONE_ON = common dso_local global i32 0, align 4
@SEC_VOLTAGE_18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @max_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_input*, align 8
  %6 = alloca %struct.ddb_port*, align 8
  %7 = alloca %struct.ddb*, align 8
  %8 = alloca %struct.ddb_dvb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.ddb_input*, %struct.ddb_input** %13, align 8
  store %struct.ddb_input* %14, %struct.ddb_input** %5, align 8
  %15 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %16 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %15, i32 0, i32 1
  %17 = load %struct.ddb_port*, %struct.ddb_port** %16, align 8
  store %struct.ddb_port* %17, %struct.ddb_port** %6, align 8
  %18 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %19 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %18, i32 0, i32 2
  %20 = load %struct.ddb*, %struct.ddb** %19, align 8
  store %struct.ddb* %20, %struct.ddb** %7, align 8
  %21 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %22 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %21, i32 0, i32 1
  %23 = load %struct.ddb_dvb*, %struct.ddb_dvb** %22, align 8
  %24 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %25 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %23, i64 %28
  store %struct.ddb_dvb* %29, %struct.ddb_dvb** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %30 = load %struct.ddb*, %struct.ddb** %7, align 8
  %31 = getelementptr inbounds %struct.ddb, %struct.ddb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %34 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ddb*, %struct.ddb** %7, align 8
  %41 = getelementptr inbounds %struct.ddb, %struct.ddb* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %44 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %52 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %54 [
    i32 0, label %55
    i32 3, label %55
    i32 1, label %65
    i32 2, label %65
  ]

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %2, %2, %54
  %56 = load %struct.ddb*, %struct.ddb** %7, align 8
  %57 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %58 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %61 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @lnb_set_tone(%struct.ddb* %56, i64 %59, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %110

65:                                               ; preds = %2, %2
  %66 = load i32, i32* @old_quattro, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %70 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SEC_TONE_ON, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, 2
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %79 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %77
  br label %106

87:                                               ; preds = %65
  %88 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %89 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SEC_TONE_ON, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %87
  %97 = load %struct.ddb_dvb*, %struct.ddb_dvb** %8, align 8
  %98 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, 2
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @max_set_input_unlocked(%struct.dvb_frontend* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %55
  %111 = load %struct.ddb*, %struct.ddb** %7, align 8
  %112 = getelementptr inbounds %struct.ddb, %struct.ddb* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %115 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lnb_set_tone(%struct.ddb*, i64, i32, i32) #1

declare dso_local i32 @max_set_input_unlocked(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
