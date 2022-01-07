; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_action_stes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_action_stes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { %struct.mlx5dr_matcher* }
%struct.mlx5dr_matcher = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5dr_rule_rx_tx = type { %struct.mlx5dr_matcher_rx_tx* }
%struct.mlx5dr_matcher_rx_tx = type { i32 }
%struct.list_head = type { i32 }
%struct.mlx5dr_ste = type { i32, i32 }
%struct.mlx5dr_ste_send_info = type { i32 }

@DR_ACTION_MAX_STES = common dso_local global i32 0, align 4
@DR_STE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed adding rule member\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_rule*, %struct.mlx5dr_rule_rx_tx*, %struct.list_head*, %struct.mlx5dr_ste*, i32*, i32)* @dr_rule_handle_action_stes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_handle_action_stes(%struct.mlx5dr_rule* %0, %struct.mlx5dr_rule_rx_tx* %1, %struct.list_head* %2, %struct.mlx5dr_ste* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5dr_rule*, align 8
  %9 = alloca %struct.mlx5dr_rule_rx_tx*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.mlx5dr_ste*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5dr_matcher*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.mlx5dr_ste*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.mlx5dr_rule* %0, %struct.mlx5dr_rule** %8, align 8
  store %struct.mlx5dr_rule_rx_tx* %1, %struct.mlx5dr_rule_rx_tx** %9, align 8
  store %struct.list_head* %2, %struct.list_head** %10, align 8
  store %struct.mlx5dr_ste* %3, %struct.mlx5dr_ste** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_rule_rx_tx** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_rule_rx_tx, %struct.mlx5dr_rule_rx_tx* %26, i32 0, i32 0
  %28 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %27, align 8
  store %struct.mlx5dr_matcher_rx_tx* %28, %struct.mlx5dr_matcher_rx_tx** %14, align 8
  %29 = load i32, i32* @DR_ACTION_MAX_STES, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %15, align 8
  %32 = alloca %struct.mlx5dr_ste_send_info*, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %33 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %14, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %17, align 4
  %36 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %36, i32 0, i32 0
  %38 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %37, align 8
  store %struct.mlx5dr_matcher* %38, %struct.mlx5dr_matcher** %18, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %145

43:                                               ; preds = %6
  %44 = load i32, i32* %17, align 4
  store i32 %44, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %45

45:                                               ; preds = %126, %43
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %131

49:                                               ; preds = %45
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* @DR_STE_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32* %55, i32** %19, align 8
  %56 = load i32, i32* %22, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32*, i32** %19, align 8
  br label %68

60:                                               ; preds = %49
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %22, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* @DR_STE_SIZE, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  br label %68

68:                                               ; preds = %60, %58
  %69 = phi i32* [ %59, %58 ], [ %67, %60 ]
  store i32* %69, i32** %20, align 8
  %70 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %18, align 8
  %71 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %14, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = call %struct.mlx5dr_ste* @dr_rule_create_collision_htbl(%struct.mlx5dr_matcher* %70, %struct.mlx5dr_matcher_rx_tx* %71, i32* %72)
  store %struct.mlx5dr_ste* %73, %struct.mlx5dr_ste** %21, align 8
  %74 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %75 = icmp ne %struct.mlx5dr_ste* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %145

79:                                               ; preds = %68
  %80 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %81 = call i32 @mlx5dr_ste_get(%struct.mlx5dr_ste* %80)
  %82 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %83 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %82, i32 0, i32 1
  %84 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %85 = call i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste* %84)
  %86 = call i32 @list_add_tail(i32* %83, i32 %85)
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.mlx5dr_ste_send_info* @kzalloc(i32 4, i32 %87)
  %89 = load i32, i32* %23, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %32, i64 %90
  store %struct.mlx5dr_ste_send_info* %88, %struct.mlx5dr_ste_send_info** %91, align 8
  %92 = load i32, i32* %23, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %32, i64 %93
  %95 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %94, align 8
  %96 = icmp ne %struct.mlx5dr_ste_send_info* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %79
  br label %138

98:                                               ; preds = %79
  %99 = load i32*, i32** %20, align 8
  %100 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %101 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mlx5dr_ste_set_hit_addr_by_next_htbl(i32* %99, i32 %102)
  %104 = load %struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_rule_rx_tx** %9, align 8
  %105 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %106 = call i32 @dr_rule_add_member(%struct.mlx5dr_rule_rx_tx* %104, %struct.mlx5dr_ste* %105)
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %24, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %98
  %110 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %18, align 8
  %111 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mlx5dr_dbg(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %132

116:                                              ; preds = %98
  %117 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %118 = load i32, i32* @DR_STE_SIZE, align 4
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* %23, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %32, i64 %121
  %123 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %122, align 8
  %124 = load %struct.list_head*, %struct.list_head** %10, align 8
  %125 = call i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste* %117, i32 %118, i32 0, i32* %119, %struct.mlx5dr_ste_send_info* %123, %struct.list_head* %124, i32 0)
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %22, align 4
  %129 = load i32, i32* %23, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %23, align 4
  br label %45

131:                                              ; preds = %45
  store i32 0, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %145

132:                                              ; preds = %109
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %32, i64 %134
  %136 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %135, align 8
  %137 = call i32 @kfree(%struct.mlx5dr_ste_send_info* %136)
  br label %138

138:                                              ; preds = %132, %97
  %139 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %21, align 8
  %140 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %18, align 8
  %141 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %14, align 8
  %142 = call i32 @mlx5dr_ste_put(%struct.mlx5dr_ste* %139, %struct.mlx5dr_matcher* %140, %struct.mlx5dr_matcher_rx_tx* %141)
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %145

145:                                              ; preds = %138, %131, %76, %42
  %146 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mlx5dr_ste* @dr_rule_create_collision_htbl(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32*) #2

declare dso_local i32 @mlx5dr_ste_get(%struct.mlx5dr_ste*) #2

declare dso_local i32 @list_add_tail(i32*, i32) #2

declare dso_local i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste*) #2

declare dso_local %struct.mlx5dr_ste_send_info* @kzalloc(i32, i32) #2

declare dso_local i32 @mlx5dr_ste_set_hit_addr_by_next_htbl(i32*, i32) #2

declare dso_local i32 @dr_rule_add_member(%struct.mlx5dr_rule_rx_tx*, %struct.mlx5dr_ste*) #2

declare dso_local i32 @mlx5dr_dbg(i32, i8*) #2

declare dso_local i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste*, i32, i32, i32*, %struct.mlx5dr_ste_send_info*, %struct.list_head*, i32) #2

declare dso_local i32 @kfree(%struct.mlx5dr_ste_send_info*) #2

declare dso_local i32 @mlx5dr_ste_put(%struct.mlx5dr_ste*, %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
