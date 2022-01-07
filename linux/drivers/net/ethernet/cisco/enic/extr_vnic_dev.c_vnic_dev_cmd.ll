; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32, i32 }

@CMD_PROXY_BY_INDEX = common dso_local global i32 0, align 4
@CMD_PROXY_BY_BDF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_cmd(%struct.vnic_dev* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnic_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %13 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %17 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %36 [
    i32 129, label %19
    i32 130, label %27
    i32 128, label %35
  ]

19:                                               ; preds = %5
  %20 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %21 = load i32, i32* @CMD_PROXY_BY_INDEX, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @vnic_dev_cmd_proxy(%struct.vnic_dev* %20, i32 %21, i32 %22, i32* %23, i32* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %43

27:                                               ; preds = %5
  %28 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %29 = load i32, i32* @CMD_PROXY_BY_BDF, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @vnic_dev_cmd_proxy(%struct.vnic_dev* %28, i32 %29, i32 %30, i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %43

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %5, %35
  %37 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @vnic_dev_cmd_no_proxy(%struct.vnic_dev* %37, i32 %38, i32* %39, i32* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %27, %19
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @vnic_dev_cmd_proxy(%struct.vnic_dev*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @vnic_dev_cmd_no_proxy(%struct.vnic_dev*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
