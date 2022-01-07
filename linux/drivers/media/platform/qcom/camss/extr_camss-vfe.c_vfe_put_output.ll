; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_put_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_put_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { %struct.vfe_output }
%struct.vfe_output = type { i32, i32, i32* }
%struct.vfe_device = type { i32 }

@VFE_OUTPUT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfe_line*)* @vfe_put_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_put_output(%struct.vfe_line* %0) #0 {
  %2 = alloca %struct.vfe_line*, align 8
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca %struct.vfe_output*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.vfe_line* %0, %struct.vfe_line** %2, align 8
  %7 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %8 = call %struct.vfe_device* @to_vfe(%struct.vfe_line* %7)
  store %struct.vfe_device* %8, %struct.vfe_device** %3, align 8
  %9 = load %struct.vfe_line*, %struct.vfe_line** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_line, %struct.vfe_line* %9, i32 0, i32 0
  store %struct.vfe_output* %10, %struct.vfe_output** %4, align 8
  %11 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %12 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %31, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %18 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %23 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %24 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vfe_release_wm(%struct.vfe_device* %22, i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* @VFE_OUTPUT_OFF, align 4
  %36 = load %struct.vfe_output*, %struct.vfe_output** %4, align 8
  %37 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %39 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret i32 0
}

declare dso_local %struct.vfe_device* @to_vfe(%struct.vfe_line*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vfe_release_wm(%struct.vfe_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
