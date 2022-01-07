; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_free_init_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_free_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_mac = type { i32*, i32*, i32, i32 }

@FMAN_MOD_MAC = common dso_local global i32 0, align 4
@FMAN_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@FMAN_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_mac*)* @free_init_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_init_resources(%struct.fman_mac* %0) #0 {
  %2 = alloca %struct.fman_mac*, align 8
  store %struct.fman_mac* %0, %struct.fman_mac** %2, align 8
  %3 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %4 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FMAN_MOD_MAC, align 4
  %7 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %8 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FMAN_INTR_TYPE_ERR, align 4
  %11 = call i32 @fman_unregister_intr(i32 %5, i32 %6, i32 %9, i32 %10)
  %12 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %13 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FMAN_MOD_MAC, align 4
  %16 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %17 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FMAN_INTR_TYPE_NORMAL, align 4
  %20 = call i32 @fman_unregister_intr(i32 %14, i32 %15, i32 %18, i32 %19)
  %21 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %22 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @free_hash_table(i32* %23)
  %25 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %26 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %28 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @free_hash_table(i32* %29)
  %31 = load %struct.fman_mac*, %struct.fman_mac** %2, align 8
  %32 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @fman_unregister_intr(i32, i32, i32, i32) #1

declare dso_local i32 @free_hash_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
