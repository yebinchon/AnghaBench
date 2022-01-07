; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_init.c_iwl_fw_runtime_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_init.c_iwl_fw_runtime_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__, i8*, %struct.iwl_fw_runtime_ops*, i32, %struct.iwl_fw*, %struct.iwl_trans* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwl_trans = type { i32 }
%struct.iwl_fw = type { i32 }
%struct.iwl_fw_runtime_ops = type { i32 }
%struct.dentry = type { i32 }

@FW_DBG_INVALID = common dso_local global i32 0, align 4
@IWL_FW_RUNTIME_DUMP_WK_NUM = common dso_local global i32 0, align 4
@iwl_fw_error_dump_wk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_fw_runtime_init(%struct.iwl_fw_runtime* %0, %struct.iwl_trans* %1, %struct.iwl_fw* %2, %struct.iwl_fw_runtime_ops* %3, i8* %4, %struct.dentry* %5) #0 {
  %7 = alloca %struct.iwl_fw_runtime*, align 8
  %8 = alloca %struct.iwl_trans*, align 8
  %9 = alloca %struct.iwl_fw*, align 8
  %10 = alloca %struct.iwl_fw_runtime_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %7, align 8
  store %struct.iwl_trans* %1, %struct.iwl_trans** %8, align 8
  store %struct.iwl_fw* %2, %struct.iwl_fw** %9, align 8
  store %struct.iwl_fw_runtime_ops* %3, %struct.iwl_fw_runtime_ops** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.dentry* %5, %struct.dentry** %12, align 8
  %14 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %15 = call i32 @memset(%struct.iwl_fw_runtime* %14, i32 0, i32 56)
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %17, i32 0, i32 5
  store %struct.iwl_trans* %16, %struct.iwl_trans** %18, align 8
  %19 = load %struct.iwl_fw*, %struct.iwl_fw** %9, align 8
  %20 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %20, i32 0, i32 4
  store %struct.iwl_fw* %19, %struct.iwl_fw** %21, align 8
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @FW_DBG_INVALID, align 4
  %28 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.iwl_fw_runtime_ops*, %struct.iwl_fw_runtime_ops** %10, align 8
  %32 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %32, i32 0, i32 2
  store %struct.iwl_fw_runtime_ops* %31, %struct.iwl_fw_runtime_ops** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %61, %6
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @IWL_FW_RUNTIME_DUMP_WK_NUM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %42, i32* %50, align 4
  %51 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* @iwl_fw_error_dump_wk, align 4
  %60 = call i32 @INIT_DELAYED_WORK(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %66 = load %struct.dentry*, %struct.dentry** %12, align 8
  %67 = call i32 @iwl_fwrt_dbgfs_register(%struct.iwl_fw_runtime* %65, %struct.dentry* %66)
  ret void
}

declare dso_local i32 @memset(%struct.iwl_fw_runtime*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @iwl_fwrt_dbgfs_register(%struct.iwl_fw_runtime*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
