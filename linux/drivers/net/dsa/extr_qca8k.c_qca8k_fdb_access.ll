; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_fdb_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_fdb_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }

@QCA8K_ATU_FUNC_BUSY = common dso_local global i32 0, align 4
@QCA8K_ATU_FUNC_PORT_EN = common dso_local global i32 0, align 4
@QCA8K_ATU_FUNC_PORT_M = common dso_local global i32 0, align 4
@QCA8K_ATU_FUNC_PORT_S = common dso_local global i32 0, align 4
@QCA8K_REG_ATU_FUNC = common dso_local global i32 0, align 4
@QCA8K_FDB_LOAD = common dso_local global i32 0, align 4
@QCA8K_ATU_FUNC_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qca8k_priv*, i32, i32)* @qca8k_fdb_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_fdb_access(%struct.qca8k_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qca8k_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @QCA8K_ATU_FUNC_BUSY, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %8, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @QCA8K_ATU_FUNC_PORT_EN, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @QCA8K_ATU_FUNC_PORT_M, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @QCA8K_ATU_FUNC_PORT_S, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %15, %3
  %27 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %28 = load i32, i32* @QCA8K_REG_ATU_FUNC, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @qca8k_write(%struct.qca8k_priv* %27, i32 %28, i32 %29)
  %31 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %32 = load i32, i32* @QCA8K_REG_ATU_FUNC, align 4
  %33 = load i32, i32* @QCA8K_ATU_FUNC_BUSY, align 4
  %34 = call i64 @qca8k_busy_wait(%struct.qca8k_priv* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @QCA8K_FDB_LOAD, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %43 = load i32, i32* @QCA8K_REG_ATU_FUNC, align 4
  %44 = call i32 @qca8k_read(%struct.qca8k_priv* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @QCA8K_ATU_FUNC_FULL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %52

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %37
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49, %36
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i64 @qca8k_busy_wait(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @qca8k_read(%struct.qca8k_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
