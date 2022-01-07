; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mlxsw_sp_mr_table*, %struct.mr_mfc*)* }
%struct.mr_mfc = type { i32 }
%struct.mlxsw_sp_mr_route = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mlxsw_sp_mr_route_ht_params = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Offloading proxy routes is not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_mr_route_add(%struct.mlxsw_sp_mr_table* %0, %struct.mr_mfc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %6 = alloca %struct.mr_mfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_mr_route*, align 8
  %9 = alloca %struct.mlxsw_sp_mr_route*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %5, align 8
  store %struct.mr_mfc* %1, %struct.mr_mfc** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mlxsw_sp_mr_route* null, %struct.mlxsw_sp_mr_route** %8, align 8
  %11 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.mlxsw_sp_mr_table*, %struct.mr_mfc*)*, i32 (%struct.mlxsw_sp_mr_table*, %struct.mr_mfc*)** %14, align 8
  %16 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %17 = load %struct.mr_mfc*, %struct.mr_mfc** %6, align 8
  %18 = call i32 %15(%struct.mlxsw_sp_mr_table* %16, %struct.mr_mfc* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %132

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %25 = load %struct.mr_mfc*, %struct.mr_mfc** %6, align 8
  %26 = call %struct.mlxsw_sp_mr_route* @mlxsw_sp_mr_route_create(%struct.mlxsw_sp_mr_table* %24, %struct.mr_mfc* %25)
  store %struct.mlxsw_sp_mr_route* %26, %struct.mlxsw_sp_mr_route** %9, align 8
  %27 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %28 = call i64 @IS_ERR(%struct.mlxsw_sp_mr_route* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %32 = call i32 @PTR_ERR(%struct.mlxsw_sp_mr_route* %31)
  store i32 %32, i32* %4, align 4
  br label %132

33:                                               ; preds = %23
  %34 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %34, i32 0, i32 0
  %36 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %36, i32 0, i32 3
  %38 = load i32, i32* @mlxsw_sp_mr_route_ht_params, align 4
  %39 = call %struct.mlxsw_sp_mr_route* @rhashtable_lookup_fast(i32* %35, i32* %37, i32 %38)
  store %struct.mlxsw_sp_mr_route* %39, %struct.mlxsw_sp_mr_route** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %8, align 8
  %44 = icmp ne %struct.mlxsw_sp_mr_route* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %126

52:                                               ; preds = %42
  %53 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %8, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %73

58:                                               ; preds = %33
  %59 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %8, align 8
  %60 = icmp ne %struct.mlxsw_sp_mr_route* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_warn(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %127

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %74, i32 0, i32 0
  %76 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %76, i32 0, i32 1
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %79, i32 0, i32 0
  %81 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %81, i32 0, i32 1
  %83 = load i32, i32* @mlxsw_sp_mr_route_ht_params, align 4
  %84 = call i32 @rhashtable_insert_fast(i32* %80, i32* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %122

88:                                               ; preds = %73
  %89 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %90 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @mlxsw_sp_mr_route_write(%struct.mlxsw_sp_mr_table* %89, %struct.mlxsw_sp_mr_route* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %115

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %100, i32 0, i32 0
  %102 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %8, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %102, i32 0, i32 1
  %104 = load i32, i32* @mlxsw_sp_mr_route_ht_params, align 4
  %105 = call i32 @rhashtable_remove_fast(i32* %101, i32* %103, i32 %104)
  %106 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %8, align 8
  %107 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %106, i32 0, i32 0
  %108 = call i32 @list_del(i32* %107)
  %109 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %110 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %8, align 8
  %111 = call i32 @mlxsw_sp_mr_route_destroy(%struct.mlxsw_sp_mr_table* %109, %struct.mlxsw_sp_mr_route* %110)
  br label %112

112:                                              ; preds = %99, %96
  %113 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %114 = call i32 @mlxsw_sp_mr_mfc_offload_update(%struct.mlxsw_sp_mr_route* %113)
  store i32 0, i32* %4, align 4
  br label %132

115:                                              ; preds = %95
  %116 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %117 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %116, i32 0, i32 0
  %118 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %118, i32 0, i32 1
  %120 = load i32, i32* @mlxsw_sp_mr_route_ht_params, align 4
  %121 = call i32 @rhashtable_remove_fast(i32* %117, i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %87
  %123 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %124 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %123, i32 0, i32 0
  %125 = call i32 @list_del(i32* %124)
  br label %126

126:                                              ; preds = %122, %49
  br label %127

127:                                              ; preds = %126, %61
  %128 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %129 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %9, align 8
  %130 = call i32 @mlxsw_sp_mr_route_destroy(%struct.mlxsw_sp_mr_table* %128, %struct.mlxsw_sp_mr_route* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %112, %30, %20
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.mlxsw_sp_mr_route* @mlxsw_sp_mr_route_create(%struct.mlxsw_sp_mr_table*, %struct.mr_mfc*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_mr_route*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_mr_route*) #1

declare dso_local %struct.mlxsw_sp_mr_route* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_route_write(%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_mr_route_destroy(%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route*) #1

declare dso_local i32 @mlxsw_sp_mr_mfc_offload_update(%struct.mlxsw_sp_mr_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
