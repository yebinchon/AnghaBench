; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_fdb_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_fdb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }

@QCA8K_ATU_STATUS_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qca8k_priv*, i32*, i32, i32)* @qca8k_port_fdb_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_port_fdb_insert(%struct.qca8k_priv* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qca8k_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  store i32 1, i32* %8, align 4
  br label %12

12:                                               ; preds = %11, %4
  %13 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @QCA8K_ATU_STATUS_STATIC, align 4
  %18 = call i32 @qca8k_fdb_add(%struct.qca8k_priv* %13, i32* %14, i32 %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @qca8k_fdb_add(%struct.qca8k_priv*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
