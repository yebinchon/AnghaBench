; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_id_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_id_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_info = type { i64, i8* }

@mlxsw_reg_infos = common dso_local global %struct.mlxsw_reg_info** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"*UNKNOWN*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @mlxsw_reg_id_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlxsw_reg_id_str(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlxsw_reg_info*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mlxsw_reg_info**, %struct.mlxsw_reg_info*** @mlxsw_reg_infos, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.mlxsw_reg_info** %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.mlxsw_reg_info**, %struct.mlxsw_reg_info*** @mlxsw_reg_infos, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %12, i64 %14
  %16 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %15, align 8
  store %struct.mlxsw_reg_info* %16, %struct.mlxsw_reg_info** %4, align 8
  %17 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_reg_info, %struct.mlxsw_reg_info* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %2, align 8
  br label %31

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.mlxsw_reg_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
