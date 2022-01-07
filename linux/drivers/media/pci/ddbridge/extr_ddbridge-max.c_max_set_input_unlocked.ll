; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_set_input_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_max_set_input_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ddb_input* }
%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i64, %struct.ddb_dvb*, %struct.ddb* }
%struct.ddb_dvb = type { i32, {}* }
%struct.ddb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @max_set_input_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_set_input_unlocked(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddb_input*, align 8
  %7 = alloca %struct.ddb_port*, align 8
  %8 = alloca %struct.ddb*, align 8
  %9 = alloca %struct.ddb_dvb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.ddb_input*, %struct.ddb_input** %14, align 8
  store %struct.ddb_input* %15, %struct.ddb_input** %6, align 8
  %16 = load %struct.ddb_input*, %struct.ddb_input** %6, align 8
  %17 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %16, i32 0, i32 1
  %18 = load %struct.ddb_port*, %struct.ddb_port** %17, align 8
  store %struct.ddb_port* %18, %struct.ddb_port** %7, align 8
  %19 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %20 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %19, i32 0, i32 2
  %21 = load %struct.ddb*, %struct.ddb** %20, align 8
  store %struct.ddb* %21, %struct.ddb** %8, align 8
  %22 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %23 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %22, i32 0, i32 1
  %24 = load %struct.ddb_dvb*, %struct.ddb_dvb** %23, align 8
  %25 = load %struct.ddb_input*, %struct.ddb_input** %6, align 8
  %26 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %24, i64 %29
  store %struct.ddb_dvb* %30, %struct.ddb_dvb** %9, align 8
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %119

36:                                               ; preds = %2
  %37 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %38 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %110

42:                                               ; preds = %36
  %43 = load %struct.ddb_input*, %struct.ddb_input** %6, align 8
  %44 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = shl i64 1, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ddb*, %struct.ddb** %8, align 8
  %50 = getelementptr inbounds %struct.ddb, %struct.ddb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %53 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %60 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ddb*, %struct.ddb** %8, align 8
  %71 = getelementptr inbounds %struct.ddb, %struct.ddb* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %74 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %81 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %69
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %90 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.ddb*, %struct.ddb** %8, align 8
  %93 = getelementptr inbounds %struct.ddb, %struct.ddb* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.ddb_port*, %struct.ddb_port** %7, align 8
  %96 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %103 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %91
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %42, %36
  %111 = load %struct.ddb_dvb*, %struct.ddb_dvb** %9, align 8
  %112 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %111, i32 0, i32 1
  %113 = bitcast {}** %112 to i32 (%struct.dvb_frontend*, i32)**
  %114 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %113, align 8
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 %114(%struct.dvb_frontend* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %110, %33
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
