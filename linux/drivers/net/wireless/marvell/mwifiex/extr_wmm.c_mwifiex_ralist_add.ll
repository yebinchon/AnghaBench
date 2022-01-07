; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_ralist_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_ralist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__, i32, %struct.mwifiex_adapter* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_ra_list_tbl = type { i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.mwifiex_sta_node = type { i32, i32 }

@MAX_NUM_TID = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"info: created ra_list %p\0A\00", align 1
@BA_SETUP_NONE = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"data: ralist %p: is_11n_enabled=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_ralist_add(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca %struct.mwifiex_sta_node*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 2
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %7, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %125, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAX_NUM_TID, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %128

16:                                               ; preds = %12
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_allocate_ralist_node(%struct.mwifiex_adapter* %17, i32* %18)
  store %struct.mwifiex_ra_list_tbl* %19, %struct.mwifiex_ra_list_tbl** %6, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %21 = load i32, i32* @INFO, align 4
  %22 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %23 = call i32 (%struct.mwifiex_adapter*, i32, i8*, %struct.mwifiex_ra_list_tbl*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %20, i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.mwifiex_ra_list_tbl* %22)
  %24 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %25 = icmp ne %struct.mwifiex_ra_list_tbl* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %128

27:                                               ; preds = %16
  %28 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %29 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %31 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* @BA_SETUP_NONE, align 4
  %33 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %34 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %36 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %38 = call i32 @mwifiex_queuing_ra_based(%struct.mwifiex_private* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %27
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @mwifiex_get_tdls_link_status(%struct.mwifiex_private* %41, i32* %42)
  %44 = call i64 @mwifiex_is_tdls_link_setup(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %48 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @mwifiex_tdls_peer_11n_enabled(%struct.mwifiex_private* %49, i32* %50)
  %52 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %53 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  br label %59

54:                                               ; preds = %40
  %55 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %56 = call i64 @IS_11N_ENABLED(%struct.mwifiex_private* %55)
  %57 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %58 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %46
  br label %95

60:                                               ; preds = %27
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %62 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %61, i32 0, i32 1
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %64, i32* %65)
  store %struct.mwifiex_sta_node* %66, %struct.mwifiex_sta_node** %8, align 8
  %67 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %68 = icmp ne %struct.mwifiex_sta_node* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %74 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %60
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %77 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %78 = call i64 @mwifiex_is_sta_11n_enabled(%struct.mwifiex_private* %76, %struct.mwifiex_sta_node* %77)
  %79 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %80 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %82 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %87 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %90 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %75
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %93 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock_bh(i32* %93)
  br label %95

95:                                               ; preds = %91, %59
  %96 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %97 = load i32, i32* @DATA, align 4
  %98 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %99 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %100 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (%struct.mwifiex_adapter*, i32, i8*, %struct.mwifiex_ra_list_tbl*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %96, i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.mwifiex_ra_list_tbl* %98, i64 %101)
  %103 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %104 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %109 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  %110 = call i32 (...) @mwifiex_get_random_ba_threshold()
  %111 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %112 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %95
  %114 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %115 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %114, i32 0, i32 2
  %116 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %117 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @list_add_tail(i32* %115, i32* %123)
  br label %125

125:                                              ; preds = %113
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %12

128:                                              ; preds = %26, %12
  ret void
}

declare dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_allocate_ralist_node(%struct.mwifiex_adapter*, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, %struct.mwifiex_ra_list_tbl*, ...) #1

declare dso_local i32 @mwifiex_queuing_ra_based(%struct.mwifiex_private*) #1

declare dso_local i64 @mwifiex_is_tdls_link_setup(i32) #1

declare dso_local i32 @mwifiex_get_tdls_link_status(%struct.mwifiex_private*, i32*) #1

declare dso_local i64 @mwifiex_tdls_peer_11n_enabled(%struct.mwifiex_private*, i32*) #1

declare dso_local i64 @IS_11N_ENABLED(%struct.mwifiex_private*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local i64 @mwifiex_is_sta_11n_enabled(%struct.mwifiex_private*, %struct.mwifiex_sta_node*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_get_random_ba_threshold(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
