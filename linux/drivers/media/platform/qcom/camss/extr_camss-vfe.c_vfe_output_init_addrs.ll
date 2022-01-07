; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_output_init_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_output_init_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32, i64)*, i32 (%struct.vfe_device*, i32, i64)* }
%struct.vfe_output = type { i32, i32*, %struct.TYPE_3__**, i64 }
%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_output*, i64)* @vfe_output_init_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_output_init_addrs(%struct.vfe_device* %0, %struct.vfe_output* %1, i64 %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca %struct.vfe_output*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store %struct.vfe_output* %1, %struct.vfe_output** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %11 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %108, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %15 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %111

18:                                               ; preds = %12
  %19 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %20 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %27 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  br label %38

37:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %40 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %41, i64 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %47 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %8, align 8
  br label %59

57:                                               ; preds = %38
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %57, %45
  %60 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %61 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32 (%struct.vfe_device*, i32, i64)*, i32 (%struct.vfe_device*, i32, i64)** %63, align 8
  %65 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %66 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %67 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 %64(%struct.vfe_device* %65, i32 %72, i64 %73)
  %75 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %76 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32 (%struct.vfe_device*, i32, i64)*, i32 (%struct.vfe_device*, i32, i64)** %78, align 8
  %80 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %81 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %82 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %8, align 8
  %89 = call i32 %79(%struct.vfe_device* %80, i32 %87, i64 %88)
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %59
  %93 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %94 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32)** %96, align 8
  %98 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %99 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %100 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 %97(%struct.vfe_device* %98, i32 %105)
  br label %107

107:                                              ; preds = %92, %59
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %12

111:                                              ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
