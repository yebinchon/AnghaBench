; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_spread_strict_pri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_spread_strict_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.cos_help_data = type { %struct.cos_entry_help_data* }
%struct.cos_entry_help_data = type { i32, i32, i8*, i8* }

@BNX2X_DCBX_STRICT_COS_HIGHEST = common dso_local global i32 0, align 4
@MAX_PFC_PRIORITIES = common dso_local global i32 0, align 4
@DCBX_INVALID_COS_BW = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Didn't succeed to spread strict priorities\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.cos_help_data*, i32, i32, i32)* @bnx2x_dcbx_spread_strict_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_dcbx_spread_strict_pri(%struct.bnx2x* %0, %struct.cos_help_data* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.cos_help_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cos_entry_help_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.cos_help_data* %1, %struct.cos_help_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @BNX2X_DCBX_STRICT_COS_HIGHEST, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @MAX_PFC_PRIORITIES, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %88, %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %13, align 4
  %23 = icmp sgt i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %91

26:                                               ; preds = %24
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %27, 1
  %29 = shl i32 1, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %26
  %35 = load %struct.cos_help_data*, %struct.cos_help_data** %8, align 8
  %36 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %35, i32 0, i32 0
  %37 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %37, i64 %39
  store %struct.cos_entry_help_data* %40, %struct.cos_entry_help_data** %15, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %34
  %46 = load i8*, i8** @DCBX_INVALID_COS_BW, align 8
  %47 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %48 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %51 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %54 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %56 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %57 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @DCBX_IS_PFC_PRI_SOME_PAUSE(%struct.bnx2x* %55, i32 %58)
  %60 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %61 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %83

62:                                               ; preds = %34
  %63 = load i32, i32* %14, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i8*, i8** @DCBX_INVALID_COS_BW, align 8
  %68 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %69 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %72 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %75 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %77 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %78 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @DCBX_IS_PFC_PRI_SOME_PAUSE(%struct.bnx2x* %76, i32 %79)
  %81 = load %struct.cos_entry_help_data*, %struct.cos_entry_help_data** %15, align 8
  %82 = getelementptr inbounds %struct.cos_entry_help_data, %struct.cos_entry_help_data* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %62, %45
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %26
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %13, align 4
  br label %18

91:                                               ; preds = %24
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %99

98:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i8* @DCBX_IS_PFC_PRI_SOME_PAUSE(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
