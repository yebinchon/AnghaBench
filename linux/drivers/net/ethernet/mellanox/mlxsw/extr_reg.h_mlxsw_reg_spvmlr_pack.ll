; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_spvmlr_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_spvmlr_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLXSW_REG_SPVMLR_REC_MAX_COUNT = common dso_local global i32 0, align 4
@spvmlr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @mlxsw_reg_spvmlr_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_spvmlr_pack(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @MLXSW_REG_SPVMLR_REC_MAX_COUNT, align 4
  %22 = icmp sgt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i1 [ true, %5 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* @spvmlr, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @MLXSW_REG_ZERO(i32 %27, i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mlxsw_reg_spvmlr_local_port_set(i8* %30, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @mlxsw_reg_spvmlr_num_rec_set(i8* %33, i32 %34)
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %51, %23
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @mlxsw_reg_spvmlr_rec_learn_enable_set(i8* %41, i32 %42, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @mlxsw_reg_spvmlr_rec_vid_set(i8* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %36

54:                                               ; preds = %36
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_spvmlr_local_port_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_spvmlr_num_rec_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_spvmlr_rec_learn_enable_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_spvmlr_rec_vid_set(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
