; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rxdb_alloc_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_rxdb_alloc_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxdb = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxdb*)* @bdx_rxdb_alloc_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_rxdb_alloc_elem(%struct.rxdb* %0) #0 {
  %2 = alloca %struct.rxdb*, align 8
  store %struct.rxdb* %0, %struct.rxdb** %2, align 8
  %3 = load %struct.rxdb*, %struct.rxdb** %2, align 8
  %4 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ule i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BDX_ASSERT(i32 %7)
  %9 = load %struct.rxdb*, %struct.rxdb** %2, align 8
  %10 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.rxdb*, %struct.rxdb** %2, align 8
  %13 = getelementptr inbounds %struct.rxdb, %struct.rxdb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

declare dso_local i32 @BDX_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
