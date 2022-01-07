; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Firmware load not allowed (interface is down)\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Flashing firmware file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_load_fw(%struct.be_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @netif_running(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENETDOWN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @request_firmware(%struct.firmware** %6, i32* %22, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %56

31:                                               ; preds = %21
  %32 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  %38 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %39 = call i64 @lancer_chip(%struct.be_adapter* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %43 = load %struct.firmware*, %struct.firmware** %6, align 8
  %44 = call i32 @lancer_fw_download(%struct.be_adapter* %42, %struct.firmware* %43)
  store i32 %44, i32* %7, align 4
  br label %49

45:                                               ; preds = %31
  %46 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %47 = load %struct.firmware*, %struct.firmware** %6, align 8
  %48 = call i32 @be_fw_download(%struct.be_adapter* %46, %struct.firmware* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %54 = call i32 @be_cmd_get_fw_ver(%struct.be_adapter* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.firmware*, %struct.firmware** %6, align 8
  %58 = call i32 @release_firmware(%struct.firmware* %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @lancer_fw_download(%struct.be_adapter*, %struct.firmware*) #1

declare dso_local i32 @be_fw_download(%struct.be_adapter*, %struct.firmware*) #1

declare dso_local i32 @be_cmd_get_fw_ver(%struct.be_adapter*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
