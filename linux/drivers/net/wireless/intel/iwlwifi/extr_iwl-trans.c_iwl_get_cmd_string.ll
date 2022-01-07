; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.c_iwl_get_cmd_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.c_iwl_get_cmd_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i64, %struct.iwl_hcmd_arr* }
%struct.iwl_hcmd_arr = type { i32, i32 }
%struct.iwl_hcmd_names = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@iwl_hcmd_names_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iwl_get_cmd_string(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_hcmd_names*, align 8
  %9 = alloca %struct.iwl_hcmd_arr*, align 8
  %10 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 8, i64* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @iwl_cmd_groupid(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @iwl_cmd_opcode(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 1
  %17 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %16, align 8
  %18 = icmp ne %struct.iwl_hcmd_arr* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %26, i32 0, i32 1
  %28 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %28, i64 %29
  %31 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25, %19, %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %57

35:                                               ; preds = %25
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 1
  %38 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %38, i64 %39
  store %struct.iwl_hcmd_arr* %40, %struct.iwl_hcmd_arr** %9, align 8
  %41 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %9, align 8
  %42 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %9, align 8
  %45 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @iwl_hcmd_names_cmp, align 4
  %49 = call %struct.iwl_hcmd_names* @bsearch(i64* %7, i32 %43, i32 %46, i64 %47, i32 %48)
  store %struct.iwl_hcmd_names* %49, %struct.iwl_hcmd_names** %8, align 8
  %50 = load %struct.iwl_hcmd_names*, %struct.iwl_hcmd_names** %8, align 8
  %51 = icmp ne %struct.iwl_hcmd_names* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %57

53:                                               ; preds = %35
  %54 = load %struct.iwl_hcmd_names*, %struct.iwl_hcmd_names** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_hcmd_names, %struct.iwl_hcmd_names* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %53, %52, %34
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i64 @iwl_cmd_groupid(i32) #1

declare dso_local i64 @iwl_cmd_opcode(i32) #1

declare dso_local %struct.iwl_hcmd_names* @bsearch(i64*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
