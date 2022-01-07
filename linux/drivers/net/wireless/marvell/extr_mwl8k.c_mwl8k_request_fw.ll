; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_request_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_request_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mwl8k_fw_state_machine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl8k_priv*, i8*, %struct.firmware**, i32)* @mwl8k_request_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_request_fw(%struct.mwl8k_priv* %0, i8* %1, %struct.firmware** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl8k_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.firmware**, align 8
  %9 = alloca i32, align 4
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.firmware** %2, %struct.firmware*** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %11 = load %struct.firmware*, %struct.firmware** %10, align 8
  %12 = icmp ne %struct.firmware* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %15 = call i32 @mwl8k_release_fw(%struct.firmware** %14)
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* @THIS_MODULE, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %23 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %28 = load i32, i32* @mwl8k_fw_state_machine, align 4
  %29 = call i32 @request_firmware_nowait(i32 %20, i32 1, i8* %21, i32* %25, i32 %26, %struct.mwl8k_priv* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %16
  %31 = load %struct.firmware**, %struct.firmware*** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %34 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @request_firmware(%struct.firmware** %31, i8* %32, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mwl8k_release_fw(%struct.firmware**) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, %struct.mwl8k_priv*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
