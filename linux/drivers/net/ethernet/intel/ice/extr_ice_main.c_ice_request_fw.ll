; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_request_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_request_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@ICE_DDP_PKG_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"The DDP package file was not found or could not be read. Entering Safe Mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_request_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_request_fw(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %7 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %8 = call i8* @ice_get_opt_fw_name(%struct.ice_pf* %7)
  store i8* %8, i8** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  %9 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @firmware_request_nowarn(%struct.firmware** %4, i8* %16, %struct.device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @kfree(i8* %22)
  br label %33

24:                                               ; preds = %15
  %25 = load %struct.firmware*, %struct.firmware** %4, align 8
  %26 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %27 = call i32 @ice_load_pkg(%struct.firmware* %25, %struct.ice_pf* %26)
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @kfree(i8* %28)
  %30 = load %struct.firmware*, %struct.firmware** %4, align 8
  %31 = call i32 @release_firmware(%struct.firmware* %30)
  br label %48

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* @ICE_DDP_PKG_FILE, align 4
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @request_firmware(%struct.firmware** %4, i32 %34, %struct.device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.firmware*, %struct.firmware** %4, align 8
  %44 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %45 = call i32 @ice_load_pkg(%struct.firmware* %43, %struct.ice_pf* %44)
  %46 = load %struct.firmware*, %struct.firmware** %4, align 8
  %47 = call i32 @release_firmware(%struct.firmware* %46)
  br label %48

48:                                               ; preds = %42, %39, %24
  ret void
}

declare dso_local i8* @ice_get_opt_fw_name(%struct.ice_pf*) #1

declare dso_local i32 @firmware_request_nowarn(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ice_load_pkg(%struct.firmware*, %struct.ice_pf*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
