; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_alloc_sec_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_alloc_sec_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_firmware_pieces = type { %struct.fw_img_parsing* }
%struct.fw_img_parsing = type { i32, %struct.fw_sec* }
%struct.fw_sec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_firmware_pieces*, i32, i32)* @alloc_sec_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_sec_data(%struct.iwl_firmware_pieces* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_firmware_pieces*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_img_parsing*, align 8
  %8 = alloca %struct.fw_sec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.iwl_firmware_pieces* %0, %struct.iwl_firmware_pieces** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_firmware_pieces, %struct.iwl_firmware_pieces* %11, i32 0, i32 0
  %13 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %13, i64 %15
  store %struct.fw_img_parsing* %16, %struct.fw_img_parsing** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  store i64 %21, i64* %10, align 8
  %22 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %7, align 8
  %23 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %22, i32 0, i32 1
  %24 = load %struct.fw_sec*, %struct.fw_sec** %23, align 8
  %25 = icmp ne %struct.fw_sec* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %7, align 8
  %28 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %50

33:                                               ; preds = %26, %3
  %34 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %7, align 8
  %35 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %34, i32 0, i32 1
  %36 = load %struct.fw_sec*, %struct.fw_sec** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.fw_sec* @krealloc(%struct.fw_sec* %36, i64 %37, i32 %38)
  store %struct.fw_sec* %39, %struct.fw_sec** %8, align 8
  %40 = load %struct.fw_sec*, %struct.fw_sec** %8, align 8
  %41 = icmp ne %struct.fw_sec* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %50

43:                                               ; preds = %33
  %44 = load %struct.fw_sec*, %struct.fw_sec** %8, align 8
  %45 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %7, align 8
  %46 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %45, i32 0, i32 1
  store %struct.fw_sec* %44, %struct.fw_sec** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.fw_img_parsing*, %struct.fw_img_parsing** %7, align 8
  %49 = getelementptr inbounds %struct.fw_img_parsing, %struct.fw_img_parsing* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %42, %32
  ret void
}

declare dso_local %struct.fw_sec* @krealloc(%struct.fw_sec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
