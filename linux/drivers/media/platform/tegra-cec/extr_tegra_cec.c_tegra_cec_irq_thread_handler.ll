; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/tegra-cec/extr_tegra_cec.c_tegra_cec_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_cec = type { i32, i32, i64, i32, i32, i32 }
%struct.cec_msg = type { i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_cec_irq_thread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_cec_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tegra_cec*, align 8
  %7 = alloca %struct.cec_msg, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.device*
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.tegra_cec* @dev_get_drvdata(%struct.device* %10)
  store %struct.tegra_cec* %11, %struct.tegra_cec** %6, align 8
  %12 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %13 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cec_transmit_attempt_done(i32 %19, i32 %22)
  %24 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %28 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = bitcast %struct.cec_msg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 16, i1 false)
  %33 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memcpy(i32 %38, i32 %41, i64 %43)
  %45 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %46 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cec_received_msg(i32 %47, %struct.cec_msg* %7)
  %49 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %50 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.tegra_cec*, %struct.tegra_cec** %6, align 8
  %52 = getelementptr inbounds %struct.tegra_cec, %struct.tegra_cec* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %31, %26
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local %struct.tegra_cec* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cec_transmit_attempt_done(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @cec_received_msg(i32, %struct.cec_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
