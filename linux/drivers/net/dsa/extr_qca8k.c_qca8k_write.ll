; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MDIO_MUTEX_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qca8k_priv*, i32, i32)* @qca8k_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_write(%struct.qca8k_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qca8k_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @qca8k_split_addr(i32 %10, i32* %7, i32* %8, i32* %9)
  %12 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %13 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* @MDIO_MUTEX_NESTED, align 4
  %17 = call i32 @mutex_lock_nested(i32* %15, i32 %16)
  %18 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %19 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @qca8k_set_page(%struct.TYPE_3__* %20, i32 %21)
  %23 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %24 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = or i32 16, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @qca8k_mii_write32(%struct.TYPE_3__* %25, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %32 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local i32 @qca8k_split_addr(i32, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @qca8k_set_page(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @qca8k_mii_write32(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
