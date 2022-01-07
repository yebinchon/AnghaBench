; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_join_pgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_join_pgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.dcbx_ets_feature = type { i32 }
%struct.pg_help_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"required_num_of_pg can't be zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DCBX_STRICT_PRI_PG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.dcbx_ets_feature*, %struct.pg_help_data*, i32)* @bnx2x_dcbx_join_pgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_dcbx_join_pgs(%struct.bnx2x* %0, %struct.dcbx_ets_feature* %1, %struct.pg_help_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.dcbx_ets_feature*, align 8
  %8 = alloca %struct.pg_help_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.dcbx_ets_feature* %1, %struct.dcbx_ets_feature** %7, align 8
  store %struct.pg_help_data* %2, %struct.pg_help_data** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %14 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %23 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %24)
  %26 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %27 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21, %4
  %31 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %163

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %157, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %38 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %162

41:                                               ; preds = %35
  %42 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %43 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %49 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %50)
  %52 = load i32, i32* %11, align 4
  %53 = srem i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %55 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %63 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %61
  store i32 %70, i32* %68, align 8
  %71 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %72 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %80 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %78
  store i64 %87, i64* %85, align 8
  %88 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %89 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DCBX_STRICT_PRI_PG, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %109, label %98

98:                                               ; preds = %41
  %99 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %100 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @DCBX_STRICT_PRI_PG, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %98, %41
  %110 = load i64, i64* @DCBX_STRICT_PRI_PG, align 8
  %111 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %112 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i64 %110, i64* %117, align 8
  br label %157

118:                                              ; preds = %98
  %119 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %7, align 8
  %120 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %123 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @DCBX_PG_BW_GET(i32 %121, i64 %129)
  %131 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %7, align 8
  %132 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %135 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @DCBX_PG_BW_GET(i32 %133, i64 %141)
  %143 = add nsw i32 %130, %142
  store i32 %143, i32* %12, align 4
  %144 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %7, align 8
  %145 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %148 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @DCBX_PG_BW_SET(i32 %146, i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %118, %109
  %158 = load %struct.pg_help_data*, %struct.pg_help_data** %8, align 8
  %159 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %159, align 8
  br label %35

162:                                              ; preds = %35
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %162, %30
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @DCBX_PG_BW_GET(i32, i64) #1

declare dso_local i32 @DCBX_PG_BW_SET(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
