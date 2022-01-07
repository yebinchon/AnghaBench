; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_ecn_encap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_ecn_encap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }

@INET_ECN_NOT_ECT = common dso_local global i32 0, align 4
@INET_ECN_CE = common dso_local global i32 0, align 4
@MLXSW_REG_TNEEM_LEN = common dso_local global i32 0, align 4
@tneem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_nve_ecn_encap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_nve_ecn_encap_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %10 = load i32, i32* @INET_ECN_NOT_ECT, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @INET_ECN_CE, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @INET_ECN_encapsulate(i32 0, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @MLXSW_REG_TNEEM_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mlxsw_reg_tneem_pack(i8* %21, i32 %22, i32 %23)
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @tneem, align 4
  %29 = call i32 @MLXSW_REG(i32 %28)
  %30 = call i32 @mlxsw_reg_write(i32 %27, i32 %29, i8* %21)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %36

35:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %46 [
    i32 0, label %39
    i32 1, label %44
  ]

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %11

43:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45

46:                                               ; preds = %36
  unreachable
}

declare dso_local i32 @INET_ECN_encapsulate(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_tneem_pack(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
