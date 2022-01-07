; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_init_comp_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_init_comp_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_admin_queue = type { i32, i32, i32 }
%struct.ena_comp_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_admin_queue*)* @ena_com_init_comp_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_init_comp_ctxt(%struct.ena_com_admin_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ena_comp_ctx*, align 8
  %6 = alloca i64, align 8
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %3, align 8
  %7 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  store i64 %11, i64* %4, align 8
  %12 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @devm_kzalloc(i32 %14, i64 %15, i32 %16)
  %18 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %19 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %21 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %55

32:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %36 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue* %41, i64 %42, i32 0)
  store %struct.ena_comp_ctx* %43, %struct.ena_comp_ctx** %5, align 8
  %44 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %45 = icmp ne %struct.ena_comp_ctx* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.ena_comp_ctx, %struct.ena_comp_ctx* %47, i32 0, i32 0
  %49 = call i32 @init_completion(i32* %48)
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %33

54:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @devm_kzalloc(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.ena_comp_ctx* @get_comp_ctxt(%struct.ena_com_admin_queue*, i64, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
