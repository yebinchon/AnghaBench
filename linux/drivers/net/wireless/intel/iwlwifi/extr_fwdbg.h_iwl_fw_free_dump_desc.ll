; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_free_dump_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_fwdbg.h_iwl_fw_free_dump_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64*, i32* }
%struct.TYPE_3__ = type { i32 }

@iwl_dump_desc_assert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*)* @iwl_fw_free_dump_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %3 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, @iwl_dump_desc_assert
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @kfree(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %14
  %35 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
