; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_submit_admin_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_submit_admin_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i32 }
%struct.ena_com_admin_queue = type { i32, i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ena_comp_ctx* (%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i64, %struct.ena_admin_acq_entry*, i64)* @ena_com_submit_admin_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ena_comp_ctx* @ena_com_submit_admin_cmd(%struct.ena_com_admin_queue* %0, %struct.ena_admin_aq_entry* %1, i64 %2, %struct.ena_admin_acq_entry* %3, i64 %4) #0 {
  %6 = alloca %struct.ena_comp_ctx*, align 8
  %7 = alloca %struct.ena_com_admin_queue*, align 8
  %8 = alloca %struct.ena_admin_aq_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ena_admin_acq_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ena_comp_ctx*, align 8
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %7, align 8
  store %struct.ena_admin_aq_entry* %1, %struct.ena_admin_aq_entry** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ena_admin_acq_entry* %3, %struct.ena_admin_acq_entry** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %15 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %12, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %19 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %28 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %27, i32 0, i32 1
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.ena_comp_ctx* @ERR_PTR(i32 %32)
  store %struct.ena_comp_ctx* %33, %struct.ena_comp_ctx** %6, align 8
  br label %53

34:                                               ; preds = %5
  %35 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %36 = load %struct.ena_admin_aq_entry*, %struct.ena_admin_aq_entry** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.ena_admin_acq_entry*, %struct.ena_admin_acq_entry** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call %struct.ena_comp_ctx* @__ena_com_submit_admin_cmd(%struct.ena_com_admin_queue* %35, %struct.ena_admin_aq_entry* %36, i64 %37, %struct.ena_admin_acq_entry* %38, i64 %39)
  store %struct.ena_comp_ctx* %40, %struct.ena_comp_ctx** %13, align 8
  %41 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %13, align 8
  %42 = call i64 @IS_ERR(%struct.ena_comp_ctx* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %46 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %7, align 8
  %49 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %48, i32 0, i32 1
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %13, align 8
  store %struct.ena_comp_ctx* %52, %struct.ena_comp_ctx** %6, align 8
  br label %53

53:                                               ; preds = %47, %26
  %54 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %6, align 8
  ret %struct.ena_comp_ctx* %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ena_comp_ctx* @ERR_PTR(i32) #1

declare dso_local %struct.ena_comp_ctx* @__ena_com_submit_admin_cmd(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i64, %struct.ena_admin_acq_entry*, i64) #1

declare dso_local i64 @IS_ERR(%struct.ena_comp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
