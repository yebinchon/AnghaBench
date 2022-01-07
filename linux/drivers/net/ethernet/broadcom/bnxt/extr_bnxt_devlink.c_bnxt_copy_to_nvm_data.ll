; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_copy_to_nvm_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_copy_to_nvm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bnxt_nvm_data = type { i32 }
%union.devlink_param_value = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.bnxt_nvm_data*, %union.devlink_param_value*, i32, i32)* @bnxt_copy_to_nvm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_copy_to_nvm_data(%union.bnxt_nvm_data* %0, %union.devlink_param_value* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.bnxt_nvm_data*, align 8
  %6 = alloca %union.devlink_param_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %union.bnxt_nvm_data* %0, %union.bnxt_nvm_data** %5, align 8
  store %union.devlink_param_value* %1, %union.devlink_param_value** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %union.devlink_param_value*, %union.devlink_param_value** %6, align 8
  %14 = bitcast %union.devlink_param_value* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %5, align 8
  %17 = bitcast %union.bnxt_nvm_data* %16 to i32*
  store i32 %15, i32* %17, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %union.devlink_param_value*, %union.devlink_param_value** %6, align 8
  %23 = bitcast %union.devlink_param_value* %22 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  br label %41

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %union.devlink_param_value*, %union.devlink_param_value** %6, align 8
  %30 = bitcast %union.devlink_param_value* %29 to i64*
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  br label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %union.devlink_param_value*, %union.devlink_param_value** %6, align 8
  %37 = bitcast %union.devlink_param_value* %36 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @cpu_to_le32(i64 %42)
  %44 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %5, align 8
  %45 = bitcast %union.bnxt_nvm_data* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
