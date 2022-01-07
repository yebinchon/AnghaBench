; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib6_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fib6_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.fib6_info = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.mlxsw_sp_fib6_entry = type opaque
%struct.mlxsw_sp_fib_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.fib6_info**, i32, i32)* @mlxsw_sp_router_fib6_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_fib6_add(%struct.mlxsw_sp* %0, %struct.fib6_info** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.fib6_info**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_fib6_entry*, align 8
  %11 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %12 = alloca %struct.fib6_info*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.fib6_info** %1, %struct.fib6_info*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.fib6_info**, %struct.fib6_info*** %7, align 8
  %15 = getelementptr inbounds %struct.fib6_info*, %struct.fib6_info** %14, i64 0
  %16 = load %struct.fib6_info*, %struct.fib6_info** %15, align 8
  store %struct.fib6_info* %16, %struct.fib6_info** %12, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %119

24:                                               ; preds = %4
  %25 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %26 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %119

33:                                               ; preds = %24
  %34 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %35 = call i64 @mlxsw_sp_fib6_rt_should_ignore(%struct.fib6_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %119

38:                                               ; preds = %33
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %40 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %41 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %46 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %49 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MLXSW_SP_L3_PROTO_IPV6, align 4
  %53 = call %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_get(%struct.mlxsw_sp* %39, i32 %44, i32* %47, i32 4, i32 %51, i32 %52)
  store %struct.mlxsw_sp_fib_node* %53, %struct.mlxsw_sp_fib_node** %11, align 8
  %54 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %55 = call i64 @IS_ERR(%struct.mlxsw_sp_fib_node* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %59 = call i32 @PTR_ERR(%struct.mlxsw_sp_fib_node* %58)
  store i32 %59, i32* %5, align 4
  br label %119

60:                                               ; preds = %38
  %61 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %62 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib6_node_mp_entry_find(%struct.mlxsw_sp_fib_node* %61, %struct.fib6_info* %62, i32 %63)
  %65 = bitcast %struct.mlxsw_sp_fib_node* %64 to %struct.mlxsw_sp_fib6_entry*
  store %struct.mlxsw_sp_fib6_entry* %65, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %66 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %67 = icmp ne %struct.mlxsw_sp_fib6_entry* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %70 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %71 = bitcast %struct.mlxsw_sp_fib6_entry* %70 to %struct.mlxsw_sp_fib_node*
  %72 = load %struct.fib6_info**, %struct.fib6_info*** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @mlxsw_sp_fib6_entry_nexthop_add(%struct.mlxsw_sp* %69, %struct.mlxsw_sp_fib_node* %71, %struct.fib6_info** %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %114

78:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %119

79:                                               ; preds = %60
  %80 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %81 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %82 = load %struct.fib6_info**, %struct.fib6_info*** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib6_entry_create(%struct.mlxsw_sp* %80, %struct.mlxsw_sp_fib_node* %81, %struct.fib6_info** %82, i32 %83)
  %85 = bitcast %struct.mlxsw_sp_fib_node* %84 to %struct.mlxsw_sp_fib6_entry*
  store %struct.mlxsw_sp_fib6_entry* %85, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %86 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %87 = bitcast %struct.mlxsw_sp_fib6_entry* %86 to %struct.mlxsw_sp_fib_node*
  %88 = call i64 @IS_ERR(%struct.mlxsw_sp_fib_node* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %92 = bitcast %struct.mlxsw_sp_fib6_entry* %91 to %struct.mlxsw_sp_fib_node*
  %93 = call i32 @PTR_ERR(%struct.mlxsw_sp_fib_node* %92)
  store i32 %93, i32* %13, align 4
  br label %113

94:                                               ; preds = %79
  %95 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %96 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %97 = bitcast %struct.mlxsw_sp_fib6_entry* %96 to %struct.mlxsw_sp_fib_node*
  %98 = call i32 @mlxsw_sp_fib6_node_entry_link(%struct.mlxsw_sp* %95, %struct.mlxsw_sp_fib_node* %97, i32* %9)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %108

102:                                              ; preds = %94
  %103 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %104 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %105 = bitcast %struct.mlxsw_sp_fib6_entry* %104 to %struct.mlxsw_sp_fib_node*
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @mlxsw_sp_fib6_entry_replace(%struct.mlxsw_sp* %103, %struct.mlxsw_sp_fib_node* %105, i32 %106)
  store i32 0, i32* %5, align 4
  br label %119

108:                                              ; preds = %101
  %109 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %110 = load %struct.mlxsw_sp_fib6_entry*, %struct.mlxsw_sp_fib6_entry** %10, align 8
  %111 = bitcast %struct.mlxsw_sp_fib6_entry* %110 to %struct.mlxsw_sp_fib_node*
  %112 = call i32 @mlxsw_sp_fib6_entry_destroy(%struct.mlxsw_sp* %109, %struct.mlxsw_sp_fib_node* %111)
  br label %113

113:                                              ; preds = %108, %90
  br label %114

114:                                              ; preds = %113, %77
  %115 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %116 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  %117 = call i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp* %115, %struct.mlxsw_sp_fib_node* %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %114, %102, %78, %57, %37, %30, %23
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i64 @mlxsw_sp_fib6_rt_should_ignore(%struct.fib6_info*) #1

declare dso_local %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib_node_get(%struct.mlxsw_sp*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_fib_node*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_fib_node*) #1

declare dso_local %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib6_node_mp_entry_find(%struct.mlxsw_sp_fib_node*, %struct.fib6_info*, i32) #1

declare dso_local i32 @mlxsw_sp_fib6_entry_nexthop_add(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, %struct.fib6_info**, i32) #1

declare dso_local %struct.mlxsw_sp_fib_node* @mlxsw_sp_fib6_entry_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, %struct.fib6_info**, i32) #1

declare dso_local i32 @mlxsw_sp_fib6_node_entry_link(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, i32*) #1

declare dso_local i32 @mlxsw_sp_fib6_entry_replace(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, i32) #1

declare dso_local i32 @mlxsw_sp_fib6_entry_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

declare dso_local i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
