; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_ste_branch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_ste_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32 }
%struct.mlx5dr_rule = type { %struct.mlx5dr_matcher* }
%struct.mlx5dr_matcher = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_rule_rx_tx = type { %struct.mlx5dr_matcher_rx_tx* }
%struct.mlx5dr_matcher_rx_tx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mlx5dr_domain_rx_tx* }
%struct.mlx5dr_domain_rx_tx = type { i32 }
%struct.list_head = type { i32 }
%struct.mlx5dr_ste_htbl = type { i32, %struct.mlx5dr_ste*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.list_head* }

@.str = private unnamed_addr constant [25 x i8] c"Duplicate rule inserted\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed creating rehash table, htbl-log_size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed adding collision entry, index: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_ste* (%struct.mlx5dr_rule*, %struct.mlx5dr_rule_rx_tx*, %struct.list_head*, %struct.mlx5dr_ste_htbl*, i32*, i32, %struct.mlx5dr_ste_htbl**)* @dr_rule_handle_ste_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_ste* @dr_rule_handle_ste_branch(%struct.mlx5dr_rule* %0, %struct.mlx5dr_rule_rx_tx* %1, %struct.list_head* %2, %struct.mlx5dr_ste_htbl* %3, i32* %4, i32 %5, %struct.mlx5dr_ste_htbl** %6) #0 {
  %8 = alloca %struct.mlx5dr_ste*, align 8
  %9 = alloca %struct.mlx5dr_rule*, align 8
  %10 = alloca %struct.mlx5dr_rule_rx_tx*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx5dr_ste_htbl**, align 8
  %16 = alloca %struct.mlx5dr_matcher*, align 8
  %17 = alloca %struct.mlx5dr_domain*, align 8
  %18 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %19 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %20 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %21 = alloca %struct.mlx5dr_ste*, align 8
  %22 = alloca %struct.list_head*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.mlx5dr_ste*, align 8
  %25 = alloca i32, align 4
  store %struct.mlx5dr_rule* %0, %struct.mlx5dr_rule** %9, align 8
  store %struct.mlx5dr_rule_rx_tx* %1, %struct.mlx5dr_rule_rx_tx** %10, align 8
  store %struct.list_head* %2, %struct.list_head** %11, align 8
  store %struct.mlx5dr_ste_htbl* %3, %struct.mlx5dr_ste_htbl** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.mlx5dr_ste_htbl** %6, %struct.mlx5dr_ste_htbl*** %15, align 8
  %26 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %26, i32 0, i32 0
  %28 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %27, align 8
  store %struct.mlx5dr_matcher* %28, %struct.mlx5dr_matcher** %16, align 8
  %29 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %16, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %32, align 8
  store %struct.mlx5dr_domain* %33, %struct.mlx5dr_domain** %17, align 8
  store i32 0, i32* %23, align 4
  %34 = load %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_rule_rx_tx** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, %struct.mlx5dr_rule_rx_tx* %34, i32 0, i32 0
  %36 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %35, align 8
  store %struct.mlx5dr_matcher_rx_tx* %36, %struct.mlx5dr_matcher_rx_tx** %18, align 8
  %37 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %18, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %40, align 8
  store %struct.mlx5dr_domain_rx_tx* %41, %struct.mlx5dr_domain_rx_tx** %19, align 8
  br label %42

42:                                               ; preds = %124, %7
  %43 = load i32*, i32** %13, align 8
  %44 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %45 = call i32 @mlx5dr_ste_calc_hash_index(i32* %43, %struct.mlx5dr_ste_htbl* %44)
  store i32 %45, i32* %25, align 4
  %46 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.list_head*, %struct.list_head** %49, align 8
  %51 = load i32, i32* %25, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i64 %52
  store %struct.list_head* %53, %struct.list_head** %22, align 8
  %54 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %54, i32 0, i32 1
  %56 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %55, align 8
  %57 = load i32, i32* %25, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %56, i64 %58
  store %struct.mlx5dr_ste* %59, %struct.mlx5dr_ste** %24, align 8
  %60 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %24, align 8
  %61 = call i64 @mlx5dr_ste_not_used_ste(%struct.mlx5dr_ste* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %42
  %64 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %16, align 8
  %65 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %18, align 8
  %66 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %67 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %24, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.list_head*, %struct.list_head** %22, align 8
  %71 = load %struct.list_head*, %struct.list_head** %11, align 8
  %72 = call i64 @dr_rule_handle_empty_entry(%struct.mlx5dr_matcher* %64, %struct.mlx5dr_matcher_rx_tx* %65, %struct.mlx5dr_ste_htbl* %66, %struct.mlx5dr_ste* %67, i32 %68, i32* %69, %struct.list_head* %70, %struct.list_head* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %8, align 8
  br label %143

75:                                               ; preds = %63
  br label %141

76:                                               ; preds = %42
  %77 = load %struct.list_head*, %struct.list_head** %22, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call %struct.mlx5dr_ste* @dr_rule_find_ste_in_miss_list(%struct.list_head* %77, i32* %78)
  store %struct.mlx5dr_ste* %79, %struct.mlx5dr_ste** %21, align 8
  %80 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %81 = icmp ne %struct.mlx5dr_ste* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %18, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @mlx5dr_ste_is_last_in_rule(%struct.mlx5dr_matcher_rx_tx* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  store %struct.mlx5dr_ste* %88, %struct.mlx5dr_ste** %8, align 8
  br label %143

89:                                               ; preds = %82
  %90 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %17, align 8
  %91 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %76
  %93 = load i32, i32* %23, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %92
  %96 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %97 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %17, align 8
  %98 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %19, align 8
  %99 = call i64 @dr_rule_need_enlarge_hash(%struct.mlx5dr_ste_htbl* %96, %struct.mlx5dr_domain* %97, %struct.mlx5dr_domain_rx_tx* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  store i32 1, i32* %23, align 4
  %102 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %103 = load %struct.mlx5dr_ste_htbl**, %struct.mlx5dr_ste_htbl*** %15, align 8
  store %struct.mlx5dr_ste_htbl* %102, %struct.mlx5dr_ste_htbl** %103, align 8
  %104 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %105 = call i32 @mlx5dr_htbl_get(%struct.mlx5dr_ste_htbl* %104)
  %106 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %9, align 8
  %107 = load %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_rule_rx_tx** %10, align 8
  %108 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.list_head*, %struct.list_head** %11, align 8
  %111 = call %struct.mlx5dr_ste_htbl* @dr_rule_rehash(%struct.mlx5dr_rule* %106, %struct.mlx5dr_rule_rx_tx* %107, %struct.mlx5dr_ste_htbl* %108, i32 %109, %struct.list_head* %110)
  store %struct.mlx5dr_ste_htbl* %111, %struct.mlx5dr_ste_htbl** %20, align 8
  %112 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %20, align 8
  %113 = icmp ne %struct.mlx5dr_ste_htbl* %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %101
  %115 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %116 = call i32 @mlx5dr_htbl_put(%struct.mlx5dr_ste_htbl* %115)
  %117 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %17, align 8
  %118 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %12, align 8
  %119 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %117, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %124

122:                                              ; preds = %101
  %123 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %20, align 8
  store %struct.mlx5dr_ste_htbl* %123, %struct.mlx5dr_ste_htbl** %12, align 8
  br label %124

124:                                              ; preds = %122, %114
  br label %42

125:                                              ; preds = %95, %92
  %126 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %16, align 8
  %127 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %18, align 8
  %128 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %24, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = load %struct.list_head*, %struct.list_head** %22, align 8
  %131 = load %struct.list_head*, %struct.list_head** %11, align 8
  %132 = call %struct.mlx5dr_ste* @dr_rule_handle_collision(%struct.mlx5dr_matcher* %126, %struct.mlx5dr_matcher_rx_tx* %127, %struct.mlx5dr_ste* %128, i32* %129, %struct.list_head* %130, %struct.list_head* %131)
  store %struct.mlx5dr_ste* %132, %struct.mlx5dr_ste** %24, align 8
  %133 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %24, align 8
  %134 = icmp ne %struct.mlx5dr_ste* %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %125
  %136 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %17, align 8
  %137 = load i32, i32* %25, align 4
  %138 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %136, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %8, align 8
  br label %143

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140, %75
  %142 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %24, align 8
  store %struct.mlx5dr_ste* %142, %struct.mlx5dr_ste** %8, align 8
  br label %143

143:                                              ; preds = %141, %135, %87, %74
  %144 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %8, align 8
  ret %struct.mlx5dr_ste* %144
}

declare dso_local i32 @mlx5dr_ste_calc_hash_index(i32*, %struct.mlx5dr_ste_htbl*) #1

declare dso_local i64 @mlx5dr_ste_not_used_ste(%struct.mlx5dr_ste*) #1

declare dso_local i64 @dr_rule_handle_empty_entry(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste*, i32, i32*, %struct.list_head*, %struct.list_head*) #1

declare dso_local %struct.mlx5dr_ste* @dr_rule_find_ste_in_miss_list(%struct.list_head*, i32*) #1

declare dso_local i32 @mlx5dr_ste_is_last_in_rule(%struct.mlx5dr_matcher_rx_tx*, i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*, ...) #1

declare dso_local i64 @dr_rule_need_enlarge_hash(%struct.mlx5dr_ste_htbl*, %struct.mlx5dr_domain*, %struct.mlx5dr_domain_rx_tx*) #1

declare dso_local i32 @mlx5dr_htbl_get(%struct.mlx5dr_ste_htbl*) #1

declare dso_local %struct.mlx5dr_ste_htbl* @dr_rule_rehash(%struct.mlx5dr_rule*, %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_ste_htbl*, i32, %struct.list_head*) #1

declare dso_local i32 @mlx5dr_htbl_put(%struct.mlx5dr_ste_htbl*) #1

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*, i32) #1

declare dso_local %struct.mlx5dr_ste* @dr_rule_handle_collision(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste*, i32*, %struct.list_head*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
