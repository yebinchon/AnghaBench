; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_general_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_general_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sja1105_general_params_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@ETH_P_SJA1105 = common dso_local global i32 0, align 4
@SJA1105_LINKLOCAL_FILTER_B_MASK = common dso_local global i32 0, align 4
@SJA1105_LINKLOCAL_FILTER_B = common dso_local global i32 0, align 4
@SJA1105_LINKLOCAL_FILTER_A_MASK = common dso_local global i32 0, align 4
@SJA1105_LINKLOCAL_FILTER_A = common dso_local global i32 0, align 4
@BLK_IDX_GENERAL_PARAMS = common dso_local global i64 0, align 8
@SJA1105_MAX_GENERAL_PARAMS_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*)* @sja1105_init_general_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_init_general_params(%struct.sja1105_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca %struct.sja1105_general_params_entry, align 4
  %5 = alloca %struct.sja1105_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %3, align 8
  %8 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 0
  store i32 7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 3
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 4
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 5
  %14 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 6
  %16 = load i32, i32* @ETH_P_SJA1105, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 7
  %18 = load i32, i32* @ETH_P_SJA1105, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 8
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 9
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 10
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 11
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 12
  %24 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %25 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @dsa_upstream_port(%struct.TYPE_10__* %26, i32 0)
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 13
  %29 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %30 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = call i32 @dsa_upstream_port(%struct.TYPE_10__* %31, i32 0)
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 14
  %34 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_B_MASK, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 15
  %36 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_B, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 16
  %38 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_A_MASK, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 17
  %40 = load i32, i32* @SJA1105_LINKLOCAL_FILTER_A, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 18
  %42 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %43 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %41, align 4
  %47 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 19
  store i32 0, i32* %47, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %81, %1
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %48
  %53 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %54 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @dsa_is_dsa_port(%struct.TYPE_10__* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %4, i32 0, i32 5
  store i32 %60, i32* %61, align 4
  br label %80

62:                                               ; preds = %52
  %63 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %64 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @dsa_is_user_port(%struct.TYPE_10__* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %73 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %70, i32* %78, align 4
  br label %79

79:                                               ; preds = %69, %62
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %48

84:                                               ; preds = %48
  %85 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %86 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.sja1105_table*, %struct.sja1105_table** %87, align 8
  %89 = load i64, i64* @BLK_IDX_GENERAL_PARAMS, align 8
  %90 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %88, i64 %89
  store %struct.sja1105_table* %90, %struct.sja1105_table** %5, align 8
  %91 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %92 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %97 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @kfree(i64 %98)
  %100 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %101 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %84
  %103 = load i64, i64* @SJA1105_MAX_GENERAL_PARAMS_COUNT, align 8
  %104 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %105 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i64 @kcalloc(i64 %103, i32 %108, i32 %109)
  %111 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %112 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %114 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %102
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %131

120:                                              ; preds = %102
  %121 = load i64, i64* @SJA1105_MAX_GENERAL_PARAMS_COUNT, align 8
  %122 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %123 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %125 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to %struct.sja1105_general_params_entry*
  %128 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %127, i64 0
  %129 = bitcast %struct.sja1105_general_params_entry* %128 to i8*
  %130 = bitcast %struct.sja1105_general_params_entry* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 80, i1 false)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %120, %117
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @dsa_upstream_port(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @dsa_is_dsa_port(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @dsa_is_user_port(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @kcalloc(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
