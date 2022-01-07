; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_collect_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_collect_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.iwl_fw_dump_desc*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iwl_fw_dump_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Collecting data: trigger %d fired.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_fw_dbg_collect_desc(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_dump_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_fw_runtime*, align 8
  %7 = alloca %struct.iwl_fw_dump_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %6, align 8
  store %struct.iwl_fw_dump_desc* %1, %struct.iwl_fw_dump_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_dump_desc, %struct.iwl_fw_dump_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @iwl_trans_dbg_ini_valid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @iwl_fw_dbg_ini_collect(%struct.iwl_fw_runtime* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %30 = call i32 @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %84

33:                                               ; preds = %4
  %34 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = call i64 @test_and_set_bit(i32 %40, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %84

49:                                               ; preds = %33
  %50 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %52, align 8
  %54 = call i64 @WARN_ON(%struct.iwl_fw_dump_desc* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %58 = call i32 @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime* %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %61 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_fw_dump_desc, %struct.iwl_fw_dump_desc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %7, align 8
  %68 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store %struct.iwl_fw_dump_desc* %67, %struct.iwl_fw_dump_desc** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %73 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %6, align 8
  %76 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @usecs_to_jiffies(i32 %81)
  %83 = call i32 @schedule_delayed_work(i32* %80, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %59, %46, %31
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @iwl_trans_dbg_ini_valid(i32) #1

declare dso_local i32 @iwl_fw_dbg_ini_collect(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @WARN_ON(%struct.iwl_fw_dump_desc*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_fw_runtime*, i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
