; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_copy_from_nvm_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_copy_from_nvm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.devlink_param_value = type { i64 }
%union.bnxt_nvm_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.devlink_param_value*, %union.bnxt_nvm_data*, i32, i32)* @bnxt_copy_from_nvm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_copy_from_nvm_data(%union.devlink_param_value* %0, %union.bnxt_nvm_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.devlink_param_value*, align 8
  %6 = alloca %union.bnxt_nvm_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %union.devlink_param_value* %0, %union.devlink_param_value** %5, align 8
  store %union.bnxt_nvm_data* %1, %union.bnxt_nvm_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %6, align 8
  %14 = bitcast %union.bnxt_nvm_data* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load %union.devlink_param_value*, %union.devlink_param_value** %5, align 8
  %17 = bitcast %union.devlink_param_value* %16 to i32*
  store i32 %15, i32* %17, align 8
  br label %45

18:                                               ; preds = %4
  %19 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %6, align 8
  %20 = bitcast %union.bnxt_nvm_data* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = load %union.devlink_param_value*, %union.devlink_param_value** %5, align 8
  %28 = bitcast %union.devlink_param_value* %27 to i64*
  store i64 %26, i64* %28, align 8
  br label %45

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = load %union.devlink_param_value*, %union.devlink_param_value** %5, align 8
  %35 = bitcast %union.devlink_param_value* %34 to i64*
  store i64 %33, i64* %35, align 8
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  %41 = load %union.devlink_param_value*, %union.devlink_param_value** %5, align 8
  %42 = bitcast %union.devlink_param_value* %41 to i64*
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %12, %44, %25
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
