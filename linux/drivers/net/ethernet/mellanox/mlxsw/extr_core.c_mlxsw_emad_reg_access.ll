; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.sk_buff*, %struct.TYPE_8__*)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlxsw_reg_info = type { i32, i32 }
%struct.mlxsw_reg_trans = type { i64, i32, %struct.sk_buff*, i32, i32, %struct.TYPE_8__, i32, %struct.mlxsw_reg_info*, i32*, i32, i32, %struct.mlxsw_core* }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"EMAD reg access (tid=%llx,reg_id=%x(%s),type=%s)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_PORT_CPU_PORT = common dso_local global i32 0, align 4
@mlxsw_emad_trans_timeout_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32, %struct.mlxsw_reg_trans*, %struct.list_head*, i32*, i64, i32)* @mlxsw_emad_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_emad_reg_access(%struct.mlxsw_core* %0, %struct.mlxsw_reg_info* %1, i8* %2, i32 %3, %struct.mlxsw_reg_trans* %4, %struct.list_head* %5, i32* %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_core*, align 8
  %12 = alloca %struct.mlxsw_reg_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlxsw_reg_trans*, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %11, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.mlxsw_reg_trans* %4, %struct.mlxsw_reg_trans** %15, align 8
  store %struct.list_head* %5, %struct.list_head** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %23 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %19, align 4
  %28 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %12, align 8
  %29 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %12, align 8
  %32 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlxsw_reg_id_str(i32 %33)
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @mlxsw_core_reg_access_type_str(i32 %35)
  %37 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %34, i32 %36)
  %38 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %39 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %12, align 8
  %40 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.sk_buff* @mlxsw_emad_alloc(%struct.mlxsw_core* %38, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %20, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %9
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %146

48:                                               ; preds = %9
  %49 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %50 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %49, i32 0, i32 3
  %51 = load %struct.list_head*, %struct.list_head** %16, align 8
  %52 = call i32 @list_add_tail(i32* %50, %struct.list_head* %51)
  %53 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %54 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %55 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %54, i32 0, i32 11
  store %struct.mlxsw_core* %53, %struct.mlxsw_core** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %57 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %58 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %57, i32 0, i32 2
  store %struct.sk_buff* %56, %struct.sk_buff** %58, align 8
  %59 = load i32, i32* @MLXSW_PORT_CPU_PORT, align 4
  %60 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %61 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %64 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %67 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %66, i32 0, i32 10
  %68 = load i32, i32* @mlxsw_emad_trans_timeout_work, align 4
  %69 = call i32 @INIT_DELAYED_WORK(i32* %67, i32 %68)
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %72 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %74 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %73, i32 0, i32 9
  %75 = call i32 @init_completion(i32* %74)
  %76 = load i32*, i32** %17, align 8
  %77 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %78 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %77, i32 0, i32 8
  store i32* %76, i32** %78, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %81 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %12, align 8
  %83 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %84 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %83, i32 0, i32 7
  store %struct.mlxsw_reg_info* %82, %struct.mlxsw_reg_info** %84, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %87 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %89 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %12, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %93 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @mlxsw_emad_construct(%struct.sk_buff* %88, %struct.mlxsw_reg_info* %89, i8* %90, i32 %91, i32 %94)
  %96 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %97 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32 (%struct.sk_buff*, %struct.TYPE_8__*)*, i32 (%struct.sk_buff*, %struct.TYPE_8__*)** %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %102 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %103 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %102, i32 0, i32 5
  %104 = call i32 %100(%struct.sk_buff* %101, %struct.TYPE_8__* %103)
  %105 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %106 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = call i32 @spin_lock_bh(i32* %107)
  %109 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %110 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %109, i32 0, i32 4
  %111 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %112 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = call i32 @list_add_tail_rcu(i32* %110, i32* %113)
  %115 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %116 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %120 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %121 = call i32 @mlxsw_emad_transmit(%struct.mlxsw_core* %119, %struct.mlxsw_reg_trans* %120)
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %48
  br label %126

125:                                              ; preds = %48
  store i32 0, i32* %10, align 4
  br label %146

126:                                              ; preds = %124
  %127 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %128 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = call i32 @spin_lock_bh(i32* %129)
  %131 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %132 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %131, i32 0, i32 4
  %133 = call i32 @list_del_rcu(i32* %132)
  %134 = load %struct.mlxsw_core*, %struct.mlxsw_core** %11, align 8
  %135 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = call i32 @spin_unlock_bh(i32* %136)
  %138 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %139 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %138, i32 0, i32 3
  %140 = call i32 @list_del(i32* %139)
  %141 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %15, align 8
  %142 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %141, i32 0, i32 2
  %143 = load %struct.sk_buff*, %struct.sk_buff** %142, align 8
  %144 = call i32 @dev_kfree_skb(%struct.sk_buff* %143)
  %145 = load i32, i32* %21, align 4
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %126, %125, %45
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_id_str(i32) #1

declare dso_local i32 @mlxsw_core_reg_access_type_str(i32) #1

declare dso_local %struct.sk_buff* @mlxsw_emad_alloc(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mlxsw_emad_construct(%struct.sk_buff*, %struct.mlxsw_reg_info*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mlxsw_emad_transmit(%struct.mlxsw_core*, %struct.mlxsw_reg_trans*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
