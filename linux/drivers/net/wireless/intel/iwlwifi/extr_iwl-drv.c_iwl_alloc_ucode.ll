; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_alloc_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_alloc_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.fw_desc* }
%struct.fw_desc = type { i32 }
%struct.iwl_firmware_pieces = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, %struct.iwl_firmware_pieces*, i32)* @iwl_alloc_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_alloc_ucode(%struct.iwl_drv* %0, %struct.iwl_firmware_pieces* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_drv*, align 8
  %6 = alloca %struct.iwl_firmware_pieces*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_desc*, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %5, align 8
  store %struct.iwl_firmware_pieces* %1, %struct.iwl_firmware_pieces** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_firmware_pieces, %struct.iwl_firmware_pieces* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.fw_desc* @kcalloc(i32 %17, i32 4, i32 %18)
  store %struct.fw_desc* %19, %struct.fw_desc** %9, align 8
  %20 = load %struct.fw_desc*, %struct.fw_desc** %9, align 8
  %21 = icmp ne %struct.fw_desc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %82

25:                                               ; preds = %3
  %26 = load %struct.fw_desc*, %struct.fw_desc** %9, align 8
  %27 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store %struct.fw_desc* %26, %struct.fw_desc** %34, align 8
  %35 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_firmware_pieces, %struct.iwl_firmware_pieces* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %42, i32* %50, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %78, %25
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_firmware_pieces, %struct.iwl_firmware_pieces* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %52, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %51
  %63 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %64 = load %struct.fw_desc*, %struct.fw_desc** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %64, i64 %66
  %68 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @get_sec(%struct.iwl_firmware_pieces* %68, i32 %69, i32 %70)
  %72 = call i64 @iwl_alloc_fw_desc(%struct.iwl_drv* %63, %struct.fw_desc* %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %82

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %51

81:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %74, %22
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.fw_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @iwl_alloc_fw_desc(%struct.iwl_drv*, %struct.fw_desc*, i32) #1

declare dso_local i32 @get_sec(%struct.iwl_firmware_pieces*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
