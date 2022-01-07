; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_fix_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_fix_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.rk_priv_data*, i32)*, i32 (%struct.rk_priv_data*, i32)* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unsupported interface %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rk_fix_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_fix_speed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rk_priv_data*, align 8
  %6 = alloca %struct.device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rk_priv_data*
  store %struct.rk_priv_data* %8, %struct.rk_priv_data** %5, align 8
  %9 = load %struct.rk_priv_data*, %struct.rk_priv_data** %5, align 8
  %10 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.rk_priv_data*, %struct.rk_priv_data** %5, align 8
  %14 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %34 [
    i32 132, label %16
    i32 131, label %16
    i32 130, label %16
    i32 129, label %16
    i32 128, label %25
  ]

16:                                               ; preds = %2, %2, %2, %2
  %17 = load %struct.rk_priv_data*, %struct.rk_priv_data** %5, align 8
  %18 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (%struct.rk_priv_data*, i32)*, i32 (%struct.rk_priv_data*, i32)** %20, align 8
  %22 = load %struct.rk_priv_data*, %struct.rk_priv_data** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 %21(%struct.rk_priv_data* %22, i32 %23)
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.rk_priv_data*, %struct.rk_priv_data** %5, align 8
  %27 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.rk_priv_data*, i32)*, i32 (%struct.rk_priv_data*, i32)** %29, align 8
  %31 = load %struct.rk_priv_data*, %struct.rk_priv_data** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %30(%struct.rk_priv_data* %31, i32 %32)
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.rk_priv_data*, %struct.rk_priv_data** %5, align 8
  %37 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %25, %16
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
