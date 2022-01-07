; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_init_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_init_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vfe_output }
%struct.vfe_output = type { i32, i32**, i32 }

@VFE_OUTPUT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*)* @vfe_init_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_init_outputs(%struct.vfe_device* %0) #0 {
  %2 = alloca %struct.vfe_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfe_output*, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %8 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %9)
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %5
  %13 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.vfe_output* %19, %struct.vfe_output** %4, align 8
  %20 = load i32, i32* @VFE_OUTPUT_OFF, align 4
  %21 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %22 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %24 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %28 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %32 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %31, i32 0, i32 0
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  br label %34

34:                                               ; preds = %12
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
