; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_fdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32 }

@STATIC_EMP = common dso_local global i32 0, align 4
@MT7530_FDB_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i8*, i32)* @mt7530_port_fdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_port_fdb_del(%struct.dsa_switch* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7530_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.mt7530_priv*, %struct.mt7530_priv** %13, align 8
  store %struct.mt7530_priv* %14, %struct.mt7530_priv** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %18 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @STATIC_EMP, align 4
  %25 = call i32 @mt7530_fdb_write(%struct.mt7530_priv* %20, i32 %21, i32 %22, i8* %23, i32 -1, i32 %24)
  %26 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %27 = load i32, i32* @MT7530_FDB_WRITE, align 4
  %28 = call i32 @mt7530_fdb_cmd(%struct.mt7530_priv* %26, i32 %27, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.mt7530_priv*, %struct.mt7530_priv** %9, align 8
  %30 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7530_fdb_write(%struct.mt7530_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @mt7530_fdb_cmd(%struct.mt7530_priv*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
