; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_init_paging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_paging.c_iwl_init_paging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.fw_img* }
%struct.fw_img = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to save the FW paging image\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to send the paging cmd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_init_paging(%struct.iwl_fw_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_img*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.fw_img*, %struct.fw_img** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %12, i64 %14
  store %struct.fw_img* %15, %struct.fw_img** %6, align 8
  %16 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %27 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %54

31:                                               ; preds = %25
  %32 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %33 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %34 = call i32 @iwl_save_fw_paging(%struct.iwl_fw_runtime* %32, %struct.fw_img* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %39 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %31
  %42 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %43 = load %struct.fw_img*, %struct.fw_img** %6, align 8
  %44 = call i32 @iwl_send_paging_cmd(%struct.iwl_fw_runtime* %42, %struct.fw_img* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %49 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %51 = call i32 @iwl_free_fw_paging(%struct.iwl_fw_runtime* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47, %37, %30, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @iwl_save_fw_paging(%struct.iwl_fw_runtime*, %struct.fw_img*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i32 @iwl_send_paging_cmd(%struct.iwl_fw_runtime*, %struct.fw_img*) #1

declare dso_local i32 @iwl_free_fw_paging(%struct.iwl_fw_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
