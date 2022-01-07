; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson8b.c_meson8b_dwmac_register_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson8b.c_meson8b_dwmac_register_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.meson8b_dwmac = type { i32 }
%struct.clk_ops = type { i32 }
%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32, %struct.clk_ops* }

@.str = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.meson8b_dwmac*, i8*, i8**, i32, %struct.clk_ops*, %struct.clk_hw*)* @meson8b_dwmac_register_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @meson8b_dwmac_register_clk(%struct.meson8b_dwmac* %0, i8* %1, i8** %2, i32 %3, %struct.clk_ops* %4, %struct.clk_hw* %5) #0 {
  %7 = alloca %struct.meson8b_dwmac*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk_ops*, align 8
  %12 = alloca %struct.clk_hw*, align 8
  %13 = alloca %struct.clk_init_data, align 8
  %14 = alloca [32 x i8], align 16
  store %struct.meson8b_dwmac* %0, %struct.meson8b_dwmac** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.clk_ops* %4, %struct.clk_ops** %11, align 8
  store %struct.clk_hw* %5, %struct.clk_hw** %12, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %16 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %7, align 8
  %17 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @dev_name(i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @snprintf(i8* %15, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.clk_ops*, %struct.clk_ops** %11, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 4
  store %struct.clk_ops* %24, %struct.clk_ops** %25, align 8
  %26 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i8**, i8*** %9, align 8
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  store i8** %28, i8*** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %33 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %32, i32 0, i32 0
  store %struct.clk_init_data* %13, %struct.clk_init_data** %33, align 8
  %34 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %7, align 8
  %35 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %38 = call %struct.clk* @devm_clk_register(i32 %36, %struct.clk_hw* %37)
  ret %struct.clk* %38
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local %struct.clk* @devm_clk_register(i32, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
