; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_af_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_af_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.s5c73m3_ctrls }
%struct.s5c73m3_ctrls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@COMM_AF_CON = common dso_local global i32 0, align 4
@COMM_AF_CON_STOP = common dso_local global i32 0, align 4
@COMM_AF_MODE = common dso_local global i32 0, align 4
@COMM_AF_MODE_PREVIEW_CAF_START = common dso_local global i32 0, align 4
@COMM_AF_CON_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, i32)* @s5c73m3_af_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_af_run(%struct.s5c73m3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5c73m3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5c73m3_ctrls*, align 8
  store %struct.s5c73m3* %0, %struct.s5c73m3** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %8 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %7, i32 0, i32 0
  store %struct.s5c73m3_ctrls* %8, %struct.s5c73m3_ctrls** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %13 = load i32, i32* @COMM_AF_CON, align 4
  %14 = load i32, i32* @COMM_AF_CON_STOP, align 4
  %15 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %12, i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.s5c73m3_ctrls*, %struct.s5c73m3_ctrls** %6, align 8
  %18 = getelementptr inbounds %struct.s5c73m3_ctrls, %struct.s5c73m3_ctrls* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %25 = load i32, i32* @COMM_AF_MODE, align 4
  %26 = load i32, i32* @COMM_AF_MODE_PREVIEW_CAF_START, align 4
  %27 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.s5c73m3*, %struct.s5c73m3** %4, align 8
  %30 = load i32, i32* @COMM_AF_CON, align 4
  %31 = load i32, i32* @COMM_AF_CON_START, align 4
  %32 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %23, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
