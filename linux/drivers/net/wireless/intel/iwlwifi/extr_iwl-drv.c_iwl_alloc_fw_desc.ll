; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_alloc_fw_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_alloc_fw_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { i32 }
%struct.fw_desc = type { i32*, i32, i32 }
%struct.fw_sec = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, %struct.fw_desc*, %struct.fw_sec*)* @iwl_alloc_fw_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_alloc_fw_desc(%struct.iwl_drv* %0, %struct.fw_desc* %1, %struct.fw_sec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_drv*, align 8
  %6 = alloca %struct.fw_desc*, align 8
  %7 = alloca %struct.fw_sec*, align 8
  %8 = alloca i8*, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %5, align 8
  store %struct.fw_desc* %1, %struct.fw_desc** %6, align 8
  store %struct.fw_sec* %2, %struct.fw_sec** %7, align 8
  %9 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %10 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.fw_sec*, %struct.fw_sec** %7, align 8
  %12 = icmp ne %struct.fw_sec* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.fw_sec*, %struct.fw_sec** %7, align 8
  %15 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %13
  %22 = load %struct.fw_sec*, %struct.fw_sec** %7, align 8
  %23 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @vmalloc(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %54

31:                                               ; preds = %21
  %32 = load %struct.fw_sec*, %struct.fw_sec** %7, align 8
  %33 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %36 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fw_sec*, %struct.fw_sec** %7, align 8
  %38 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %41 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.fw_sec*, %struct.fw_sec** %7, align 8
  %44 = getelementptr inbounds %struct.fw_sec, %struct.fw_sec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %47 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i8* %42, i32 %45, i32 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.fw_desc*, %struct.fw_desc** %6, align 8
  %53 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %52, i32 0, i32 0
  store i32* %51, i32** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %31, %28, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
