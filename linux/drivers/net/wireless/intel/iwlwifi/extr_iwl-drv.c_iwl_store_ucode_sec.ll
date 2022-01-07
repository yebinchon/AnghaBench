; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_store_ucode_sec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_store_ucode_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_firmware_pieces = type { %struct.fw_img_parsing* }
%struct.fw_img_parsing = type { i32, %struct.fw_sec* }
%struct.fw_sec = type { i32, i32, i32 }
%struct.fw_sec_parsing = type { i32, i32 }

@IWL_UCODE_TYPE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_firmware_pieces*, i8*, i32, i32)* @iwl_store_ucode_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_store_ucode_sec(%struct.iwl_firmware_pieces* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_firmware_pieces*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_img_parsing*, align 8
  %11 = alloca %struct.fw_sec*, align 8
  %12 = alloca %struct.fw_sec_parsing*, align 8
  %13 = alloca i64, align 8
  store %struct.iwl_firmware_pieces* %0, %struct.iwl_firmware_pieces** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %15 = icmp ne %struct.iwl_firmware_pieces* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IWL_UCODE_TYPE_MAX, align 4
  %22 = icmp uge i32 %20, %21
  br label %23

23:                                               ; preds = %19, %16, %4
  %24 = phi i1 [ true, %16 ], [ true, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %88

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.fw_sec_parsing*
  store %struct.fw_sec_parsing* %31, %struct.fw_sec_parsing** %12, align 8
  %32 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_firmware_pieces, %struct.iwl_firmware_pieces* %32, i32 0, i32 0
  %34 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %34, i64 %36
  store %struct.fw_img_parsing* %37, %struct.fw_img_parsing** %10, align 8
  %38 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %39 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 12, %42
  store i64 %43, i64* %13, align 8
  %44 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %45 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %44, i32 0, i32 1
  %46 = load %struct.fw_sec*, %struct.fw_sec** %45, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.fw_sec* @krealloc(%struct.fw_sec* %46, i64 %47, i32 %48)
  store %struct.fw_sec* %49, %struct.fw_sec** %11, align 8
  %50 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %51 = icmp ne %struct.fw_sec* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %29
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %88

55:                                               ; preds = %29
  %56 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %57 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %58 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %57, i32 0, i32 1
  store %struct.fw_sec* %56, %struct.fw_sec** %58, align 8
  %59 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %60 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %59, i32 0, i32 1
  %61 = load %struct.fw_sec*, %struct.fw_sec** %60, align 8
  %62 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %63 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %61, i64 %65
  store %struct.fw_sec* %66, %struct.fw_sec** %11, align 8
  %67 = load %struct.fw_sec_parsing*, %struct.fw_sec_parsing** %12, align 8
  %68 = getelementptr inbounds %struct.fw_sec_parsing, %struct.fw_sec_parsing* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %72 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fw_sec_parsing*, %struct.fw_sec_parsing** %12, align 8
  %74 = getelementptr inbounds %struct.fw_sec_parsing, %struct.fw_sec_parsing* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %77 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = load %struct.fw_sec*, %struct.fw_sec** %11, align 8
  %83 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %10, align 8
  %85 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %55, %52, %28
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.fw_sec* @krealloc(%struct.fw_sec*, i64, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
