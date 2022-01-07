; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_error_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_error_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_fw_dump_desc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_fw_dbg_error_collect(%struct.iwl_fw_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_fw_dump_desc*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %8, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.iwl_fw_dump_desc* @kmalloc(i32 16, i32 %19)
  store %struct.iwl_fw_dump_desc* %20, %struct.iwl_fw_dump_desc** %7, align 8
  %21 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %22 = icmp ne %struct.iwl_fw_dump_desc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_dump_desc, %struct.iwl_fw_dump_desc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_dump_desc, %struct.iwl_fw_dump_desc* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %35 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %36 = call i32 @iwl_fw_dbg_collect_desc(%struct.iwl_fw_runtime* %34, %struct.iwl_fw_dump_desc* %35, i32 0, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %41 = call i32 @kfree(%struct.iwl_fw_dump_desc* %40)
  br label %47

42:                                               ; preds = %26
  %43 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @iwl_trans_sync_nmi(%struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %23, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.iwl_fw_dump_desc* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_fw_dbg_collect_desc(%struct.iwl_fw_runtime*, %struct.iwl_fw_dump_desc*, i32, i32) #1

declare dso_local i32 @kfree(%struct.iwl_fw_dump_desc*) #1

declare dso_local i32 @iwl_trans_sync_nmi(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
