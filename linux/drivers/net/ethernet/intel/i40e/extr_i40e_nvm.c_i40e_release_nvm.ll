; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_release_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_release_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@I40E_SUCCESS = common dso_local global i64 0, align 8
@I40E_NVM_RESOURCE_ID = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_release_nvm(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %5 = load i64, i64* @I40E_SUCCESS, align 8
  store i64 %5, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %15 = call i64 @i40e_aq_release_resource(%struct.i40e_hw* %13, i32 %14, i32 0, i32* null)
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %29, %12
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @I40E_ERR_ADMIN_QUEUE_TIMEOUT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = call i32 @usleep_range(i32 1000, i32 2000)
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %32 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %33 = call i64 @i40e_aq_release_resource(%struct.i40e_hw* %31, i32 %32, i32 0, i32* null)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %16

36:                                               ; preds = %11, %27
  ret void
}

declare dso_local i64 @i40e_aq_release_resource(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
