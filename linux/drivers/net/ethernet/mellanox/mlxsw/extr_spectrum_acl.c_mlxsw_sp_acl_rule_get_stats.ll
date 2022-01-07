; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i8*, i8*, i8* }
%struct.mlxsw_sp_acl_rule_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_rule_get_stats(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp_acl_rule* %1, %struct.mlxsw_sp_acl_rule** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %17 = call %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_rule* %16)
  store %struct.mlxsw_sp_acl_rule_info* %17, %struct.mlxsw_sp_acl_rule_info** %12, align 8
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %19 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %12, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlxsw_sp_flow_counter_get(%struct.mlxsw_sp* %18, i32 %21, i8** %13, i8** %14)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %6, align 4
  br label %56

27:                                               ; preds = %5
  %28 = load i8*, i8** %13, align 8
  %29 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %9, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %37 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = inttoptr i64 %43 to i8*
  %45 = load i8**, i8*** %10, align 8
  store i8* %44, i8** %45, align 8
  %46 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %11, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %27, %25
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_flow_counter_get(%struct.mlxsw_sp*, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
