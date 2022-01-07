; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_reg_rmw_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_reg_rmw_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { i32 }
%struct.register_rmw = type { i8*, i8*, i8* }

@WMI_REG_RMW_CMDID = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"REGISTER RMW FAILED:(0x%04x, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @ath9k_reg_rmw_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_reg_rmw_single(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hw*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca %struct.ath9k_htc_priv*, align 8
  %12 = alloca %struct.register_rmw, align 8
  %13 = alloca %struct.register_rmw, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ath_hw*
  store %struct.ath_hw* %16, %struct.ath_hw** %9, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %17)
  store %struct.ath_common* %18, %struct.ath_common** %10, align 8
  %19 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %20 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %22, %struct.ath9k_htc_priv** %11, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = getelementptr inbounds %struct.register_rmw, %struct.register_rmw* %12, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = getelementptr inbounds %struct.register_rmw, %struct.register_rmw* %12, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = getelementptr inbounds %struct.register_rmw, %struct.register_rmw* %12, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %33 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WMI_REG_RMW_CMDID, align 4
  %36 = bitcast %struct.register_rmw* %12 to i32*
  %37 = bitcast %struct.register_rmw* %13 to i32*
  %38 = call i32 @ath9k_wmi_cmd(i32 %34, i32 %35, i32* %36, i32 24, i32* %37, i32 24, i32 100)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %4
  %43 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %44 = load i32, i32* @WMI, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @ath_dbg(%struct.ath_common* %43, i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %4
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ath9k_wmi_cmd(i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
