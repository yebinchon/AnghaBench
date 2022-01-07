; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MDIO_MUTEX_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qca8k_priv*, i32, i32, i32)* @qca8k_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_rmw(%struct.qca8k_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qca8k_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @qca8k_split_addr(i32 %13, i32* %9, i32* %10, i32* %11)
  %15 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %16 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @MDIO_MUTEX_NESTED, align 4
  %20 = call i32 @mutex_lock_nested(i32* %18, i32 %19)
  %21 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %22 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @qca8k_set_page(%struct.TYPE_4__* %23, i32 %24)
  %26 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %27 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = or i32 16, %29
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @qca8k_mii_read32(%struct.TYPE_4__* %28, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %41 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = or i32 16, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @qca8k_mii_write32(%struct.TYPE_4__* %42, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %49 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %12, align 4
  ret i32 %53
}

declare dso_local i32 @qca8k_split_addr(i32, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @qca8k_set_page(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @qca8k_mii_read32(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @qca8k_mii_write32(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
