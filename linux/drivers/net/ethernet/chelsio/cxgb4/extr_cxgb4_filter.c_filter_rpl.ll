; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_filter_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_filter_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.filter_entry* }
%struct.filter_entry = type { i32, i32, i64, %struct.TYPE_4__, %struct.filter_ctx* }
%struct.TYPE_4__ = type { i64 }
%struct.filter_ctx = type { i32, i32, i32 }
%struct.cpl_set_tcb_rpl = type { i32 }

@FW_FILTER_WR_FLT_DELETED = common dso_local global i32 0, align 4
@FW_FILTER_WR_FLT_ADDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"filter %u setup failed with error %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filter_rpl(%struct.adapter* %0, %struct.cpl_set_tcb_rpl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cpl_set_tcb_rpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.filter_ctx*, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cpl_set_tcb_rpl* %1, %struct.cpl_set_tcb_rpl** %4, align 8
  %12 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %4, align 8
  %13 = call i32 @GET_TID(%struct.cpl_set_tcb_rpl* %12)
  store i32 %13, i32* %5, align 4
  store %struct.filter_entry* null, %struct.filter_entry** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %17, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load %struct.filter_entry*, %struct.filter_entry** %25, align 8
  %27 = icmp ne %struct.filter_entry* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sub i32 %29, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %150

39:                                               ; preds = %28
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load %struct.filter_entry*, %struct.filter_entry** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %43, i64 %45
  store %struct.filter_entry* %46, %struct.filter_entry** %6, align 8
  %47 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %48 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %150

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %56 = icmp ne %struct.filter_entry* %55, null
  br i1 %56, label %57, label %150

57:                                               ; preds = %54
  %58 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %4, align 8
  %59 = getelementptr inbounds %struct.cpl_set_tcb_rpl, %struct.cpl_set_tcb_rpl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TCB_COOKIE_G(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %63 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %62, i32 0, i32 4
  %64 = load %struct.filter_ctx*, %struct.filter_ctx** %63, align 8
  store %struct.filter_ctx* %64, %struct.filter_ctx** %10, align 8
  %65 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %66 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %65, i32 0, i32 4
  store %struct.filter_ctx* null, %struct.filter_ctx** %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @FW_FILTER_WR_FLT_DELETED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %57
  %71 = load %struct.adapter*, %struct.adapter** %3, align 8
  %72 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %73 = call i32 @clear_filter(%struct.adapter* %71, %struct.filter_entry* %72)
  %74 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %75 = icmp ne %struct.filter_ctx* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %78 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %70
  br label %142

80:                                               ; preds = %57
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @FW_FILTER_WR_FLT_ADDED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  %85 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %86 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.adapter*, %struct.adapter** %3, align 8
  %92 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %93 = call i32 @configure_filter_smac(%struct.adapter* %91, %struct.filter_entry* %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %94
  %98 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %99 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %101 = getelementptr inbounds %struct.filter_entry, %struct.filter_entry* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %103 = icmp ne %struct.filter_ctx* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %106 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %109 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %97
  br label %122

111:                                              ; preds = %94
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %114 = call i32 @clear_filter(%struct.adapter* %112, %struct.filter_entry* %113)
  %115 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %116 = icmp ne %struct.filter_ctx* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %120 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121, %110
  br label %141

123:                                              ; preds = %80
  %124 = load %struct.adapter*, %struct.adapter** %3, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load %struct.adapter*, %struct.adapter** %3, align 8
  %131 = load %struct.filter_entry*, %struct.filter_entry** %6, align 8
  %132 = call i32 @clear_filter(%struct.adapter* %130, %struct.filter_entry* %131)
  %133 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %134 = icmp ne %struct.filter_ctx* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %123
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  %138 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %139 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %123
  br label %141

141:                                              ; preds = %140, %122
  br label %142

142:                                              ; preds = %141, %79
  %143 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %144 = icmp ne %struct.filter_ctx* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load %struct.filter_ctx*, %struct.filter_ctx** %10, align 8
  %147 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %146, i32 0, i32 2
  %148 = call i32 @complete(i32* %147)
  br label %149

149:                                              ; preds = %145, %142
  br label %150

150:                                              ; preds = %38, %52, %149, %54
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_set_tcb_rpl*) #1

declare dso_local i32 @TCB_COOKIE_G(i32) #1

declare dso_local i32 @clear_filter(%struct.adapter*, %struct.filter_entry*) #1

declare dso_local i32 @configure_filter_smac(%struct.adapter*, %struct.filter_entry*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
