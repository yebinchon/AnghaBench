; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_output_update_pong_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_output_update_pong_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32, i64)* }
%struct.vfe_output = type { i32, i32*, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_output*, i64)* @vfe_output_update_pong_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_output_update_pong_addr(%struct.vfe_device* %0, %struct.vfe_output* %1, i64 %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca %struct.vfe_output*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store %struct.vfe_output* %1, %struct.vfe_output** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %69, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %12 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %9
  %16 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %17 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %24 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  br label %35

34:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %37 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32 (%struct.vfe_device*, i32, i64)*, i32 (%struct.vfe_device*, i32, i64)** %39, align 8
  %41 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %42 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %43 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 %40(%struct.vfe_device* %41, i32 %48, i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %35
  %54 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %55 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.vfe_device*, i32)*, i32 (%struct.vfe_device*, i32)** %57, align 8
  %59 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %60 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %61 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %58(%struct.vfe_device* %59, i32 %66)
  br label %68

68:                                               ; preds = %53, %35
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %9

72:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
