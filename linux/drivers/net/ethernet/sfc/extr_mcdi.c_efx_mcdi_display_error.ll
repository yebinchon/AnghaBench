; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_display_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_display_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MC_CMD_ERR_CODE_OFST = common dso_local global i32 0, align 4
@ERR_CODE = common dso_local global i32 0, align 4
@MC_CMD_ERR_ARG_OFST = common dso_local global i32 0, align 4
@ERR_ARG = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"MC command 0x%x inlen %zu failed rc=%d (raw=%d) arg=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mcdi_display_error(%struct.efx_nic* %0, i32 %1, i64 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* %11, align 8
  %16 = load i32, i32* @MC_CMD_ERR_CODE_OFST, align 4
  %17 = add nsw i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @ERR_CODE, align 4
  %23 = call i32 @MCDI_DWORD(i32* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %20, %6
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* @MC_CMD_ERR_ARG_OFST, align 4
  %27 = add nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @ERR_ARG, align 4
  %33 = call i32 @MCDI_DWORD(i32* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %36 = load i32, i32* @hw, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @err, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @netif_cond_dbg(%struct.efx_nic* %35, i32 %36, i32 %39, i32 %44, i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %47, i32 %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @MCDI_DWORD(i32*, i32) #1

declare dso_local i32 @netif_cond_dbg(%struct.efx_nic*, i32, i32, i32, i32, i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
